import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/menu.dart';

class Sobre extends StatefulWidget {
  const Sobre({super.key});

  @override
  State<Sobre> createState() => _SobreState();
}

class _SobreState extends State<Sobre> {

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
        title: Text("Sobre"),
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
