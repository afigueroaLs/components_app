import 'dart:math';

import 'package:components_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & checks'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          SwitchListTile.adaptive(
            title: const Text('Activate or Desactive'),
            activeColor: AppTheme.primary,
            value: _sliderEnable, 
            onChanged: (value){
              setState(() {
                _sliderEnable = value;
              });
            }),
          Expanded(
            child: SingleChildScrollView(
              child: Image(image: const NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/aaa79357-9476-4c1d-b9a8-6e881f2449d3/ddf91id-7aeb41b0-9f40-4e11-af76-8c06ee14d5b9.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2FhYTc5MzU3LTk0NzYtNGMxZC1iOWE4LTZlODgxZjI0NDlkM1wvZGRmOTFpZC03YWViNDFiMC05ZjQwLTRlMTEtYWY3Ni04YzA2ZWUxNGQ1YjkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.0BsCjAjjnRYdNYq2nsAlBkGeS5eaRxgg-815CQhS-dw'),
                fit: BoxFit.contain,
                width: _sliderValue,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Slider.adaptive(
            min: 50,
            max: 400,
            divisions: 15,
            activeColor: AppTheme.primary,
            value: _sliderValue, 
            onChanged: _sliderEnable ? (value){
              setState(() {
              _sliderValue = value;
              });
            } : null
            ),
          ),
          const SizedBox(height: 50,),
          
        ],
      )
    );
  }
}