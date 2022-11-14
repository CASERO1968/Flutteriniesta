import 'package:flutter/material.dart';

class Altas extends StatelessWidget {
  Altas({Key? key}) : super(key: key);
  final iconosright = [
    Icons.accessibility_new_outlined,
    Icons.access_alarm_outlined,
    Icons.accessibility_new,
    Icons.accessible_sharp,
  ];
  final iconosleft = [
    Icons.accessibility_new_outlined,
    Icons.access_alarm_outlined,
    Icons.accessibility_new,
    Icons.accessible_sharp,
  ];
  final rutas = ['altas', 'altas', 'altas', 'altas'];
  @override
  Widget build(BuildContext context) {
    final datos = ['ALTAS', 'BAJAS', 'MODIFICACIONES', 'ELIMINAR'];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                centerTitle: true, title: (const Text('MENU PRINCIPALl'))),
            body: ListView.separated(
                itemBuilder: (context, index) => ListTile(
                      title: Text(datos[index]),
                      trailing: Icon(iconosright[index]),
                      leading: Icon(iconosleft[index]),
                      onTap: () {
                        Navigator.pushNamed(context, '/bajas');
                      },
                    ),
                separatorBuilder: (_, __) => const Divider(),
                itemCount: datos.length)));
  }
}
