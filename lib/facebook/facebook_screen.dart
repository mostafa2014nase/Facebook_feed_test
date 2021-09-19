import 'package:facebookfeed_app/facebook/postWidget.dart';
import 'package:facebookfeed_app/helper_backage/bloc/cubit.dart';
import 'package:facebookfeed_app/helper_backage/bloc/father_classes.dart';
import 'package:facebookfeed_app/modules_needed/modules.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FacebookFeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CubitClass cubit = CubitClass.get(context);
    return BlocConsumer<CubitClass, AppStates>(
      listener: (context, states) {},
      builder: (context, states) => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'facebook',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.search,
                                      color: Colors.black,
                                      size: 20,
                                    )),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.message,
                                      color: Colors.grey,
                                      size: 20,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.home,
                                  color: Colors.blue,
                                )),
                            Container(
                              color: Colors.grey,
                              height: 2,
                              width: 70,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.group_work_outlined)),
                            Container(
                              color: Colors.white,
                              height: 2,
                              width: 70,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.video_camera_back)),
                            Container(
                              color: Colors.white,
                              height: 2,
                              width: 70,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon:
                                    Icon(Icons.store_mall_directory_outlined)),
                            Container(
                              color: Colors.white,
                              height: 2,
                              width: 70,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.notifications_none_outlined)),
                            Container(
                              color: Colors.white,
                              height: 2,
                              width: 70,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              putLine(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        padding: const EdgeInsets.all(6.0),
                        color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 4,
                                right: 2,
                                top: 4,
                                bottom: 4,
                              ),
                              child: Container(
                                child: CircleAvatar(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        matchTextDirection: true,
                                        image: NetworkImage(
                                            cubit.picturesForPostsAndStories[
                                                "mine"]),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    height: double.infinity,
                                  ),
                                  radius: 20,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 40,
                                padding: const EdgeInsets.only(left: 2.0),
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  onTap: () {},
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.grey, width: 1.0),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    hintText: 'What\'s on your mind?',
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      putLine(),
                      Container(
                        height: 40,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.live_tv,
                                        color: Colors.red,
                                      )),
                                  Text('Live'),
                                ],
                              ),
                              putLine(
                                myColor: Colors.grey.withOpacity(0.5),
                                lineWidth: 0.5,
                                lineHeight: 30,
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.photo,
                                        color: Colors.green,
                                      )),
                                  Text('Photo'),
                                ],
                              ),
                              putLine(
                                myColor: Colors.grey.withOpacity(0.5),
                                lineWidth: 0.5,
                                lineHeight: 30,
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.video_call,
                                        color: Colors.deepPurple,
                                      )),
                                  Text('Room'),
                                ],
                              ),
                              SizedBox(
                                width: 3,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 230,
                        padding: EdgeInsets.all(10.0),
                        color: Colors.white,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return storyItem(
                                mapPicsBackgroundItem:
                                    cubit.picturesForPostsAndStories[
                                        "background image"][index],
                                mapPicsCircleItem:
                                    cubit.picturesForPostsAndStories["circle"]
                                        [index],
                                mapUserNameItem: cubit
                                        .picturesForPostsAndStories["user name"]
                                    [index],
                              );
                            },
                            itemCount: cubit
                                .picturesForPostsAndStories["background image"]
                                .length),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return PostWidgetScreen(
                            cubit.picturesForPostsAndStories["circle"][index],
                            cubit.picturesForPostsAndStories["user name"]
                                [index],
                            index == 1
                                ? "yesterday"
                                : index == 2
                                    ? "3 h"
                                    : index == 4
                                        ? "Just now"
                                        : "6 h",
                            TextEditingController(),
                            [],
                            index == 0
                                ? Container(
                                    height: 350,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            cubit.picturesForPostsAndStories[
                                                "background image"][index]),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  )
                                : index == 1 || index == 7
                                    ? Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                            cubit.picturesForPostsAndStories[
                                                "texts"][index]),
                                      )
                                    : index == 2
                                        ? Container(
                                            height: 350,
                                            child: ListView.separated(
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: (context, ind) {
                                                return Container(
                                                  width: 250,
                                                  padding: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: NetworkImage(cubit
                                                              .picturesForPostsAndStories[
                                                          "pic posts"][ind]),
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                );
                                              },
                                              itemCount: 5,
                                              separatorBuilder: (context, ind) {
                                                return SizedBox(
                                                  width: 5,
                                                );
                                              },
                                            ),
                                          )
                                        : Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text(cubit
                                                        .picturesForPostsAndStories[
                                                    "texts"][index]),
                                              ),
                                              Container(
                                                height: 350,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(cubit
                                                            .picturesForPostsAndStories[
                                                        "pic posts"][index]),
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                            statueText: index == 0
                                ? "Changed his profile picture"
                                : "Updated his post",
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 10,
                          );
                        },
                        itemCount: cubit
                            .picturesForPostsAndStories["pic posts"].length,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
