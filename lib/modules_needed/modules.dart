import 'dart:io';

import 'package:flutter/material.dart';

Widget putLine({
  double lineWidth = double.infinity,
  double lineHeight = 1.0,
  Color myColor = Colors.grey,
}) {
  return Container(
    color: myColor,
    width: lineWidth,
    height: lineHeight,
  );
}

Widget storyItem({
  @required String? mapPicsBackgroundItem,
  @required String? mapPicsCircleItem,
  @required String? mapUserNameItem,
}) {
  return InkWell(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: Container(
        height: 210,
        width: 110,
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  matchTextDirection: true,
                  image: NetworkImage(
                    mapPicsBackgroundItem!,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(3),
              child: CircleAvatar(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  height: double.infinity,
                ),
                radius: 22,
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: CircleAvatar(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      matchTextDirection: true,
                      image: NetworkImage(mapPicsCircleItem!),
                      fit: BoxFit.fill,
                    ),
                  ),
                  height: double.infinity,
                ),
                radius: 20,
              ),
            ),
            Container(
              alignment: AlignmentDirectional.bottomStart,
              padding: const EdgeInsets.all(8.0),
              child: Text(
                mapUserNameItem!,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

String getOs() {
  return Platform.operatingSystem;
}
/*
Widget myRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: IconButton(
          icon: Icon(Icons.gif_outlined),
          onPressed: () {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: IconButton(
          icon: Icon(Icons.emoji_objects_outlined),
          onPressed: () {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: IconButton(
          icon: Icon(Icons.emoji_emotions_outlined),
          onPressed: () {},
        ),
      ),
    ],
  );
}
*/
