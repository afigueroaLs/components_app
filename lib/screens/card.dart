import 'package:components_app/widgets/custom_card_type2.dart';
import 'package:flutter/material.dart';
import 'package:components_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2(imgUrl: 'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg', imgName: 'Hermosas Dunas',),
          SizedBox(height: 10,),
          CustomCardType2(imgUrl: 'https://backlightblog.com/images/2021/04/landscape-photography-header-2000x1310.jpg', imgName: 'Escena introductoria en Mulan',),
          SizedBox(height: 10,),
          CustomCardType2(imgUrl: 'https://cdn3.dpmag.com/2021/07/Landscape-Tips-Mike-Mezeul-II.jpg',),
          SizedBox(height: 100,),
        ],
      ),
    );
  }
}

