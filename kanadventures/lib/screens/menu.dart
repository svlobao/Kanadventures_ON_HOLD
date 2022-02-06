import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(shadowColor: Colors.red[900], title: const Text('Menu')),
      body: SafeArea(
        child: Column(
          children: [
            const Text('KANADVENTURES'),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/hiragana');
                },
                child: const Text('Hiragana')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/katakana');
                },
                child: const Text('Katakana')),
            ElevatedButton(onPressed: () {}, child: const Text('Vocabulary')),
            ElevatedButton(onPressed: () {}, child: const Text('Grammar')),
            TextButton(onPressed: () {}, child: const Text('Logout')),
          ],
        ),
      ),
    );
  }
}
