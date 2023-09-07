import 'package:atividade/app/quarta_tela.dart';
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
        title: const Text('Tela Login'),
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
                },
                child: Text('Cadastro'),
              ),
              TextButton(
                onPressed: () {
                  _enviar();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const QuartaTela()),
                  );
                },
                child: Text('Login'),
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