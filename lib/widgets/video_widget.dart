import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  final String miniatura;

  VideoWidget({this.miniatura = ''});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image(
            height: 220,
            width: double.infinity,
            fit: BoxFit.cover,
            image: AssetImage('assets/images/${(this.miniatura)}'))
        ],
      ),
    );
  }
}