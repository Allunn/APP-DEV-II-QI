import 'package:agenda_de_contatos/screens/color_schemes.g.dart';
import 'package:flutter/material.dart';
import 'screens/home/home.dart';

void main() {
  runApp(MaterialApp(
      title: "Agenda de Contatos",
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
      )));
}
