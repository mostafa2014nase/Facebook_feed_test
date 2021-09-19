import 'package:facebookfeed_app/helper_backage/bloc/cubit.dart';
import 'package:facebookfeed_app/helper_backage/bloc/father_classes.dart';
import 'package:facebookfeed_app/modules_needed/modules.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommentWindowScreen extends StatefulWidget {
  final TextEditingController commentTyped;
  bool isThereComment = false;
  final List listCommentsSaved;

  CommentWindowScreen(
    this.commentTyped,
    this.listCommentsSaved,
  );

  @override
  _CommentWindowScreenState createState() => _CommentWindowScreenState();
}

class _CommentWindowScreenState extends State<CommentWindowScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitClass, AppStates>(
      listener: (context, states) {},
      builder: (context, states) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                widget.isThereComment == false
                    ? Column(
                        children: [
                          Container(
                            child: Icon(
                              Icons.mode_comment,
                              size: 300,
                              color: Colors.black.withOpacity(0.1),
                            ),
                            margin: EdgeInsets.all(15),
                          ),
                          Text(
                            "No comments yet",
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                          Text(
                            "be the first to comment",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      )
                    : Expanded(
                        child: ListView.separated(
                          itemCount: widget.listCommentsSaved.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 2),
                                    child: CircleAvatar(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                            matchTextDirection: true,
                                            image: NetworkImage(""),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        height: double.infinity,
                                      ),
                                      radius: 20,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(0.4),
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            "Mostafa Nasr",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "${widget.listCommentsSaved[index]}",
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return put_line();
                          },
                        ),
                      ),
                Column(
                  children: [
                    put_line(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.camera_alt_outlined,
                            size: 30,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: TextFormField(
                                    controller: widget.commentTyped,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: ' write a comment...',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              if (widget.commentTyped.text.isEmpty == false) {
                                setState(() {
                                  widget.isThereComment = true;
                                  widget.listCommentsSaved
                                      .add(widget.commentTyped.text);
                                  widget.commentTyped.text = "";
                                });
                              }
                              print("${widget.listCommentsSaved}");
                            },
                            child: Icon(
                              Icons.play_arrow_rounded,
                              color: Colors.blue,
                              size: 50,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
