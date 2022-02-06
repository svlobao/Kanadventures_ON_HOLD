import 'package:flutter/material.dart';

import 'package:kanadventures/errors.dart';
import 'package:kanadventures/screens/hiragana.dart';
import 'package:kanadventures/screens/katakana.dart';
import 'package:kanadventures/screens/login.dart';
import 'package:kanadventures/screens/menu.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const Login());

      case '/menu':
        return MaterialPageRoute(builder: (_) => const Menu());

      case '/hiragana':
        return MaterialPageRoute(builder: (_) => const Hiragana());

      case '/katakana':
        return MaterialPageRoute(builder: (_) => const Katakana());

      default:
        return errorRoute();
    }
  }
}
