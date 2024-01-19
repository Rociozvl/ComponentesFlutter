

import 'package:fl_componentes/models/menu_option.dart';
import 'package:flutter/material.dart';
import 'package:fl_componentes/screens/screens.dart';

class AppRoutes{
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
     
     //MenuOption(route: 'home',name: 'Home Screen',screen: const HomeScreen(),icon:Icons.add_home_rounded),
     MenuOption(route: 'listview1',name: 'ListView tipo 1',screen: const ListViewScreen() ,icon:Icons.add),
     MenuOption(route: 'listview2',name: 'ListView tipo 2',screen: const ListView2Screen(),icon:Icons.add),
     MenuOption(route: 'alert',name: 'Alerts-Alertas',screen: const AlertScreen(),icon:Icons.assignment_late_sharp), 
     MenuOption(route: 'card',name: 'Tarjetas-Cards',screen: const CardScreen(),icon:Icons.all_inbox_sharp),
     MenuOption(route: 'avatar',name: 'Circle-Avatar',screen: const AvatarScreen(),icon:Icons.supervised_user_circle),
     MenuOption(route: 'animated',name: 'Animated container',screen: const AnimatedScreen(),icon:Icons.play_circle_fill),
     MenuOption(route: 'inputs',name: 'Form-inputs',screen: const InputsScreen(),icon:Icons.format_align_center),
     MenuOption(route: 'sliders',name: 'Sliders && checks',screen: const SliderScreen(),icon:Icons.slow_motion_video),
     MenuOption(route: 'listbuilder',name: 'Infinite Scroll & pull to refresh',screen: const ListViewBuilderScreen(),icon:Icons.build_circle_rounded),

  
  ];

   static Map<String , Widget Function(BuildContext)> getAppRoutes(){
    Map<String , Widget Function(BuildContext)> appRoutes = {};
         appRoutes.addAll({'home': (BuildContext context)=> const HomeScreen()});

    for (final option in menuOptions){
      appRoutes.addAll({ option.route : (BuildContext context) => option.screen});
    }
    return appRoutes;
   }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'home': (BuildContext context) => const HomeScreen(),
  //       'listview1': (BuildContext context) => const ListViewScreen(),
  //       'listview2': (BuildContext context) => const ListView2Screen(),
  //       'alert': (BuildContext context) => const AlertScreen(),
  //       'card': (BuildContext context) => const CardScreen()

  // };

  static Route<dynamic> onGenerateInitialRoute(RouteSettings settings){ return MaterialPageRoute(
      builder:(context) => const AlertScreen(),
    );
    }
   
  
}
