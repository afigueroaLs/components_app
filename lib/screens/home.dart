import 'package:flutter/material.dart';
// import 'package:components_app/models/models.dart';
import 'package:components_app/theme/app_theme.dart';
import 'package:components_app/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(menuOption[index].icon), iconColor: AppTheme.darkBtnColor,
          title: Text(menuOption[index].nameScreen),
          onTap: (){
            // final route = MaterialPageRoute(
            //   builder: (context) => const ListView1Screen(),
            // );
            // Navigator.push(context, route);
            Navigator.pushNamed(context, menuOption[index].route);
          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: menuOption.length)
    );
  }
}