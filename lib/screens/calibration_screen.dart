import 'package:flutter/material.dart';
import '/widgets/calibration_form.dart';

class CalibrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Realizar Calibração'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: CalibrationForm(),
      ),
    );
  }
}
