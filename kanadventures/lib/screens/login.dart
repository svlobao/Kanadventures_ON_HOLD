import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  void checkKeepMeConnected() {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1,
            vertical: MediaQuery.of(context).size.height * 0.1,
          ),
          child: Column(
            children: [
              const Text('KANADVENTURES'),
              const TextField(),
              const TextField(),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (_) {
                      setState(
                        () {
                          checkKeepMeConnected();
                        },
                      );
                    },
                  ),
                  const Text('Keep me connected'),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/menu');
                  },
                  child: const Text('Login ')),
              TextButton(onPressed: () {}, child: const Text('Sign up')),
              const Text('Or login with:'),
              ElevatedButton(onPressed: () {}, child: const Text('Google')),
              TextButton(
                  onPressed: () {}, child: const Text('I forgot my password')),
            ],
          ),
        ),
      ),
    );
  }
}
