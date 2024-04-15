import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; // Importe a tela inicial do seu aplicativo

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Calibração Metrológica',
      theme: ThemeData(
        primaryColor: Colors.blue, // Defina as cores e estilos do tema
        hintColor: Colors.orange,
        fontFamily: 'Roboto', // Defina a fonte padrão
        // Outras configurações de tema...
      ),
      initialRoute: '/', // Rota inicial do aplicativo
      routes: {
        '/': (context) =>
            HomeScreen(), // Defina as rotas para as telas do aplicativo
        // Adicione mais rotas aqui conforme necessário
      },
    );
  }
}
