import 'package:flutter/material.dart';

import '../components/list_item.dart';
import '../models/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Item> number = const [
    Item(
      sound:'assets/sounds/phrases/are_you_coming.wav',
      jpName: 'اي تيكست',
      enName: 'are you coming',
    ),
    Item(
      sound:'assets/sounds/phrases/dont_forget_to_subscribe.wav',

      jpName: 'ترجمة ياباني ايه اللي عاوزها انت بتفهم عربي اصلا؟',
      enName: 'dont forget to subscribe',
    ),
    Item(
      sound: 'assets/sounds/phrases/how_are_you_feeling.wav',

      jpName: 'بيسالك حاسس ب ايه',
      enName: 'how are you feeling ',
    ),
    Item(
      sound: 'assets/sounds/phrases/i_love_anime.wav',

      jpName: 'مش محتاجه ترجمه',
      enName: 'i love anime',
    ),
    Item(
      sound: 'assets/sounds/phrases/i_love_programming.wav',

      jpName: 'و انا كمان',
      enName: 'i love programming',
    ),
    Item(
      sound: 'assets/sounds/phrases/programming_is_easy.wav',

      jpName: 'اوووووووووووووي',
      enName: 'programming is easy',
    ),
    Item(
      sound: 'assets/sounds/phrases/what_is_your_name.wav',
      

      jpName: 'تقى محمد الباجوري',
      enName: 'what is your name',
    ),
    Item(
      sound: 'assets/sounds/phrases/where_are_you_going.wav',


      jpName: 'حاليا هخلص والله و راحه التمرين',
      enName: 'where are you going',
    ),
    Item(
      sound: 'assets/sounds/phrases/yes_im_coming.wav',

      jpName: 'اشطا',
      enName: 'yes im coming',
    ),
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff543D36),
        title: Text('Phrases'),
      ),
      body: ListView.builder(
          itemCount: number.length,
          itemBuilder: (context, index) {
            return LestItem(
              Item: number[index],
              color: Color(0xff52AFD6),
              ItemType: 'numbers',
            );
          }),
    );
  }
}
