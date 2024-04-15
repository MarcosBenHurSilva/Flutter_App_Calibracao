// No MaterialApp (main.dart), defina as rotas para cada tela:
MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => HomeScreen(),
    '/calibration': (context) => CalibrationScreen(),
    '/instrument_management': (context) => InstrumentManagementScreen(),
  },
);