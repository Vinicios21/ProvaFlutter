import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/menu.dart';
import 'home.dart';

class TerceiraTela extends StatefulWidget {
  const TerceiraTela({super.key});

  @override
  State<TerceiraTela> createState() => _TerceiraTelaState();
}

class _TerceiraTelaState extends State<TerceiraTela> {
  final _formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final phone = TextEditingController();
  String retornoNome ="";
  String retornoPhone ="";

  void _enviar() {

    setState(() {
      retornoNome = name.text;
      retornoPhone = phone.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terceira Tela'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: name,
                decoration: const InputDecoration(labelText: 'Nome'),

                keyboardType: TextInputType.name,
              ),
              TextFormField(
                controller: phone,
                decoration: const InputDecoration(labelText: 'Telefone'),

                keyboardType: TextInputType.phone,
              ),

              TextButton(
                onPressed: () {
                  _enviar();
                },
                child: Text('Enviar'),
              ),

              Text(
                'Nome: $retornoNome',
              ),
              Text(
                'Telefone: $retornoPhone',
              ),
            ],
          ),
        ),
      ),
    );
  }
}