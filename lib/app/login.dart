import 'package:atividade/app/calculadora.dart';
import 'package:atividade/app/cadastro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final email = TextEditingController();
  final senha = TextEditingController();
  bool dadosExibidos = false;

  String retornoEmail ="";
  String retornoSenha ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Faça o Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [

              TextFormField(
                controller: email,
                decoration: const InputDecoration(labelText: 'E-mail:'),

                keyboardType: TextInputType.emailAddress,
              ),

              TextFormField(
                controller: senha,
                decoration: const InputDecoration(labelText: 'Senha:'),

                keyboardType: TextInputType.text,
              ),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Calculadora()),
                  );
                },
                child: Text('Login'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Cadastro()),
                  );
                },
                child: Text('Cadastrar-se'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

