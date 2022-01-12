import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
   
  const ListView2Screen({Key? key}) : super(key: key);
  
  final options = const['SpiderMan', 'IronMan', 'Captain America', 'ShangShi'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 2'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(options[i]), 
          trailing: const Icon(Icons.arrow_forward_ios_rounded), 
          iconColor: Colors.indigo,
          onTap: () {} 
        ), 
        separatorBuilder: ( _ , __ ) => const Divider(),
      )   
    );
  }
}