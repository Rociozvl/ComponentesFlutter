

import 'package:fl_componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
        children: const [
           CustomCardType1(),
           SizedBox( height:20),
           CustomCardType2(name: 'hermosopaisaje1', imgUrl: 'https://calandscapestewardshipnetwork.org/sites/default/files/styles/slideshow_image/public/2022-05/IRC%20Native%20Seed%20Farm.jpg?h=8c190a55&itok=gmBgawCt'),
           SizedBox( height:20),
           CustomCardType2(name: null, imgUrl: 'https://digital-photography-school.com/wp-content/uploads/flickr/205125227_3f160763a0_o.jpg'),
           SizedBox( height:20),
           CustomCardType2(name: 'hermsopaisaje3', imgUrl: 'https://petapixel.com/assets/uploads/2021/06/image5-800x534.jpeg'),
           SizedBox( height:100),
         ],
      )
      

      
    );
  }
}

