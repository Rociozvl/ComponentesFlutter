import 'package:flutter/material.dart';
import 'package:fl_componentes/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
     child: Column(
       children: [
         const ListTile(
           leading: Icon(Icons.photo_album_outlined , color: AppTheme.primary,),
           title: Text('soy un titulo'),
           subtitle: Text('Nulla ex anim sunt sit Lorem velit ipsum.'),
         ),
         Padding(
           padding: const EdgeInsets.only(right: 5),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            
            children: [
              TextButton(
                onPressed: (){},
                child:  const Text('Cancel'),
                ),
                 
                  TextButton(
                onPressed: (){},
                 child:  const Text('Ok'))
            ],
           ),
         )
       ],)
    );
  }
}