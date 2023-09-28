import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
            floating: true,
            leadingWidth: 150,
            backgroundColor: Color(0xff282828),
            leading: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 5),
                    height: 25,
                    child: Image(image: AssetImage('assets/images/youtube-cube.png', ))),
                  Text('YouTube', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),)
                ],
              ),
            ),
            actions: [
              IconButton(
                iconSize: 25,
                color: Colors.white,
                icon: Icon(MdiIcons.cast),
                onPressed: () {
                  
                },),
              IconButton(
                iconSize: 25,
                color: Colors.white,
                icon: Icon(MdiIcons.bellOutline),
                onPressed: () {
                  
                },),
              IconButton(
                iconSize: 25,
                color: Colors.white,
                icon: Icon(MdiIcons.magnify),
                onPressed: () {
                  
                },),
              IconButton(
                iconSize: 30,
                icon: CircleAvatar(backgroundImage: AssetImage('assets/images/rodrigo.jpeg'),),
                onPressed: () {
                  
                },),
            ],
          );
  }
}