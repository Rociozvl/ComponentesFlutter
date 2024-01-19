import 'package:fl_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';



class CustomCardType2 extends StatelessWidget {
   
   final String imgUrl;
   final String? name;
   
   const CustomCardType2({
    Key? key,
   required this.imgUrl,
   required this.name
   })
   : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        ),
      elevation: 15,
      shadowColor: AppTheme.primary.withOpacity(0.3),
      child: Column(
        children: [
        FadeInImage(
          
          image: NetworkImage(imgUrl),
          placeholder: const AssetImage('images/jar-loading.gif'),
          height: 250,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 5),
           ),

  if(name != null)    
         Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right:20 , top:10 , bottom: 10 ),
            child: Text(name! ),
            )

        ],
        )
    );
  }
}