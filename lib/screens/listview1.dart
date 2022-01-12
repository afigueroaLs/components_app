import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
   
  const ListView1Screen({Key? key}) : super(key: key);
  
  final options = const['SpiderMan', 'IronMan', 'Captain America', 'ShangShi'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
      ),
      body: ListView(
        children: [
          //... => extraen los elementos de la lista
          ...options.map(
            (marvel) => ListTile(
              //leading al principio
            //leading: const Icon(Icons.arrow_forward_ios_rounded),
            title: Text(marvel),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            )
            ).toList(),
        ],
      )
    );
  }
}