import 'package:flutter/material.dart';

var games = ["pou", "fornite", "pacman", "motal kombat"];

class Listview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview tipo1'),
        ),
        body: ListView(
          children: [
            ...games
                .map((games) => ListTile(
                    title: Text(games),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink),
                    onTap: () {
                      var seleccion = games;
                      print(seleccion);
                    }))
                .toList(),
            const Divider(
              height: 20,
              thickness: 2,
              endIndent: 20,
              indent: 20,
            )
          ],
        ));
  }
}
