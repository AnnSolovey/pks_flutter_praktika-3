import 'package:flutter/material.dart';
import 'package:online_music_shop/components/item_list.dart';
import 'package:online_music_shop/data/items_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text(
            "BROKEN BELLS",
            style: TextStyle(
              color: Color.fromRGBO(105, 89, 66, 1.0),
              fontSize: 32.0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        backgroundColor: Color.fromRGBO(198, 184, 162, 1.0),
        scrolledUnderElevation: 0.0,
      ),
      backgroundColor: Color.fromRGBO(198, 184, 162, 1.0),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView.builder(
            itemCount: albums.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemList(album: albums[index]);
            }
          ),
        ),
      )
    );
  }
}
