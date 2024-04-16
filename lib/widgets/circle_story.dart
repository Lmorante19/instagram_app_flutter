import 'package:flutter/material.dart';

class CircleStory extends StatelessWidget {
  const CircleStory({Key? key}) : super(key: key);

  //Wiget Para generar de forma circular el componente que trae la imagen para los estados.
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(6.0),
      child: ClipOval(
        child: Image(
          height: 68,
          width: 68,
          image: NetworkImage(
              'https://cdn.pixabay.com/photo/2020/05/25/17/10/french-bulldog-5219522_1280.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
