import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// final isDarkmodeProvider = StateProvider<bool>((ref) => false);
final isDarkmodeProvider = StateProvider<bool>(
    (ref) => ref.read(platformBrightnessProvider) == Brightness.dark);

final platformBrightnessProvider = Provider<Brightness>((ref) {
  // Obtén el brillo de la plataforma actual en el punto de entrada de la aplicación
  final brightness = MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
      .platformBrightness;
  return brightness;
});

//Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

//Un simple int
final selectedColorProvider = StateProvider((ref) => 0);
