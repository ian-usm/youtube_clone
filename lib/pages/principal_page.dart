import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/data.dart';
import '../widgets/widgets.dart';

class PrincipalPage extends StatelessWidget {
  const PrincipalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color(0xff282828),
      
      body: CustomScrollView(
        slivers: [
          CustomAppbar(),
          SliverList(delegate: SliverChildBuilderDelegate(
            (context, index){
              final video = videos[index];
              return VideoWidget(
                miniatura: video['miniatura'].toString(),
              );
             
          },
          childCount: videos.length
          ),),
        ],
          
          
        
      ) ,
    );
  }
}