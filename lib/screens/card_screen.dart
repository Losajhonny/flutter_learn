import 'package:flutter/material.dart';
import 'package:flutter_learn/widgets/widget.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10
        ),
        children: const [

          // que pasa si quiero utilizar un widget

          CustomCard(),
          SizedBox(height: 10,),
          CustomCard2(
            imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/8/86/Landscape_mountain.jpg',
            name: 'un hermoso paisaje',
          ),
          SizedBox(height: 10,),
          CustomCard2(
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_H_p2TFs9wiV7d8oyRhD5hnX5SKNAvs3zAg&usqp=CAU',
          ),
          SizedBox(height: 10,),
          CustomCard2(
            imageUrl: 'https://images.squarespace-cdn.com/content/v1/5e8f85dddfc3a414225f3d0f/1596041135984-0058U8RNIW0GD6A42M7W/Bozeman-Landscape-Highridge.jpg?format=1000w',
          ),
        ],
      )
    );
  }
}
