import 'package:flutter/material.dart';

class Eventos extends StatefulWidget {
  const Eventos({super.key});

  @override
  State<Eventos> createState() => _EventosState();
}

class _EventosState extends State<Eventos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
       
      body: ListView(children: [
        ListTile(
          leading: Icon(Icons.event),
          title: Text('Festa de Peão Boiadeiro'),
          subtitle: Text('12/07/2023 - 14h'),
          trailing: Chip(label: Text('Confirmado')),
        ),
        Divider(),
         ListTile(
          leading: Icon(Icons.event),
          title: Text('Festa de Peão Boiadeiro'),
          subtitle: Text('13/07/2023 - 14h'),
          trailing: Chip(label: Text('Confirmado')),
        ),
        Divider(),
         ListTile(
          leading: Icon(Icons.event),
          title: Text('Festa de Peão Boiadeiro'),
          subtitle: Text('14/07/2023 - 14h'),
          trailing: Chip(label: Text('Confirmado')),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(child: Image.asset('../assets/publico.png')),
          title: Text('Festival de Inverno'),  
          subtitle: Text('15/08/2023 - 19h30min'),
          onTap: () {},
          ),
    Divider(),
    ListTile(
          leading: CircleAvatar(child: Image.asset('../assets/publico.png')),
          title: Text('Show de Musica'),  
          subtitle: Text('19/08/2023 - 19h30min'),
          onTap: () {},
          ),
          Divider(),
          ListTile(
          leading: CircleAvatar(child: Image.asset('../assets/galera.png')),
          title: Text('Show no estadio'),  
          subtitle: Text('25/10/2023 - 19h30min'),
          onTap: () {},
          ),
    Divider(),
    ListTile(
          leading: CircleAvatar(child: Image.asset('../assets/show.png')),
          title: Text('Aniversario da cidade'),  
          subtitle: Text('25/11/2023 - 19h30min'),
          onTap: () {},
          ),
        Divider(),
        ListTile(
          leading: CircleAvatar(child: Image.asset('../assets/jogo.png')),
          title: Text('Final Campeonato Brasileiro'),  
          subtitle: Text('19/12/2024 - 21h30min'),
          onTap: () {},
          ),

  ]));}
}