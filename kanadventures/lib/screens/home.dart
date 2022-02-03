import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';

import 'package:kanadventures/models/data_format.dart';
import 'package:kanadventures/models/kana_data.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Flashcard> kanas = simpleKanas;
  List indexes = List<int>.generate(simpleKanas.length, (index) => index);

  final total = simpleKanas.length;
  final String title = 'KANADVENTURES';

  int correct = 0;
  int cardIndex = 0;
  int completed = 0;

  late FlipCardController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FlipCardController();
  }

  void wrongGuess() {
    _controller.toggleCard();
    setState(() {});
  }

  void correctGuess(int index) {
    correct++;
    if (correct < total) {
      indexes.remove(cardIndex);
      _controller.toggleCard();
      setState(
        () {},
      );
    } else {
      completed++;
      restartList();
    }
  }

  void restartList() {
    indexes = List<int>.generate(simpleKanas.length, (index) => index);
    correct = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    cardIndex = (indexes..shuffle()).first;
    // print([cardIndex, '||', indexes]);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Kanadventures'),
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 20.0,
          ),
          child: Column(
            children: [
              FlipCard(
                controller: _controller,
                speed: 200,
                front: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: Card(
                    elevation: 3.0,
                    child: Column(
                      children: [
                        Text(title),
                        const Divider(
                          color: Colors.black,
                        ),
                        Center(
                          child: Text(kanas[cardIndex].question),
                        ),
                      ],
                    ),
                  ),
                ),
                back: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: Card(
                    elevation: 3.0,
                    child: Column(
                      children: [
                        Text(title),
                        const Divider(
                          color: Colors.black,
                        ),
                        Center(
                          child: Text(kanas[cardIndex].answer),
                        ),
                        const Divider(
                          color: Colors.black,
                        ),
                        ButtonBar(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                wrongGuess();
                              },
                              child: const Text('X'),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                correctGuess(cardIndex);
                              },
                              child: const Text('V'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [Text('$correct / $total')],
              ),
              Row(
                children: [Text('$completed')],
              ),
              ElevatedButton(
                onPressed: () {
                  completed = 0;
                  restartList();
                },
                child: const Text('Restart'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
