import 'package:flutter/material.dart';

Widget put_line({
  double line_width = double.infinity,
  double line_height = 1.0,
  Color my_color = Colors.grey,
}) {
  return Container(
    color: my_color,
    width: line_width,
    height: line_height,
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
            ),Container(
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
                style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget postItemWithOutImage({
  @required bool? is_like_pressed,
  @required Function()? commentPressedFun,
  @required Function()? likePressedFun,
  @required String? numberOfcommentsText,
  @required int? lenghtOfComments,
  @required String? Username,
  @required String? postText,
  @required String? circularImage,
}) {
  return Container(
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          matchTextDirection: true,
                          image: NetworkImage(circularImage!),
                          fit: BoxFit.fill,
                        ),
                      ),
                      height: double.infinity,
                    ),
                    radius: 20,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mostafa Ahmed Nasr",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Text("Update his profile picture"),
                      Row(
                        children: [
                          Text("3 h"),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 5,
                            height: 5,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.vpn_lock,
                            color: Colors.black45,
                            size: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.check),
              onPressed: () {},
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(postText!),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            is_like_pressed!
                ? Row(
                    children: [
                      Icon(Icons.check_box),
                      SizedBox(
                        width: 3,
                      ),
                      Text("You"),
                    ],
                  )
                : Text(""),
            lenghtOfComments != 0
                ? InkWell(
                    onTap: commentPressedFun!,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Text(numberOfcommentsText!),
                          Text(" Comments"),
                        ],
                      ),
                    ),
                  )
                : Text(""),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        put_line(
          line_height: 1,
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: likePressedFun,
                child: Row(
                  children: [
                    is_like_pressed == false
                        ? Icon(
                            Icons.check_box,
                          )
                        : Icon(
                            Icons.check_box,
                            color: Colors.blue,
                          ),
                    SizedBox(
                      width: 3,
                    ),
                    is_like_pressed == false
                        ? Text("like")
                        : Text(
                            "like",
                            style: TextStyle(color: Colors.blue),
                          ),
                  ],
                ),
              ),
              InkWell(
                onTap: commentPressedFun,
                child: Row(
                  children: [
                    Icon(Icons.mode_comment_outlined),
                    SizedBox(
                      width: 3,
                    ),
                    Text("comment"),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(Icons.ios_share_outlined),
                    SizedBox(
                      width: 3,
                    ),
                    Text("share"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget postItemWithOneImage({
  @required bool? is_like_pressed,
  @required Function()? commentPressedFun,
  @required Function()? likePressedFun,
  @required String? numberOfcommentsText,
  @required int? lenghtOfComments,
  @required String? Username,
  String postText = "",
  @required String? circularImage,
  @required String? imageOnly,
}) {
  return Container(
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          matchTextDirection: true,
                          image: NetworkImage(circularImage!),
                          fit: BoxFit.fill,
                        ),
                      ),
                      height: double.infinity,
                    ),
                    radius: 20,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mostafa Ahmed Nasr",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Text("Update his profile picture"),
                      Row(
                        children: [
                          Text("3 h"),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 5,
                            height: 5,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.vpn_lock,
                            color: Colors.black45,
                            size: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.check),
              onPressed: () {},
            ),
          ],
        ),
        Text(postText),
        Container(
          height: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              matchTextDirection: true,
              image: NetworkImage(imageOnly!),
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            is_like_pressed!
                ? Row(
                    children: [
                      Icon(Icons.check_box),
                      SizedBox(
                        width: 3,
                      ),
                      Text("You"),
                    ],
                  )
                : Text(""),
            lenghtOfComments != 0
                ? InkWell(
                    onTap: commentPressedFun!,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Text(numberOfcommentsText!),
                          Text(" Comments"),
                        ],
                      ),
                    ),
                  )
                : Text(""),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        put_line(
          line_height: 1,
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: likePressedFun,
                child: Row(
                  children: [
                    is_like_pressed == false
                        ? Icon(
                            Icons.check_box,
                          )
                        : Icon(
                            Icons.check_box,
                            color: Colors.blue,
                          ),
                    SizedBox(
                      width: 3,
                    ),
                    is_like_pressed == false
                        ? Text("like")
                        : Text(
                            "like",
                            style: TextStyle(color: Colors.blue),
                          ),
                  ],
                ),
              ),
              InkWell(
                onTap: commentPressedFun,
                child: Row(
                  children: [
                    Icon(Icons.mode_comment_outlined),
                    SizedBox(
                      width: 3,
                    ),
                    Text("comment"),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(Icons.ios_share_outlined),
                    SizedBox(
                      width: 3,
                    ),
                    Text("share"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget postItemWithTwoImage({
  @required bool? is_like_pressed,
  @required Function()? commentPressedFun,
  @required Function()? likePressedFun,
  @required String? numberOfcommentsText,
  @required int? lenghtOfComments,
  @required String? Username,
  String postText = "",
  @required String? circularImage,
  @required String? imageFirst,
  @required String? imageSecond,
}) {
  return Container(
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          matchTextDirection: true,
                          image: NetworkImage(circularImage!),
                          fit: BoxFit.fill,
                        ),
                      ),
                      height: double.infinity,
                    ),
                    radius: 20,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mostafa Ahmed Nasr",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Text("Update his profile picture"),
                      Row(
                        children: [
                          Text("3 h"),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 5,
                            height: 5,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.vpn_lock,
                            color: Colors.black45,
                            size: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.check),
              onPressed: () {},
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(postText),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    matchTextDirection: true,
                    image: NetworkImage(imageFirst!),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    matchTextDirection: true,
                    image: NetworkImage(imageSecond!),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            is_like_pressed!
                ? Row(
                    children: [
                      Icon(Icons.check_box),
                      SizedBox(
                        width: 3,
                      ),
                      Text("You"),
                    ],
                  )
                : Text(""),
            lenghtOfComments != 0
                ? InkWell(
                    onTap: commentPressedFun!,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Text(numberOfcommentsText!),
                          Text(" Comments"),
                        ],
                      ),
                    ),
                  )
                : Text(""),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        put_line(
          line_height: 1,
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: likePressedFun,
                child: Row(
                  children: [
                    is_like_pressed == false
                        ? Icon(
                            Icons.check_box,
                          )
                        : Icon(
                            Icons.check_box,
                            color: Colors.blue,
                          ),
                    SizedBox(
                      width: 3,
                    ),
                    is_like_pressed == false
                        ? Text("like")
                        : Text(
                            "like",
                            style: TextStyle(color: Colors.blue),
                          ),
                  ],
                ),
              ),
              InkWell(
                onTap: commentPressedFun,
                child: Row(
                  children: [
                    Icon(Icons.mode_comment_outlined),
                    SizedBox(
                      width: 3,
                    ),
                    Text("comment"),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(Icons.ios_share_outlined),
                    SizedBox(
                      width: 3,
                    ),
                    Text("share"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget postItemWithMultiImage({
  @required bool? is_like_pressed,
  @required Function()? commentPressedFun,
  @required Function()? likePressedFun,
  @required String? numberOfcommentsText,
  @required int? lenghtOfComments,
  @required String? Username,
  String postText = "",
  @required String? circularImage,
  @required String? imageOne,
  @required String? imageTwo,
  @required String? imageThree,
  @required String? imageFour,
  @required String? imageFive,
  @required String? imageSix,
}) {
  return Container(
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          matchTextDirection: true,
                          image: NetworkImage(circularImage!),
                          fit: BoxFit.fill,
                        ),
                      ),
                      height: double.infinity,
                    ),
                    radius: 20,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mostafa Ahmed Nasr",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Text("Update his profile picture"),
                      Row(
                        children: [
                          Text("3 h"),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 5,
                            height: 5,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.vpn_lock,
                            color: Colors.black45,
                            size: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.check),
              onPressed: () {},
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(postText),
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      matchTextDirection: true,
                      image: NetworkImage(imageOne!),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      matchTextDirection: true,
                      image: NetworkImage(imageTwo!),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      matchTextDirection: true,
                      image: NetworkImage(imageThree!),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      matchTextDirection: true,
                      image: NetworkImage(imageFour!),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      matchTextDirection: true,
                      image: NetworkImage(imageFive!),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      matchTextDirection: true,
                      image: NetworkImage(imageSix!),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            is_like_pressed!
                ? Row(
                    children: [
                      Icon(Icons.check_box),
                      SizedBox(
                        width: 3,
                      ),
                      Text("You"),
                    ],
                  )
                : Text(""),
            lenghtOfComments != 0
                ? InkWell(
                    onTap: commentPressedFun!,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Text(numberOfcommentsText!),
                          Text(" Comments"),
                        ],
                      ),
                    ),
                  )
                : Text(""),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        put_line(
          line_height: 1,
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: likePressedFun,
                child: Row(
                  children: [
                    is_like_pressed == false
                        ? Icon(
                            Icons.check_box,
                          )
                        : Icon(
                            Icons.check_box,
                            color: Colors.blue,
                          ),
                    SizedBox(
                      width: 3,
                    ),
                    is_like_pressed == false
                        ? Text("like")
                        : Text(
                            "like",
                            style: TextStyle(color: Colors.blue),
                          ),
                  ],
                ),
              ),
              InkWell(
                onTap: commentPressedFun,
                child: Row(
                  children: [
                    Icon(Icons.mode_comment_outlined),
                    SizedBox(
                      width: 3,
                    ),
                    Text("comment"),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(Icons.ios_share_outlined),
                    SizedBox(
                      width: 3,
                    ),
                    Text("share"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget my_row() {
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
