import 'package:flutter/material.dart';

class Listview2 extends StatelessWidget {
  var games = ["pou", "fornite", "pacman", "motal kombat"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview tipo2'),
        ),
        body: ListView.separated(
          //obtener tamaño de mi lista
          itemCount: games.length,
          //creamos el constructor de cada de mi lista
          itemBuilder: (context, index) => ListTile(
            //asignamcos el titulo a partir de mi lista
            title: Text(games[index]),
            //asignamos el icono de cada elemento
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.purple),
            onTap: () {
              var seleccion = games[index];
              print(seleccion);
            },
          ),
          separatorBuilder: (_, __) => Divider(),
        ));
  }
}
