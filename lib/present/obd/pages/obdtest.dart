import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'dart:convert';
import 'dart:typed_data';
import '../../../core/ui/ui.dart';

class ObdPage extends StatefulWidget {
  @override
  _ObdPageState createState() => _ObdPageState();
}

class _ObdPageState extends State<ObdPage> {
  BluetoothDevice? selectedDevice;
  BluetoothCharacteristic? writeCharacteristic;
  BluetoothCharacteristic? notifyCharacteristic;
  bool isConnected = false;
  bool isScanning = false;
  String obdStatus = "Нет данных";

  Map<String, String> diagnosticData = {
    'RPM': 'Нет данных',
    'Скорость': 'Нет данных',
    'Температура ОХЖ': 'Нет данных',
    'Ошибки': 'Нет данных',
  };

  String currentParameter = '';

  final Map<String, String> commands = {
    'RPM': "010C\r",
    'Скорость': "010D\r",
    'Температура ОХЖ': "0105\r",
    'Ошибки': "03\r",
  };

  @override
  void initState() {
    super.initState();
    _startScan();
  }

  void _startScan() async {
    setState(() {
      isScanning = true;
      obdStatus = "Сканирование устройств...";
      selectedDevice = null;
    });

    List<ScanResult> foundDevices = [];

    FlutterBluePlus.scanResults.listen((results) {
      for (ScanResult result in results) {
        if (result.device.name.isNotEmpty &&
            result.device.name.contains("OBD") &&
            !foundDevices.any((d) => d.device.id == result.device.id)) {

          foundDevices.add(result);

          setState(() {
            selectedDevice = result.device;
            obdStatus = "Найден OBD: ${selectedDevice!.name}";
          });
        }
      }
    });

    await FlutterBluePlus.startScan(timeout: Duration(seconds: 120));
    await Future.delayed(Duration(seconds: 120));
    await FlutterBluePlus.stopScan();

    setState(() {
      isScanning = false;
      if (selectedDevice == null) {
        obdStatus = "OBD не найден за 20 секунд. Попробуйте снова.";
      }
    });
  }

  Future<void> _connectToOBD() async {
    if (selectedDevice == null) return;
    setState(() {
      obdStatus = "Подключение к ${selectedDevice!.name}...";
    });

    try {
      await selectedDevice!.connect(timeout: Duration(seconds: 10));
      List<BluetoothService> services =
      await selectedDevice!.discoverServices();

      for (BluetoothService service in services) {
        for (BluetoothCharacteristic characteristic in service.characteristics) {
          if (characteristic.properties.write) {
            writeCharacteristic = characteristic;
          }
          if (characteristic.properties.notify || characteristic.properties.read) {
            notifyCharacteristic = characteristic;
            await characteristic.setNotifyValue(true);
            characteristic.value.listen(_handleNotify);
          }
        }
      }

      if (writeCharacteristic != null && notifyCharacteristic != null) {
        setState(() {
          isConnected = true;
          obdStatus = "Подключено к ${selectedDevice!.name}";
        });
      } else {
        throw Exception("Не найдены необходимые характеристики");
      }
    } catch (e) {
      setState(() {
        obdStatus = "Ошибка подключения: $e";
        isConnected = false;
      });
    }
  }

  void _handleNotify(List<int> value) {
    String hexResponse = value.map((b) => b.toRadixString(16).padLeft(2, '0')).join(' ').toUpperCase();
    print('OBD ответ: $hexResponse');

    if (currentParameter.isNotEmpty) {
      String parsedData = parseOBDResponse(currentParameter, value);
      setState(() {
        diagnosticData[currentParameter] = parsedData;
        currentParameter = '';
      });
    } else {
      setState(() {
        obdStatus = "Ответ OBD-II: $hexResponse";
      });
    }
  }

