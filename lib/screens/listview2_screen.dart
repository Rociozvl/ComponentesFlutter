import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final options = const['Megaman' , 'Metal Slug' , 'COD', "Mario" , "Final Fantasy"];
   
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar : AppBar(
         title: const Text('ListView2Screen'),
         centerTitle: true,
         elevation: 10,
        //  backgroundColor: Colors.brown,
      ),


      body:  ListView.separated(
        itemCount:options.length,
        itemBuilder: (context , i )=> ListTile(
          title: Text(options[i]),
          trailing: const Icon(Icons.arrow_circle_right_outlined , color: Colors.pinkAccent ),
          onTap:(){
            final game = options[i];
            print(game);
          }
        ),
        separatorBuilder:(_, __) => const Divider(),
         
        
      ),
    );
  }
}