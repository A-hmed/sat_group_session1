import 'package:flutter/material.dart';

class ImageTile extends StatelessWidget {
  String text;
  String imagePath;
  ImageTile({required this.text, required this.imagePath});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      margin: EdgeInsets.all(4),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Image.asset(imagePath,width: double.infinity,height: double.infinity, fit: BoxFit.fill),
          Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              color: Color.fromRGBO(158, 61, 215, .5),
              child: Text(
                text,
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
    );
  }
}

class ImageTileData {
  String title;
  String url;
  ImageTileData({required this.title,required this.url});
}
