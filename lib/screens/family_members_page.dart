import 'package:flutter/material.dart';

import '../components/list_item.dart';
import '../models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<Item> FamilyMembers = const [
    Item(
      sound: 'assets/sounds/family_members/father.wav',
      image: 'assets/images/family_members/family_father.png',
      jpName: '000',
      enName: 'father',
    ),
    Item(
      sound: 'assets/sounds/family_members/mother.wav',
      image: 'assets/images/family_members/family_mother.png',
      jpName: '000',
      enName: 'mother',
    ),
    Item(
      sound: 'assets/sounds/family_members/grand father.wav',
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: '000',
      enName: 'grand father',
    ),
    Item(
      sound: 'assets/sounds/family_members/grand mother.wav',
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: '000',
      enName: 'grand mother',
    ),
    Item(
      sound: 'assets/sounds/family_members/daughter.wav',
      image: 'assets/images/family_members/family_daughter.png',
      jpName: '000',
      enName: 'daughter',
    ),
    Item(
      sound: 'assets/sounds/family_members/older bother.wav',
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: '000',
      enName: 'older brother',
    ),
    Item(
      sound: 'assets/sounds/family_members/older sister.wav',
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: '000',
      enName: 'older sister',
    ),
    Item(
      sound: 'assets/sounds/family_members/son.wav',
      image: 'assets/images/family_members/family_son.png',
      jpName: '000',
      enName: 'son',
    ),
    Item(
      sound: 'assets/sounds/family_members/younger sister.wav',
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: '000',
      enName: 'younger sister',
    ),
    Item(
      sound: 'assets/sounds/family_members/younger brohter.wav',
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: '000',
      enName: 'younger brother',
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
          itemCount: FamilyMembers.length,
          itemBuilder: (context, index) {
            return LestItem(
              Item: FamilyMembers[index],
              color: Color(0xff608A3C),
              ItemType:'family_members' ,
            );
          }),
    );
  }
}
