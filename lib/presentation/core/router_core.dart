//import 'package:codelab_training/codelabs/lab_one/lab_one.dart';
import 'package:codelab_training/codelabs/lab_one/lab_one.dart';
import 'package:codelab_training/codelabs/lab_three/lab_three.dart';
import 'package:codelab_training/codelabs/lab_two/lab_two.dart';
import 'package:codelab_training/presentation/core/home_core.dart';
import 'package:codelab_training/presentation/home_page.dart';
import 'package:go_router/go_router.dart';

final routerCore = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/labOne',
      builder: (context, state) => LabOne(),
    ),
    GoRoute(
      path: '/labTwo',
      builder: (context, state) => LabTwo(),
    ),
    GoRoute(
      path: '/labThree',
      builder: (context, state) => LabThree(),
    )
  ],
);
