import 'package:flutter/material.dart';

void main() {
  runApp(const MisIconos());
}// Fin del Main

class MisIconos extends StatelessWidget {
  const MisIconos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Luis Cervantes Mat:22308051281057'),
          backgroundColor: Colors.redAccent,
          titleTextStyle: TextStyle(fontSize: 25, color: Colors.white),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('ICONOS', style: TextStyle(color: Colors.red, fontSize:20 ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: IconoConSubtitulo(icono: Icons.local_bar, subtitulo: 'BEBIDAS'),
                  ),
                  Expanded(
                    child: IconoConSubtitulo(icono: Icons.search, subtitulo: 'BUSCAR'),
                  ),
                  Expanded(
                    child: IconoConSubtitulo(icono: Icons.person, subtitulo: 'PERSONA'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class IconoConSubtitulo extends StatelessWidget {
  final IconData icono;
  final String subtitulo;

  IconoConSubtitulo({required this.icono, required this.subtitulo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icono),
        Text(subtitulo),
      ],
    );
  }
}