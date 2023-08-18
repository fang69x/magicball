import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,

        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.indigo,
        ),
        body: magicball(

        ),

      ),
    ),
  );
}

class magicball extends StatefulWidget {
  const magicball({super.key});

  @override
  State<magicball> createState() => _magicballState();
}

class _magicballState extends State<magicball> {
  int num = 1;
  void changeNum() {
    num = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Center(

        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            color: Colors.blue,
            elevation: 500,
            shadowColor: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      changeNum();
                    });
                  },
                  child: Image.asset('images/ball$num.png'),
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
