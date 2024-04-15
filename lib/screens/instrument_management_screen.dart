import 'package:flutter/material.dart';
import '../models/instrument.dart'; // Importe o modelo de dados do instrumento

class InstrumentManagementScreen extends StatefulWidget {
  @override
  _InstrumentManagementScreenState createState() =>
      _InstrumentManagementScreenState();
}

class _InstrumentManagementScreenState
    extends State<InstrumentManagementScreen> {
  List<Instrument> _instruments =
      []; // Lista de instrumentos (pode ser recuperada de uma fonte de dados)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gerenciamento de Instrumentos'),
      ),
      body: ListView.builder(
        itemCount: _instruments.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_instruments[index].name),
            subtitle: Text(
                'Última Calibração: ${_instruments[index].lastCalibrationDate}'),
            onTap: () {
              // Implemente a navegação para a tela de detalhes do instrumento
              // Exemplo:
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => InstrumentDetailsScreen(instrument: _instruments[index])),
              // );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implemente a navegação para a tela de adicionar novo instrumento
          // Exemplo:
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => AddInstrumentScreen()),
          // );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
