import 'package:atividade/app/segunda_tela.dart';
import 'package:atividade/app/terceira_tela.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();

  final email = TextEditingController();
  final senha = TextEditingController();
  bool dadosExibidos = false;

  String retornoEmail ="";
  String retornoSenha ="";

  void _enviar() {

    setState(() {
      retornoEmail = email.text;
      retornoSenha = senha.text;
      dadosExibidos = true;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('login Flutter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
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
                    MaterialPageRoute(builder: (context) => const TerceiraTela()),
                  );
                },
                child: Text('Cadastrar'),
              ),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SegundaTela()),
                  );
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer:
//       Menu(context),
//       appBar: AppBar(
//
//         title: Text("primeira tela"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Bem vindo:',
//             ),
//             Text(
//               '',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//
//             SizedBox(
//               width: 200,
//               height: 200,
//               child: Image(
//                 image: AssetImage('images/peixem.png'),
//                 fit: BoxFit.contain, // ou outra opção de ajuste desejada
//               ),
//             ),
//
//
//
//           ],
//         ),
//       ),
//       // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
//
//
//
// }





// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'components/menu.dart';
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer:
//       Menu(context),
//       appBar: AppBar(
//         backgroundColor: Theme
//             .of(context)
//             .colorScheme
//             .inversePrimary,
//         title: Text("Sobre"),
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(
//
//             children: <Widget>[
//               const Text(
//                 'SEJA BEM VINDO!!',
//               ),
//
//               Image.asset('imagem/paisagem.webp')
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
