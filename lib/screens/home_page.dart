import 'package:flutter/material.dart';
import 'package:toku_two/screens/Colors_page.dart';
import 'package:toku_two/screens/family_members_page.dart';
import 'package:toku_two/screens/numbers_page.dart';
import 'package:toku_two/screens/phrases_page.dart';

import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffFFF4DA),
      appBar: AppBar(
        backgroundColor: Color(0xff543D36),
        title: Text('Toku'),
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset(
              'assets/images/Reading book-rafiki.png',
              height: 300,
              width: 400,
            ),
          ),
          category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
            text: 'Numbers',
            color: Color(0xffFF9F3C),
          ),
          category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyMembersPage();
              }));
            },
            text: 'Family Members',
            color: Color(0XFF608A3C),
          ),
          category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorsPage();
              }));
            },
            text: 'Colors',
            color: Color(0xff864CAF),
          ),
          category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrasesPage();
              }));
            },
            text: 'Phrases',
            color: Color(0xff52AFD6),
          ),
        ],
      ),
    );
  }
}