  String parseOBDResponse(String parameter, List<int> value) {
    try {
      if (parameter == 'RPM') {
        // OBD ответ: 41 0C XX YY -> RPM = ((A*256)+B)/4
        if (value.length >= 4) {
          int A = value[2];
          int B = value[3];
          int rpm = ((A * 256) + B) ~/ 4;
          return "$rpm об/мин";
        }
      } else if (parameter == 'Скорость') {
        // OBD ответ: 41 0D XX -> Скорость в км/ч
        if (value.length >= 3) {
          int speed = value[2];
          return "$speed км/ч";
        }
      } else if (parameter == 'Температура ОХЖ') {
        // OBD ответ: 41 05 XX -> Температура = XX-40
        if (value.length >= 3) {
          int temp = value[2] - 40;
          return "$temp °C";
        }
      } else if (parameter == 'Ошибки') {
        return parseDTC(value);
      }
    } catch (e) {
      return "Ошибка парсинга: $e";
    }
    return "Нет данных";
  }

  String parseDTC(List<int> value) {
    if (value.length < 3) return "Нет ошибок";

    // Удаляем первые байты ответа (43 XX)
    List<int> dtcBytes = value.sublist(2);
    if (dtcBytes.isEmpty) return "Нет ошибок";

    List<String> dtcList = [];

    for (int i = 0; i < dtcBytes.length; i += 2) {
      if (i + 1 >= dtcBytes.length) break;

      int byte1 = dtcBytes[i];
      int byte2 = dtcBytes[i + 1];

      if (byte1 == 0 && byte2 == 0) break;

      int firstChar = (byte1 & 0xC0) >> 6;
      String type = ['P', 'C', 'B', 'U'][firstChar];
      int code = ((byte1 & 0x3F) << 8) | byte2;
      dtcList.add("$type${code.toString().padLeft(4, '0')}");
    }

    return dtcList.isEmpty ? "Нет ошибок" : dtcList.join(', ');
  }

  Future<void> _sendOBDCommandFor(String parameter, String command) async {
    if (writeCharacteristic == null) {
      setState(() {
        obdStatus = "Нет writeCharacteristic";
      });
      return;
    }

    setState(() {
      currentParameter = parameter;
      obdStatus = "Отправка команды для $parameter...";
    });

    Uint8List obdCommand = Uint8List.fromList(utf8.encode(command));

    try {
      await writeCharacteristic!.write(obdCommand, withoutResponse: true);
    } catch (e) {
      setState(() {
        obdStatus = "Ошибка отправки команды: $e";
        currentParameter = '';
      });
    }
  }

  Future<void> _disconnect() async {
    if (selectedDevice != null) {
      await selectedDevice!.disconnect();
      setState(() {
        isConnected = false;
        obdStatus = "Отключено от устройства";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
        ),
        title: const Text('Диагностика OBD-II', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              elevation: 4,
              margin: EdgeInsets.only(bottom: 16),
              child: ListTile(
                leading: Icon(
                  Icons.bluetooth,
                  color: isConnected ? Colors.green : Colors.red,
                  size: 36,
                ),
                title: Text(
                  isConnected ? "OBD подключен" : "OBD не подключен",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(obdStatus),
                trailing: isScanning
                    ? SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
                    : ElevatedButton(
                  onPressed: selectedDevice == null ? _startScan : null,
                  child: Text("Сканировать"),
                ),
              ),
            ),
            if (!isConnected && selectedDevice != null && !isScanning)
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: ElevatedButton.icon(
                  onPressed: _connectToOBD,
                  icon: Icon(Icons.refresh),
                  label: Text("Повторить подключение"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 48),
                  ),
                ),
              ),
            if (isConnected)
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: commands.entries.map((entry) {
                  String parameter = entry.key;
                  String command = entry.value;
                  return Card(
                    elevation: 2,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text(
                        parameter,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(diagnosticData[parameter] ?? "Нет данных"),
                      trailing: ElevatedButton(
                        onPressed: () => _sendOBDCommandFor(parameter, command),
                        child: Text("Запрос"),
                      ),
                    ),
                  );
                }).toList(),
              ),
            if (isConnected)
              ElevatedButton(
                onPressed: _disconnect,
                child: Text("Отключиться"),
              ),
          ],
        ),
      ),
      bottomNavigationBar: MyNavigationBar(
        selectIndex: 3,
      ),
    );
  }
}