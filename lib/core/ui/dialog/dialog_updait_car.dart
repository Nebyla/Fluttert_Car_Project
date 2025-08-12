part of '../ui.dart';

class DialogEditCar extends StatefulWidget {
  final Car car;
  const DialogEditCar({Key? key, required this.car}) : super(key: key);

  @override
  State<DialogEditCar> createState() => _DialogEditCarState();
}

class _DialogEditCarState extends State<DialogEditCar> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _motorController;
  late TextEditingController _mileageController;

  @override
  void initState() {
    super.initState();
    _motorController = TextEditingController(text: widget.car.motor);
    _mileageController =
        TextEditingController(text: widget.car.mileage.toString());
  }

  @override
  void dispose() {
    _motorController.dispose();
    _mileageController.dispose();
    super.dispose();
  }

  void _save() {
    if (_formKey.currentState!.validate()) {
      context.read<CarBloc>().add(
        CarEvent.updateCar(
          id: widget.car.id,
          name: widget.car.name,
          motor: _motorController.text,
          mileage: int.parse(_mileageController.text),
        ),
      );
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Машина "${widget.car.name}" обновлена')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Редактировать "${widget.car.name}"',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _motorController,
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
                if (volume == null) return 'Введите корректное число';
                if (volume > 15) return 'Объем не должен превышать 15 л';
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
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              validator: (value) => (value == null || value.isEmpty) ? 'Введите пробег авто' : null,
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: _save,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent[400],
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text('Сохранить'),
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
  }
}