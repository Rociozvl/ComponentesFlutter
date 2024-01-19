import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

   double _slider = 100;
    bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),     
      ),
      body: Column(
        children: [
          Slider(
      min: 50,
      max: 600,
      activeColor: AppTheme.primary,
      value: _slider,
       onChanged: _sliderEnable ?(value)=> {
        _slider = value,
        setState((){})
       }
       : null),


      //  Checkbox(
      //   value:_sliderEnable, 
      //   onChanged: (value)=> {
      //     _sliderEnable = value ?? true,
      //     setState((){})
      //   }),
SwitchListTile(
  activeColor: AppTheme.primary,
  title: const Text('Habilitar slider'),
  
  value:_sliderEnable, 
         onChanged: (value)=> {
        _sliderEnable = value ,
           setState((){})
         }
  ),



         Expanded(
           child: SingleChildScrollView(
             child: Image(
                     image: const NetworkImage('https://static.wikia.nocookie.net/leagueoflegends/images/4/4f/Lee_Sin_Render.png/revision/latest/scale-to-width-down/271?cb=20181117192315'),
                     fit: BoxFit.contain,
                     width: _slider,
                     
                     ),
           ),
         )
        ],
      )
    );
  }
}