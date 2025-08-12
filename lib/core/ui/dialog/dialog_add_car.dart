part of '../ui.dart';

class DialogAddCar extends StatefulWidget {
  @override
  State<DialogAddCar> createState() => _DialogAddCarState();
}

class _DialogAddCarState extends State<DialogAddCar> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _motorDescriptionController =
      TextEditingController();
  final TextEditingController _mileageController = TextEditingController();

  List<String> cars = [];
  bool isLoading = true;
  String? selectedCar;

  void _addCar() {
    if (_formKey.currentState!.validate() && selectedCar != null) {
      context.read<CarBloc>().add(
            CarEvent.addCar(
              name: selectedCar!,
              motor: _motorDescriptionController.text,
              mileage: int.parse(_mileageController.text),
            ),
          );
      _motorDescriptionController.clear();
      _mileageController.clear();
      setState(() {
        selectedCar = null;
      });

      Navigator.pop(context); // Закрываем диалог
    }
  }
  Future<void> _loadCarList() async {
    final String jsonString = await rootBundle.loadString('assets/assets/cars.json');
    final List<dynamic> jsonResponse = json.decode(jsonString);
    setState(() {
      cars = List<String>.from(jsonResponse);
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadCarList();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.lightGreen[400],
      elevation: 5,
      child: Icon(Icons.add),
      onPressed: () {
        AwesomeDialog(
          context: context,
          animType: AnimType.scale,
          dialogType: DialogType.noHeader,

          keyboardAware: true,
          body: Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Добавить машину',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    isLoading
                        ? CircularProgressIndicator()
                        : DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                        labelText: 'Выберите машину',
                      ),
                      items: cars.map((String car) {
                        return DropdownMenuItem<String>(
                          value: car,
                          child: Text(car),
                        );
                      }).toList(),
                      value: selectedCar,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedCar = newValue;
                        });
                      },
                      validator: (value) =>
                      value == null ? 'Выберите марку машины' : null,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _motorDescriptionController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                        labelText: 'Объем мотора, л',
                      ),
                      keyboardType: TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                      ],
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Введите объем мотора';
                        }

                        final sanitized = value.replaceAll(',', '.');
                        final volume = double.tryParse(sanitized);
                        if (volume == null) {
                          return 'Введите корректное число';
                        }
                        if (volume > 15) {
                          return 'Объем не должен превышать 15 л';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _mileageController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                        labelText: 'Пробег, км',
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      validator: (value) =>
                      (value == null || value.isEmpty) ? 'Введите пробег авто' : null,
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: _addCar,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.greenAccent[400],
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text('Создать'),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () => Navigator.pop(context),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.redAccent,
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text('Отмена'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ).show();
      },
    );
  }
}
