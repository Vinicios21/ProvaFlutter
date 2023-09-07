import 'package:atividade/app/sobre.dart';
import 'package:flutter/material.dart';
import '../login.dart';
import '../calculadora.dart';
import '../cadastro.dart';

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
          title: const Text('Calculadora'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>
              const Calculadora()),
            );
          },
        ),
        ListTile(
          title: const Text('Sobre'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>
              const Sobre()),
            );
          },
        ),

        ListTile(
          title: const Text('Sair'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage()),
            );
          },
        ),
      ],
    ),
  ) ;
}