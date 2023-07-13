import 'package:flutter/material.dart';

import '../components/list_item.dart';
import '../models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Item> colors = const [
    Item(
      sound: 'assets/sounds/colors//black.wav',
      image: 'assets/images/colors/color_black.png',
      jpName: '000',
      enName: 'black',
    ),
    Item(
      sound: 'assets/sounds/colors/brown.wav',
      image: 'assets/images/colors/color_brown.png',
      jpName: '000',
      enName: 'brown',
    ),
    Item(
      sound: 'assets/sounds/colors/dusty yellow.wav',
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: '000',
      enName: 'dusty yellow',
    ),
    Item(
      sound: 'assets/sounds/colors/gray.wav',
      image: 'assets/images/colors/color_gray.png',
      jpName: '000',
      enName: 'gray',
    ),
    Item(
      sound: 'assets/sounds/colors/green.wav',
      image: 'assets/images/colors/color_green.png',
      jpName: '000',
      enName: 'green',
    ),
    Item(
      sound: 'assets/sounds/colors/red.wav',
      image: 'assets/images/colors/color_red.png',
      jpName: '000',
      enName: 'red',
    ),
    Item(
      sound: 'assets/sounds/colors/white.wav',
      image: 'assets/images/colors/color_white.png',
      jpName: '000',
      enName: 'white',
    ),
    Item(
      sound: 'assets/sounds/colors/yellow.wav',
      image: 'assets/images/colors/yellow.png',
      jpName: '000',
      enName: 'yellow',
    ),
    
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff543D36),
        title: Text('Family Members'),
      ),
      body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return LestItem(
              Item: colors[index],
              color: Color(0xff52AFD6),
              ItemType: 'colors',
            );
          }),
    );
  }
}
