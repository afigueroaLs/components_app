import 'package:flutter/material.dart';
import 'package:components_app/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album_rounded, color: AppTheme.darkPrimaryColor),
            title: const Text('Soy un titulo'),
            subtitle: const Text('Sint ut magna ad cupidatat commodo anim. Sunt quis tempor irure do ea minim nisi ullamco dolore. Deserunt ea enim labore id exercitation irure nulla esse incididunt adipisicing.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){},
                   child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: (){},
                   child: const Text('OK'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

