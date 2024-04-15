import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calibração Metrológica'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navegar para a tela de calibração
                Navigator.pushNamed(context, '/calibration');
              },
              child: Text('Realizar Calibração'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navegar para a tela de gestão de instrumentos
                Navigator.pushNamed(context, '/instrument_management');
              },
              child: Text('Gerenciar Instrumentos'),
            ),
          ],
        ),
      ),
    );
  }
}
