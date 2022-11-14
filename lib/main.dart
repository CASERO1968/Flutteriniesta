import 'package:flutter/material.dart';
import 'package:iniestapruebas/screens/rutas.dart';

void main() => runApp(const MyApp());
final sitios = {
  '/bajas': (context) => const Bajas(),
  '/altas': (context) => Altas(),
  '/error': (context) => const Error(),
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: sitios,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const Error(),
        );
      },
    );
  }
}
