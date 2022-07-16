import 'package:flutter/material.dart';

import 'HeadTile.dart';
import 'ImageTile.dart';

class HomeScreen extends StatelessWidget {
  List<ImageTileData> imagesTiles = [
    ImageTileData(title: "Sports", url: "assets/sports.jpg"),
    ImageTileData(title: "Tech", url: "assets/sports.jpg"),
    ImageTileData(title: "Tech", url: "assets/sports.jpg"),
    ImageTileData(title: "Tech", url: "assets/sports.jpg"),
    ImageTileData(title: "Tech", url: "assets/sports.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Appbar", style: TextStyle(color: Colors.red)),
        centerTitle: true,
      ),
      body: Container(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [HeadTile(text: "news"), HeadTile(text: "magazine")],
          ),
          Expanded(
              child: GridView.builder(
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 1,
            ),
            itemCount: imagesTiles.length,
            itemBuilder: (context, index) {
              print(index);
              return ImageTile(
                  text: imagesTiles[index].title,
                  imagePath: imagesTiles[index].url);
            },
          )),
        ]),
      ),
    );
  }
}
