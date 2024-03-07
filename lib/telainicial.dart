import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste/themebutton.dart';


class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // endDrawer muda o lado para direita
      drawer: Drawer(
        child:Column(
          
          children: [DrawerHeader(child: Container(
            height: 150,
            width: double.infinity,
            
            child: const Center(child: Text("OsasEvents", style: TextStyle(color: Colors.black),)),
          )),
            ListTileTheme(child: const ThemeButton()),
            ListTile(leading: const Icon(Icons.home), title: const Text('Home'), onTap: () {}),
            ListTile(leading: const Icon(Icons.settings), title: const Text('Eventos') ,onTap: (){}),
            ListTile(leading: const Icon(Icons.search),title: const Text("Buscar"),onTap: () => {},),         
            ListTile(leading:const Icon(Icons.settings),title:const Text('Configurações') ,onTap:(){})],
        ),
          
            
        ),
        
        
      
      
      appBar: AppBar(
        title: const Text("OsasEventos"),
        backgroundColor: Colors.lightBlue,

      ),
      body: ListView(
        children: [Text('Bem vindo aos eventos que estão chegando',style: GoogleFonts.openSans(),)],
      ),
    );
  }
}