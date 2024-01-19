import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {

  final options = const['Megaman' , 'Metal Slug' , 'COD', "Mario" , "Final Fantasy"];
   
  const ListViewScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar : AppBar(
         title: const Text('ListViewScreen'),
      ),
      body:  ListView(
        children: [
          


            ...options.map((game) => 
            ListTile(
                trailing: const Icon(Icons.arrow_drop_down_sharp),
                
              title :Text(game))).toList(),
              
             
               ],
      ),
    );
  }
}