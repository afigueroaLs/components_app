import 'package:flutter/material.dart';
import 'package:components_app/models/models.dart';
import 'package:components_app/screens/screens.dart';

class AppRoutes{


  static const initialRoute = 'home';
  
  static final menuOptions = <MenuOption>[
    //TODO: delete home
    // MenuOption(route: 'home', icon: Icons.home_max_rounded, nameScreen: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list_rounded, nameScreen: 'List View 1', screen: const ListView1Screen()),
    MenuOption(route: 'listview2', icon: Icons.line_style_rounded, nameScreen: 'List View 2', screen: const ListView2Screen()),
    MenuOption(route: 'alert', icon: Icons.notification_add_rounded, nameScreen: 'Alert', screen: const AlertScreen()),
    MenuOption(route: 'card', icon: Icons.card_membership_rounded, nameScreen: 'Cards', screen: const CardScreen()),
    MenuOption(route: 'avatar', icon: Icons.supervised_user_circle_rounded, nameScreen: 'Avatar', screen: const AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.play_circle_fill_rounded, nameScreen: 'Animated', screen: const AnimatedScreen()),
    MenuOption(route: 'inputs', icon: Icons.input_rounded, nameScreen: 'Inputs', screen: const InputsScreen()),
    MenuOption(route: 'slider', icon: Icons.slow_motion_video, nameScreen: 'Slider', screen: const SliderScreen()),
    MenuOption(route: 'listviewbuilder', icon: Icons.build, nameScreen: 'InfiniteScroll & Pull to Refresh', screen: const ListViewBuilderScreen()),


  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home' : (BuildContext context) => const HomeScreen()});
    for (final options in menuOptions) {
      appRoutes.addAll({options.route : (BuildContext context) => options.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'home' : (BuildContext context) => const HomeScreen(),
  //       'listview1' : (BuildContext context ) => const ListView1Screen(),
  //       'listview2' : (BuildContext context ) => const ListView2Screen(),
  //       'alert' : (BuildContext context ) => const AlertScreen(),
  //       'card' : (BuildContext context ) => const CardScreen(),
  //     };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
        return MaterialPageRoute(
              builder: (context) => const AlertScreen(),
            );
      }
}