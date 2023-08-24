import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/menu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:
      Menu(context),
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text("Primeira Tela"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(

            children: <Widget>[
              const Text(
                'SEJA BEM VINDO!!',
              ),

              Image.asset('imagem/paisagem.webp')

            ],
          ),
        ),
      ),
    );
  }
}