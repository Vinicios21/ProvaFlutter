import 'package:flutter/material.dart';
import '../home.dart';
import '../segunda_tela.dart';
import '../terceira_tela.dart';

Widget Menu(BuildContext context){
  return Drawer(
    child:  ListView(
      //teste de comentario
      //padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Atividade'),
        ),

        ListTile(
          title: const Text('Primeira tela'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage()),
            );
          },
        ),

        ListTile(
          title: const Text('Segunda tela'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>
              const SegundaTela()),
            );
          },
        ),
        ListTile(
          title: const Text('Terceira  tela'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>
              const TerceiraTela()),
            );
          },
        ),
      ],
    ),
  ) ;


}