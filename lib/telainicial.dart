import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste/eventos.dart';
import 'package:teste/telalogin.dart';
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
            child: const Center(child: Text("OsasEvents", textAlign: TextAlign.center, style: TextStyle(color: Colors.black),)),
          )),
          //menu lateral com botões de navegação
            ListTileTheme(child: const ThemeButton()),
            ListTile(leading: const Icon(Icons.home), title: const Text('Home'), onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(_)=> const TelaInicial()))),
            ListTile(leading: const Icon(Icons.settings), title: const Text('Cadastre-se') ,onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(_)=> const TelaLogin()))),
            ListTile(leading: const Icon(Icons.settings), title: const Text('Eventos') ,onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(_)=> const Eventos()))),
            ListTile(leading: const Icon(Icons.search),title: const Text("Buscar"),onTap: () => {},),         
            ListTile(leading:const Icon(Icons.settings),title:const Text('Configurações') ,onTap:(){})],
        ),
             
        ),
        
        
      
      
      appBar: AppBar(
        title: const Text("OsasEventos"),
        backgroundColor: Colors.lightBlue,

      ),
      body: ListView(
        children: [Text('Bem vindo aos eventos que estão chegando',textAlign: TextAlign.center, style: GoogleFonts.openSans(fontSize: 24)),
         Container(height: 60),
         Row(mainAxisAlignment: MainAxisAlignment.end,mainAxisSize: MainAxisSize.min ,
         children: [
          // ElevatedButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const TelaLogin())), child: const Text("Cadastre-se")),
          ElevatedButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const Eventos())),child: const Text("Eventos"))
          ]),
          Container(
            margin: EdgeInsets.all(16),
            child: Column(children: [Image.asset('../assets/cantor.png'),
            Text('Show ao VIVO',style: GoogleFonts.indieFlower(fontSize:20),)],),
          ), 
          Container(
            margin: EdgeInsets.all(16),
            child: Column(children: [Image.asset('../assets/cantora.png'),
            Text('Show ao VIVO',style: GoogleFonts.indieFlower(fontSize:20),)],),
          ),
          Container(
            margin: EdgeInsets.all(16),
            child: Column(children: [Image.asset('../assets/festival.png'),
            Text('Festival de musica em São Roque',style: GoogleFonts.indieFlower(fontSize:20),
            ),
            ],),
          ),
         ],
       
      ),
    );
  }
}