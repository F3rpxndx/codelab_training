//
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LabOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // #2 Envoltorio para haccer una statelees con el
    // uso de la libre provider, para que actualize la
    // la interfaz
    return ChangeNotifierProvider(
      create: (context) => LabOneState(),
      child: LabOnePage(),
    );
  }
}

// Notificador de cambio de estado
class LabOneState extends ChangeNotifier {
  var current = WordPair.random();
}

// Construccion de la interfaz de usuario en
// concordancia con el codelab
class LabOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Contexto para estar pendientes si existe algun cambio
    // de estado y re=rendirizar la interfaz
    var appState = context.watch<LabOneState>();
    return Scaffold(
      body: Column(
        children: [
          Text('A random idea:'),
          Text(appState.current.asLowerCase),
        ],
      ),
    );
  }
}
