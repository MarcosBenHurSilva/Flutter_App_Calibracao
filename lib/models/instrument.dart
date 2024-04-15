import 'package:flutter/foundation.dart';

class Instrument {
  final String name;
  final DateTime lastCalibrationDate;
  final String calibrationStatus;

  Instrument({
    required this.name,
    required this.lastCalibrationDate,
    required this.calibrationStatus,
  });

  // Método para criar um Instrument a partir de um mapa (geralmente usado para converter de JSON)
  factory Instrument.fromJson(Map<String, dynamic> json) {
    return Instrument(
      name: json['name'],
      lastCalibrationDate: DateTime.parse(json['lastCalibrationDate']),
      calibrationStatus: json['calibrationStatus'],
    );
  }

  // Método para converter um Instrument em um mapa (geralmente usado para converter para JSON)
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'lastCalibrationDate': lastCalibrationDate.toIso8601String(),
      'calibrationStatus': calibrationStatus,
    };
  }
}
