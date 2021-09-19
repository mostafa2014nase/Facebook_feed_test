import 'package:facebookfeed_app/facebook/comment_screen.dart';
import 'package:facebookfeed_app/helper_backage/bloc/cubit.dart';
import 'package:facebookfeed_app/helper_backage/bloc/father_classes.dart';
import 'package:facebookfeed_app/modules_needed/modules.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostWidgetScreen extends StatefulWidget {
  static String routName = "route name";
  final String userPicture;
  final String userName;
  final Widget postWidget;
  final String statueText;
  final String postTime;
  final TextEditingController commentTyped;
  final List listCommentsSaved;

  PostWidgetScreen(
    this.userPicture,
    this.userName,
    this.postTime,
    this.commentTyped,
    this.listCommentsSaved,
    this.postWidget, {
    this.statueText = "",
  });

  @override
  _PostWidgetScreenState createState() => _PostWidgetScreenState();
}

class _PostWidgetScreenState extends State<PostWidgetScreen> {
  bool isLikePressed = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitClass, AppStates>(
      listener: (context, states) {},
      builder: (context, states) {
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
                                image: NetworkImage(widget.userPicture),
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
                              widget.userName,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            Text(widget.statueText),
                            Row(
                              children: [
                                Text(widget.postTime),
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
                    icon: Icon(Icons.menu),
                    onPressed: () {},
                  ),
                ],
              ),
              widget.postWidget,
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isLikePressed
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
                  widget.listCommentsSaved.length != 0
                      ? InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CommentWindowScreen(
                                          widget.commentTyped,
                                          widget.listCommentsSaved,
                                        )));
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: [
                                Text(
                                    widget.listCommentsSaved.length.toString()),
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
                      onTap: () {
                        setState(() {
                          isLikePressed = !isLikePressed;
                        });
                      },
                      child: Row(
                        children: [
                          isLikePressed == false
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
                          isLikePressed == false
                              ? Text("like")
                              : Text(
                                  "like",
                                  style: TextStyle(color: Colors.blue),
                                ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CommentWindowScreen(
                                      widget.commentTyped,
                                      widget.listCommentsSaved,
                                    )));
                      },
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
      },
    );
  }
}

/*Container(
height: 400,
decoration: BoxDecoration(
image: DecorationImage(
matchTextDirection: true,
image: NetworkImage(imageOnly!),
fit: BoxFit.fill,
),
),
),*/
