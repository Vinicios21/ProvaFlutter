import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final _formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final email = TextEditingController();
  final senha = TextEditingController();

  String retornoNome ="";
  String retornoEmail ="";
  String retornoSenha ="";

  void _enviar() {

    setState(() {
      retornoNome = name.text;
      retornoEmail = email.text;
      retornoSenha = senha.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Faça seu Cadastro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: name,
                decoration: const InputDecoration(labelText: 'Nome:'),

                keyboardType: TextInputType.name,
              ),
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
                  _enviar();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                },
                child: Text('Login'),
              ),

              TextButton(
                onPressed: () {
                  _enviar();
                },
                child: Text('Cadastrar-se'),
              ),


              Text(
                'Nome: $retornoNome',
              ),
              Text(
                'Email: $retornoEmail',
              ),
              Text(
                'Senha: $retornoSenha',
              ),
            ],
          ),
        ),
      ),
    );
  }
}