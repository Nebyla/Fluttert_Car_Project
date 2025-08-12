part of '../ui.dart';

class DialogCreateRepair extends StatefulWidget {
  final int carId;

  const DialogCreateRepair({super.key, required this.carId});

  @override
  State<DialogCreateRepair> createState() => _DialogCreateRepairState();
}

class _DialogCreateRepairState extends State<DialogCreateRepair> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _detailController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
      print('Picked image path: ${pickedFile.path}');
    }
  }

  void _addPart() {
    if (_formKey.currentState!.validate()) {
      context.read<PartsBloc>().add(
            PartsEvent.addPart(
              carId: widget.carId,
              detailDescription: _detailController.text,
              price: int.parse(_priceController.text),
              imagePath: _image?.path,
            ),
          );
      print('Saving image path: ${_image?.path}');
      _detailController.clear();
      _priceController.clear();
      setState(() {
        _image = null;
      });
      Navigator.pop(context); // Close dialog after adding
    }
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.green,
      elevation: 15,
      shape: CircleBorder(),
      child: Icon(Icons.add),
      onPressed: () {
        File? localImage;
        AwesomeDialog(
          context: context,
          animType: AnimType.scale,
          dialogType: DialogType.noHeader,
          body: StatefulBuilder(
            builder: (context, setModalState) {
              return Container(
                padding: const EdgeInsets.all(16.0),

                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Добавить запчасть',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      localImage != null
                          ? ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.file(localImage!, width: 150, height: 100, fit: BoxFit.cover),
                      )
                          : ElevatedButton(
                        onPressed: () async {
                          final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
                          if (pickedFile != null) {
                            setState(() {
                              _image = File(pickedFile.path);
                            });
                            setModalState(() {
                              localImage = File(pickedFile.path);
                            });
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text('Загрузить изображение'),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _detailController,
                        validator: (value) => value!.isEmpty ? 'Введите деталь' : null,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                          labelText: 'Деталь',
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _priceController,
                        keyboardType: TextInputType.number,
                        validator: (value) => value!.isEmpty ? 'Введите цену' : null,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                          labelText: 'Цена',
                        ),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: _addPart,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.greenAccent[400],
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(vertical: 14),
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
                                padding: const EdgeInsets.symmetric(vertical: 14),
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
              );
            },
          ),
        ).show();
      },
    );
  }
}
