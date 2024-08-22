import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
                //key: ValueKey('unica 1'),
                title: const Text('My first flutter app'),
                subtitle: const Text('codelab chapter #1'),
                onTap: () => {
                      //context.go('/labOne')
                    }),
            ListTile(
                //key: ValueKey('unica 2'),
                title: const Text('Registro - Paso #1'),
                subtitle: const Text('Conoce - Alfa'),
                onTap: () => {}),
          ],
        ),
      ),
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}
