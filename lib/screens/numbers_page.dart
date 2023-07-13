import 'package:flutter/material.dart';
import 'package:toku_two/components/list_item.dart';

import '../models/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Item> number = const [
    Item(
      sound: 'assets/sounds/numbers/number_one_sound.mp3',
      image: 'assets/images/numbers/number_one.png',
      jpName: 'Ichi',
      enName: 'one',
    ),
    Item(
      sound: 'assets/sounds/numbers/number_two_sound.mp3',
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      enName: 'two',
    ),
    Item(
      sound: 'assets/sounds/numbers/number_three_sound.mp3',
      image: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      enName: 'three',
    ),
    Item(
      sound: 'assets/sounds/numbers/number_four_sound.mp3',
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Shi',
      enName: 'four',
    ),
    Item(
      sound: 'assets/sounds/numbers/number_five_sound.mp3',
      image: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      enName: 'five',
    ),
    Item(
      sound: 'assets/sounds/numbers/number_six_sound.mp3',
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      enName: 'six',
    ),
    Item(
      sound: 'assets/sounds/numbers/number_seven_sound.mp3',
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Sebun',
      enName: 'seven',
    ),
    Item(
      sound: 'assets/sounds/numbers/number_eight_sound.mp3',
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'Hachi',
      enName: 'eight',
    ),
    Item(
      sound: 'assets/sounds/numbers/number_nine_sound.mp3',
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'Kyu',
      enName: 'nine',
    ),
    Item(
      sound: 'assets/sounds/numbers/number_ten_sound.mp3',
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'Ju',
      enName: 'ten',
    ),
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff543D36),
        title: Text('Numbers'),
      ),
      body: ListView.builder(
          itemCount: number.length,
          itemBuilder: (context, index) {
            return LestItem(
              Item: number[index],
              color: Color(0xffFF9F3C),
              ItemType:'numbers' ,
            );
          }),
    );
  }
}
