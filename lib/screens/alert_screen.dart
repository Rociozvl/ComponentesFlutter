import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  

     void displayDialogIOS(BuildContext context){

      showCupertinoDialog(
       //barrierDismissible: true,
        context: context,
        builder: (context){
         return  CupertinoAlertDialog(
          title: const Text('Title'),
          content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text ('Este es el contenido de la alerta'),
                SizedBox( height: 10),
                FlutterLogo(size: 90)
              ],
          ),
           actions: [
              TextButton(
               onPressed: ()=> Navigator.pop(context),
                 child: const Text('Ok')),
                  TextButton(
               onPressed: ()=> Navigator.pop(context),
                 child: const Text('Exit' , style: TextStyle(color: Colors.red),) 
                 )
            ],
         );
       });

     }

     void displayDialogAndroid(BuildContext context){
      showDialog(
        barrierDismissible: true,
        context: context,
         builder: ( context){
          return  AlertDialog(
            shape:  RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
            elevation: 5,
            title: const Text('Title'),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text ('Este es el contenido de la alerta'),
                SizedBox( height: 10),
                FlutterLogo(size: 90)
              ],
            ),
            actions: [
              TextButton(
               onPressed: ()=> Navigator.pop(context),
                 child: const Text('Ok')),
                 TextButton(
               onPressed: ()=> Navigator.pop(context),
                 child: const Text('Exit'))
            ],
          );
         }
          );
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:ElevatedButton(
        //  style: ElevatedButton.styleFrom(
        //   backgroundColor: Colors.deepOrange,
        //   shape: const StadiumBorder(),
        //   elevation: 0
         //),
         child: const Text('Mostrar alerta'),
         onPressed:() => Platform.isAndroid? 
         displayDialogAndroid(context)
         : displayDialogIOS(context)
         //onPressed:() => displayDialogAndroid(context)
         ),
         ),
     
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: (){
          Navigator.pop(context);
        }),
    );
  }
}

