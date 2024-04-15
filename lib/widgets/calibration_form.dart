import 'package:flutter/material.dart';

class CalibrationForm extends StatefulWidget {
  @override
  _CalibrationFormState createState() => _CalibrationFormState();
}

class _CalibrationFormState extends State<CalibrationForm> {
  final _formKey = GlobalKey<FormState>();
  String _instrumentName = '';
  double _measurementValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Nome do Instrumento',
              hintText: 'Digite o nome do instrumento',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira o nome do instrumento';
              }
              return null;
            },
            onSaved: (value) {
              _instrumentName = value!;
            },
          ),
          SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Valor da Medição',
              hintText: 'Digite o valor da medição',
            ),
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira o valor da medição';
              }
              if (double.tryParse(value) == null) {
                return 'Valor inválido. Use apenas números';
              }
              return null;
            },
            onSaved: (value) {
              _measurementValue = double.parse(value!);
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // Aqui você pode utilizar os dados coletados para realizar a calibração
                // por exemplo: enviar para um método que processa a calibração
                _performCalibration();
              }
            },
            child: Text('Realizar Calibração'),
          ),
        ],
      ),
    );
  }

  void _performCalibration() {
    // Implemente a lógica para realizar a calibração utilizando os dados coletados
    print(
        'Calibração realizada para $_instrumentName com valor $_measurementValue');
    // Pode adicionar mais lógica aqui, como salvar os dados, gerar relatórios, etc.
  }
}
