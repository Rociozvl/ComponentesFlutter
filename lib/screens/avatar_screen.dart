import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions:  [
          Container(
            margin: const EdgeInsets.only(right :6),
            child: const CircleAvatar(
            child: Text('LS'),
          )
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 300,
          backgroundImage:NetworkImage('https://static.wikia.nocookie.net/leagueoflegends/images/c/c5/Aspecto_centrado_-_Lee_Sin_Base.jpg/revision/latest/scale-to-width-down/1200?cb=20231113034154&path-prefix=es')
         ),
      ),
    );
  }
}