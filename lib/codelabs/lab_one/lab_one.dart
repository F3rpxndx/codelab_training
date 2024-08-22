//
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class LabOne extends StatelessWidget {
  const LabOne({super.key});

  @override
  Widget build(BuildContext context) {
    // #2 Envoltorio para haccer una statelees con el
    // uso de la libre provider, para que actualize la
    // la interfaz
    return ChangeNotifierProvider(
      create: (context) => LabOneState(),
      child: MaterialApp(
        title: 'Namer app',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
        home: LabOnePage(),
      ),
    );
  }
}

// Notificador de cambio de estado
class LabOneState extends ChangeNotifier {
  var current = WordPair.random();
  // Genera una nueva variable aleatoria.
  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

  // Lista de pares Favoritos
  var favorites = <WordPair>[];

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }
}

// Construccion de la interfaz de usuario en
// concordancia con el codelab
class LabOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Contexto para estar pendientes si existe algun cambio
    // de estado y re=rendirizar la interfaz
    var appState = context.watch<LabOneState>();
    IconData icon;

    if (appState.favorites.contains(appState.current)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('A random AWESOME idea:'),
          BigCard(appState: appState),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  appState.toggleFavorite();
                },
                icon: Icon(icon),
                label: Text('Like'),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  // ('Next word - pressed');
                  appState.getNext();
                },
                child: Text('Next'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.appState,
  });
  final LabOneState appState;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );
    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          "${appState.current.first} ${appState.current.second}",
          style: style,
        ),
      ),
    );
  }
}
