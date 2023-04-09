import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      
    ),
    home: const Myapp(),
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

Random random = Random();

int leftDiceNumber = 1;
int rightDiceNumber = 1;

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 242, 242),
      appBar: AppBar(
        title: const Text("Dice Rollinger"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      leftDiceNumber = random.nextInt(6) + 1;
                      debugPrint("$leftDiceNumber");
                    });
                  },
                  child: Image.asset(
                    "assets/images/$leftDiceNumber.png",
                    fit: BoxFit.cover,
                    width: 220,
                  ),
                ),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      rightDiceNumber = random.nextInt(6) + 1;
                      debugPrint("$rightDiceNumber");
                    });
                  },
                  child: Image.asset(
                    "assets/images/$rightDiceNumber.png",
                    width: 120,
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
