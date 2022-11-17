import 'package:flutter/material.dart';
import 'package:iniestapruebas/screens/rutas.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: sitios,
      onGenerateRoute: generaruta(),
      home: const Altas(),
      theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.red)),
    );
  }
}
