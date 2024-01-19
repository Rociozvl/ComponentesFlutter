import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

    double _heigh = 50;
    double _width = 50;
    Color _color = Colors.pinkAccent;
    BorderRadius _borderRadius =  BorderRadius.circular(20);

    void changeShape(){
      final rnd = Random();
      _heigh = rnd.nextInt(300).toDouble() + 70;
       _width = rnd.nextInt(300).toDouble() + 70;
      _color = Color.fromARGB(
        rnd.nextInt(500),
        rnd.nextInt(500),
        rnd.nextInt(500),
        1);
      _borderRadius =  BorderRadius.circular(rnd.nextInt(100).toDouble() + 10);
      setState(() {});
    }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Animated container'),

      ),
      body:  Center(
         child: AnimatedContainer(
          curve: Curves.bounceOut,
          duration:const Duration(milliseconds :400 ),
          width: _width,
          height: _heigh,
          decoration:  BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ), 
         ),
        ),


      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle ,size: 35),
        onPressed: (){
          changeShape();
        },
       ),
    );
  }
}