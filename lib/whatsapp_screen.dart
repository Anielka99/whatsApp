import 'package:flutter/material.dart';
import 'chats_screen.dart';
import 'estados_screen.dart';
import 'llamadas_screen.dart';

class WhatsAppScreen extends StatefulWidget {
  const WhatsAppScreen({Key? key}) : super(key: key);

  @override
  State<WhatsAppScreen> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<WhatsAppScreen> {
  // controla el indice seleccinado para mostrar la vista correspondiente
  int _indiceSeleccionado = 0;

  static const _opciones = [
    ChatsScreen(),
    EstadosScreen(),
    LlamadasScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _indiceSeleccionado = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp'),
      ),
      body: Center(
        child: _opciones.elementAt(_indiceSeleccionado),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'CHATS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_rounded),
            label: 'ESTADOS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'LLAMADAS',
          ),
        ],
        backgroundColor: Colors.teal,
        currentIndex: _indiceSeleccionado,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
