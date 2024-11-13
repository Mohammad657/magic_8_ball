import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(const Magic8());
}


class Magic8 extends StatefulWidget {
  const Magic8({super.key});

  @override
  State<Magic8> createState() => _Magic8State();
}

class _Magic8State extends State<Magic8> {
int MagicNumber=1;
  void RandomAns(){
    setState(() {
      MagicNumber = Random().nextInt(5)+1;
    });
  }

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text("Ask Me Anything"),
          backgroundColor: Colors.blueGrey,
          shadowColor: Colors.black,
          elevation: 4,
        ),
        body: Center(
          child: TextButton(
            onPressed: RandomAns,
            child: Image.asset("images/ball$MagicNumber.png")),
        ),
      ),
    );
  }
}