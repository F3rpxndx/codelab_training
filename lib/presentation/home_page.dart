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
                title: const Text('Namer app'),
                subtitle: const Text('codelab #1'),
                onTap: () => {
                      context.go('/labOne'),
                    }),
            ListTile(
              title: const Text('lab #2'),
              subtitle: const Text('Cambia fondo #2'),
              onTap: () => {
                context.go('/labTwo'),
              },
            ),
            ListTile(
              title: const Text('lab #3'),
              subtitle: const Text('Cambia fondo #3'),
              onTap: () => {context.go('/labThree')},
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}
