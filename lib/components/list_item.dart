import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

import '../models/item.dart';

class LestItem extends StatelessWidget {
  LestItem({
    key,
    required this.color,
    required this.Item,
    required this.ItemType,
  }) : super(key: key);
  final Item ;
  final Color color;
  final String ItemType;

  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Item.image==null ?  Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
              color: Color(0xffFAEED8),
              ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Item.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  Item.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              // final player = AudioPlayer();
              // player.play(AssetSource(number.sound));
              try {
                final assetsAudioPlayer = AssetsAudioPlayer();
                assetsAudioPlayer.open(
                  Audio(Item.sound),
                  showNotification: true,
                );
              } catch (ex) {
                print(ex);
              }
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 32,
            ),
          ),
        ],
      ),
    ):  Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
              color: Color(0xffFAEED8),
               child:Image.asset(Item.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Item.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  Item.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              // final player = AudioPlayer();
              // player.play(AssetSource(number.sound));
              try {
                final assetsAudioPlayer = AssetsAudioPlayer();
                assetsAudioPlayer.open(
                  Audio(Item.sound),
                  showNotification: true,
                );
              } catch (ex) {
                print(ex);
              }
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem(
      {Key? key,
      required this.color,
      required this.itemType,
      required this.phrase})
      : super(key: key);
  final Color color;
  final Item phrase;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
              color: Color(0xffFAEED8),
              ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  phrase.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              // final player = AudioPlayer();
              // player.play(AssetSource(number.sound));
              try {
                final assetsAudioPlayer = AssetsAudioPlayer();
                assetsAudioPlayer.open(
                  Audio(phrase.sound),
                  showNotification: true,
                );
              } catch (ex) {
                print(ex);
              }
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
