import 'package:flutter/material.dart';
import 'package:teste/telainicial.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bem vindo a tela de cadastro"),
      ),
      body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(children: [
                Image.asset('../assets/logo.png'),  
                SizedBox(height: 20,
                width: double.infinity,),
                // CampoNome(),
                // CampoEmail(),
                // SenhaField(),
                // CpfCnpjField(),
                // EnviarButton() 
                  ElevatedButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const TelaInicial())), child: const Text("Enviar"))
              ])),
    )
    );
    
  }
}
