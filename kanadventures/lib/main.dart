import 'package:flutter/material.dart';

import 'package:kanadventures/routes.dart';

void main() async => runApp(const Kanadventures());

class Kanadventures extends StatelessWidget {
  const Kanadventures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
