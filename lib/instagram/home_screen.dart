import 'package:flutter/material.dart';

import '../widgets/post_cart.dart';
import '../widgets/story_widget.dart';

class HomeScreen extends StatelessWidget {
  final List _stories = [
    'historia 1',
    'historia 2',
    'historia 3',
    'historia 4',
    'historia 5'
  ];
  final List _posts = [
    'publicacion 1',
    'publicacion 2',
    'publicacion 3',
    'publicacion 4',
    'publicacion 5'
  ];

  HomeScreen({Key? key}) : super(key: key);

  //Widget de la pagina principal en la que se traen los widget del la carta de publicacion y los circulos de las historias.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.black,
        title: const SizedBox(
          height: 50,
          width: 120,
          child: Image(image: AssetImage('assets/img/logo.png')),
        ),
        actions: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.add_box_outlined,
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.favorite_outline_rounded,
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.energy_savings_leaf_outlined,
                  size: 30,
                ),
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey.shade700,
            height: 1,
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
                itemCount: _stories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return StoryWidget(
                    username: _stories[index],
                  );
                }),
          ),
          Container(
            color: Colors.grey.shade700,
            height: 1,
            width: MediaQuery.of(context).size.width,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: _posts.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return PostCart();
                }),
          ),
        ],
      ),
    );
  }
}
