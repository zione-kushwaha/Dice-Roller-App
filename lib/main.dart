import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'welcome to the flutter app',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dicee'),
        ),
        body: const myhomepage(),
      ),
    );
  }
}

class myhomepage extends StatefulWidget {
  const myhomepage({super.key});

  @override
  State<myhomepage> createState() => _myhomepageState();
}

class _myhomepageState extends State<myhomepage> {
  var leftdice = 6;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Center(
          child: Text(
            'welcome to the dice rolling app',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Image(
                    image: AssetImage('images/dice$leftdice.png'),
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      leftdice = Random().nextInt(6) + 1;
                      print('diceno=$leftdice');
                    });
                  },
                ),
              ),
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('images/dice6.png'),
                  color: Colors.black,
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
