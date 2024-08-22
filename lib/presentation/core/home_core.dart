import 'package:codelab_training/presentation/core/router_core.dart';
import 'package:flutter/material.dart';

class HomeCore extends StatelessWidget {
  const HomeCore({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'codelab training',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange)),
      routerConfig: routerCore,
    );
  }
}
