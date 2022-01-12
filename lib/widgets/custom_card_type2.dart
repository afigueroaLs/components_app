import 'package:flutter/material.dart';
import 'package:components_app/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key,
   required this.imgUrl,
   this.imgName,
  }) : super(key: key);

  final String imgUrl;
  final String? imgName;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, //corta la img para que se ponga igual al card
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)
      ),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.3),
      child: Column(
        children: [
          FadeInImage(
            image:  NetworkImage(imgUrl),
            placeholder: const AssetImage('assets/loading.gif'),
            width: double.infinity, //va a tomar todo el ancho
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if(imgName != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(imgName!)  
            )
        ],
      ),
    );
  }
}