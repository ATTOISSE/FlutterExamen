import 'package:app_notes/widgets/utils.colors.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  final String name;
  final Color primaryColor;
  final Color secondaryColor;
  final Color accentColor;

  CustomTheme({
    required this.name,
    required this.primaryColor,
    required this.secondaryColor,
    required this.accentColor,
  });

  static final List<CustomTheme> themes = [
    CustomTheme(
      name: 'Theme 1',
      primaryColor: hexStringToColor("4169E1"),
      secondaryColor: hexStringToColor("40E0D0"),
      accentColor: hexStringToColor("87CEEB"),
    ),
    CustomTheme(
      name: 'Theme 2',
      primaryColor: hexStringToColor("FF9100"),
      secondaryColor: hexStringToColor("FFD600"),
      accentColor: hexStringToColor("FFEA00"),
    ),
    CustomTheme(
      name: 'Theme 3',
      primaryColor: hexStringToColor("CB2B93"),
      secondaryColor: hexStringToColor("9546C4"),
      accentColor: hexStringToColor("5E61F4"),   
    ),
    CustomTheme(
      name: 'Theme 5',
      primaryColor: hexStringToColor("008000"),
      secondaryColor: hexStringToColor("32CD32"),
      accentColor: hexStringToColor("90EE90"),
    ),
  ];
}
