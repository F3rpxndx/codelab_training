//import 'package:codelab_training/codelabs/lab_one/lab_one.dart';
import 'package:codelab_training/presentation/core/home_core.dart';
import 'package:go_router/go_router.dart';

final routerCore = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeCore(),
    ),
    //GoRoute(
    //  path: '/labOne',
    //  builder: (context, state) => LabOne(),
    //)
  ],
);
