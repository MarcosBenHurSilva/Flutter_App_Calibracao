import 'package:flutter/material.dart';
import '../models/instrument.dart'; // Importe o modelo de dados do instrumento

class InstrumentCard extends StatelessWidget {
  final Instrument instrument;

  InstrumentCard({required this.instrument});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Elevação do cartão
      margin:
          EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Margem do cartão
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              instrument.name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Última Calibração: ${instrument.lastCalibrationDate}',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Status: ${instrument.calibrationStatus}',
              style: TextStyle(
                fontSize: 14,
                color: instrument.calibrationStatus == 'OK'
                    ? Colors.green
                    : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Adicione mais informações do instrumento conforme necessário
          ],
        ),
      ),
    );
  }
}
