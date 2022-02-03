import 'package:flutter/material.dart';

import 'package:kanadventures/screens/home.dart';

void main() {
  runApp(const Kanadventures());
}

class Kanadventures extends StatelessWidget {
  const Kanadventures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}
