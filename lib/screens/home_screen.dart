
import 'package:fl_componentes/router/app_routes.dart';
import 'package:fl_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   

  const HomeScreen({Key? key}) : super(key: key);
  


  @override
  Widget build(BuildContext context) {


      final menuOptions = AppRoutes.menuOptions;


    return  Scaffold(
      appBar: AppBar(
        title:const  Text('Componentes de Flutter'),
        centerTitle: true,
        elevation: 8,
        // backgroundColor: Colors.brown
      ),


      body: ListView.separated(
        itemBuilder:(context , index) => ListTile(
          leading: Icon(menuOptions[index].icon , color: AppTheme.primary,),
          title:Text(menuOptions[index].name),
          onTap: (){

            Navigator.pushNamed(context, menuOptions[index].route);
        },
        ),
         separatorBuilder:(_ ,__) => const Divider(),


          itemCount: menuOptions.length
          ),
      );
  
  }
}