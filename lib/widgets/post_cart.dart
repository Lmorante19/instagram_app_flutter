import 'package:flutter/material.dart';

import 'circle_story.dart';

class PostCart extends StatelessWidget {
  const PostCart({Key? key}) : super(key: key);

  //Widget para generar el componente de la carta de publicaciones
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /////////////////////////////////////////////////////////////////////
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 3),
                  child: SizedBox(height: 55, width: 55, child: CircleStory()),
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  'lumoran123',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            )
          ],
        ),
        ///////////////////////////////////////////////////////////////////////////
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: const Image(
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2024/02/12/14/56/woman-8568693_1280.jpg')),
        ),
        //////////////////////////////////////////////////////////////////////////
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 2.0),
                    child: Icon(
                      Icons.favorite_outline_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 13.0),
                    child: Icon(
                      Icons.chat_bubble_outline_rounded,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 13.0),
                    child: Icon(
                      Icons.near_me_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  )
                ],
              ),
              const Icon(
                Icons.bookmark_border,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Row(
            children: const [
              Text(
                '133 Me gusta',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 14.0),
                  child: Text(
                    'lumoran123',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  'hola este es mi primer post',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Row(
            children: [
              Text(
                'Ver 54 comentarios',
                style: TextStyle(color: Colors.grey.shade500),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0, top: 5),
          child: Row(
            children: [
              Text(
                'Hace 2 días',
                style: TextStyle(color: Colors.grey.shade500),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
