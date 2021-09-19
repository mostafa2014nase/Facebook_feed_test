import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'father_classes.dart';

class CubitClass extends Cubit<AppStates> {
  CubitClass() : super(AppInitialStates());

  static CubitClass get(context) => BlocProvider.of(context);

// for comments screen
  TextEditingController commentTyped = TextEditingController();
  bool isThereComment = false;
  List listCommentsSaved = [];

  void checkIfThereComment() {
    if (commentTyped.text.isEmpty) {
      emit(NoCommentState());
    } else {
      isThereComment = true;
      listCommentsSaved.add(commentTyped.text);
      commentTyped.text = "";
      emit(ThereIsCommentState());
    }
  }

  // Map for stories and posts
  Map<String, dynamic> picturesForPostsAndStories = {
    "mine":
        "https://scontent.fcai20-2.fna.fbcdn.net/v/t1.6435-9/122684248_3741181135894521_8917712122024714426_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=zTqZ0GuxZkQAX8ew2Zg&_nc_ht=scontent.fcai20-2.fna&oh=43c01f7300a60d5d804aa42f1baf41c3&oe=6165EACF",
    "user name": [
      "Ahmed Elbalky",
      "Mohamed Nasr",
      "Mahmoud Nasr",
      "Mahmoud Afify",
      "Mohamed Emad",
      "Ali Hesham",
      "Wael Hamdi",
      "Drooosh",
      "Walid",
    ],
    "circle": [
      "https://scontent.fcai20-2.fna.fbcdn.net/v/t1.6435-9/241733432_1269184080196750_5794652351611317095_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=1Mqoj7fnoxsAX9yghSY&_nc_ht=scontent.fcai20-2.fna&oh=938a4ab1f099c45ceb648a05e3f2585c&oe=61646375",
      "https://scontent.fcai20-1.fna.fbcdn.net/v/t1.6435-9/241765254_2977338175876727_5419644594658344431_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=730e14&_nc_ohc=jGRLk_GsDJkAX_gOJbM&_nc_ht=scontent.fcai20-1.fna&oh=95bd249e774a2e6f42de1bb4ce5f43a6&oe=6162AB74",
      "https://scontent.fcai20-2.fna.fbcdn.net/v/t1.6435-9/162862469_10225025744568795_8117782664890049602_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=3qn5zWF59X4AX_EuJs7&tn=5tu4L_VAHRsdgTzS&_nc_ht=scontent.fcai20-2.fna&oh=cdce27b8f2efed1dc2dc14a5813f78b9&oe=6163D3A1",
      "https://scontent.fcai20-2.fna.fbcdn.net/v/t1.6435-9/67389578_10156556823541814_3378839669272739840_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=RYHtgAW_j1sAX9x2tfx&_nc_ht=scontent.fcai20-2.fna&oh=2fb706406217083aace3cbe0ed52f868&oe=6163E2CE",
      "https://scontent.fcai20-2.fna.fbcdn.net/v/t39.30808-6/237977120_6361287627215480_3975756975446752137_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=VBNo5dIVqQ0AX8gafKX&_nc_oc=AQkft1SVCaJJSg-626grs-86xRLvfwtL4EuoTcCyICs3SwanVfgSWFeLwA1spXGRfoY&tn=5tu4L_VAHRsdgTzS&_nc_ht=scontent.fcai20-2.fna&oh=4ff487d23588f745a4ccbf4008f66b0e&oe=6142A738",
      "https://scontent.fcai20-2.fna.fbcdn.net/v/t1.6435-1/p200x200/117645678_3145053145573132_2133082969402434725_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=7206a8&_nc_ohc=zGYfhFa4ypAAX_NCAV5&_nc_ht=scontent.fcai20-2.fna&oh=132ee11063fce4a13938beb76d53e400&oe=6164F58D",
      "https://scontent.fcai20-2.fna.fbcdn.net/v/t1.6435-9/211039325_1679686858886391_7180696185168322898_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=BbP-Z-qNEEgAX9HrRkS&_nc_ht=scontent.fcai20-2.fna&oh=e81f1d4e4071f66a9254b0a8a2585e55&oe=616338E8",
      "https://scontent.fcai20-2.fna.fbcdn.net/v/t39.30808-6/241118261_4204365302974493_3732407679446573346_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=nml6YiMHzrIAX9-mccX&tn=5tu4L_VAHRsdgTzS&_nc_ht=scontent.fcai20-2.fna&oh=867eb3d187d8a271bf523818a02071e8&oe=6142924D",
      "https://scontent.fcai20-1.fna.fbcdn.net/v/t1.6435-9/68838648_10156932561875892_8809538224054599680_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=Xe7OIZifsG8AX_0ybCz&tn=5tu4L_VAHRsdgTzS&_nc_ht=scontent.fcai20-1.fna&oh=b5eda822dc442c94820572448b57e45c&oe=61637C0A",
    ],
    "background image":[
      "https://scontent.fcai20-2.fna.fbcdn.net/v/t1.6435-9/241733432_1269184080196750_5794652351611317095_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=1Mqoj7fnoxsAX9yghSY&_nc_ht=scontent.fcai20-2.fna&oh=938a4ab1f099c45ceb648a05e3f2585c&oe=61646375",
      "https://scontent.fcai20-1.fna.fbcdn.net/v/t1.6435-9/241765254_2977338175876727_5419644594658344431_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=730e14&_nc_ohc=jGRLk_GsDJkAX_gOJbM&_nc_ht=scontent.fcai20-1.fna&oh=95bd249e774a2e6f42de1bb4ce5f43a6&oe=6162AB74",
      "https://scontent.fcai20-2.fna.fbcdn.net/v/t1.6435-9/162862469_10225025744568795_8117782664890049602_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=3qn5zWF59X4AX_EuJs7&tn=5tu4L_VAHRsdgTzS&_nc_ht=scontent.fcai20-2.fna&oh=cdce27b8f2efed1dc2dc14a5813f78b9&oe=6163D3A1",
      "https://scontent.fcai20-2.fna.fbcdn.net/v/t1.6435-9/67389578_10156556823541814_3378839669272739840_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=RYHtgAW_j1sAX9x2tfx&_nc_ht=scontent.fcai20-2.fna&oh=2fb706406217083aace3cbe0ed52f868&oe=6163E2CE",
      "https://scontent.fcai20-2.fna.fbcdn.net/v/t39.30808-6/237977120_6361287627215480_3975756975446752137_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=VBNo5dIVqQ0AX8gafKX&_nc_oc=AQkft1SVCaJJSg-626grs-86xRLvfwtL4EuoTcCyICs3SwanVfgSWFeLwA1spXGRfoY&tn=5tu4L_VAHRsdgTzS&_nc_ht=scontent.fcai20-2.fna&oh=4ff487d23588f745a4ccbf4008f66b0e&oe=6142A738",
      "https://scontent.fcai20-2.fna.fbcdn.net/v/t1.6435-1/p200x200/117645678_3145053145573132_2133082969402434725_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=7206a8&_nc_ohc=zGYfhFa4ypAAX_NCAV5&_nc_ht=scontent.fcai20-2.fna&oh=132ee11063fce4a13938beb76d53e400&oe=6164F58D",
      "https://scontent.fcai20-2.fna.fbcdn.net/v/t1.6435-9/211039325_1679686858886391_7180696185168322898_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=BbP-Z-qNEEgAX9HrRkS&_nc_ht=scontent.fcai20-2.fna&oh=e81f1d4e4071f66a9254b0a8a2585e55&oe=616338E8",
      "https://scontent.fcai20-2.fna.fbcdn.net/v/t39.30808-6/241118261_4204365302974493_3732407679446573346_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=nml6YiMHzrIAX9-mccX&tn=5tu4L_VAHRsdgTzS&_nc_ht=scontent.fcai20-2.fna&oh=867eb3d187d8a271bf523818a02071e8&oe=6142924D",
      "https://scontent.fcai20-1.fna.fbcdn.net/v/t1.6435-9/68838648_10156932561875892_8809538224054599680_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=Xe7OIZifsG8AX_0ybCz&tn=5tu4L_VAHRsdgTzS&_nc_ht=scontent.fcai20-1.fna&oh=b5eda822dc442c94820572448b57e45c&oe=61637C0A",
    ],
    "pic posts": [
      "https://scontent.fcai20-1.fna.fbcdn.net/v/t1.6435-9/43712398_10156267614830892_3501233640069660672_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=e3f864&_nc_ohc=JfrMFch2EQkAX9wzHj6&_nc_ht=scontent.fcai20-1.fna&oh=e2d52d244a86050a599af21d6ed7ca00&oe=61659134",
      "https://scontent.fcai20-1.fna.fbcdn.net/v/t1.6435-9/241765254_2977338175876727_5419644594658344431_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=730e14&_nc_ohc=jGRLk_GsDJkAX_gOJbM&_nc_ht=scontent.fcai20-1.fna&oh=95bd249e774a2e6f42de1bb4ce5f43a6&oe=6162AB74",
      "https://scontent.fcai20-2.fna.fbcdn.net/v/t1.18169-9/12871485_1086597641398333_8455401699418907209_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=e3f864&_nc_ohc=JAsTvqix3moAX_MPrU1&_nc_ht=scontent.fcai20-2.fna&oh=e7c9e48799b8656a7c4b36bd8bf9930d&oe=61650289",
      "https://scontent.fcai20-2.fna.fbcdn.net/v/t1.6435-9/241808542_221523916610307_556243437108489879_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=Tj2_bNm9BIwAX8E5NmA&_nc_ht=scontent.fcai20-2.fna&oh=3e3337d034ce27c5c85a16105815bcdc&oe=616432D6",
      "https://scontent.fcai20-1.fna.fbcdn.net/v/t1.6435-9/241799505_5014353111958111_7954505713653986020_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_ohc=Dh1XWfZVbA4AX-c-Nkz&_nc_ht=scontent.fcai20-1.fna&oh=b06a209483b373c6cb2cafc955b7474f&oe=6164B267",
      "https://scontent.fcai20-1.fna.fbcdn.net/v/t1.6435-9/241641381_5014353198624769_4345151758180825809_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=730e14&_nc_ohc=XQlUbMkSSKEAX_uI5pe&_nc_oc=AQkmBED1MbDMhTURyBAbTm_0j2o-dQb2Ttu9aUEYugJVA31sl4MnQNcAAhmULtOXsNc&_nc_ht=scontent.fcai20-1.fna&oh=190cdce9519d72eb18c3dc05f9d0e5fa&oe=6164FD0A",
      "https://scontent.fcai20-1.fna.fbcdn.net/v/t1.6435-9/43712398_10156267614830892_3501233640069660672_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=e3f864&_nc_ohc=JfrMFch2EQkAX9wzHj6&_nc_ht=scontent.fcai20-1.fna&oh=e2d52d244a86050a599af21d6ed7ca00&oe=61659134",
      "https://scontent.fcai20-1.fna.fbcdn.net/v/t1.6435-9/43712398_10156267614830892_3501233640069660672_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=e3f864&_nc_ohc=JfrMFch2EQkAX9wzHj6&_nc_ht=scontent.fcai20-1.fna&oh=e2d52d244a86050a599af21d6ed7ca00&oe=61659134",
      "https://scontent.fcai20-1.fna.fbcdn.net/v/t1.6435-9/43712398_10156267614830892_3501233640069660672_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=e3f864&_nc_ohc=JfrMFch2EQkAX9wzHj6&_nc_ht=scontent.fcai20-1.fna&oh=e2d52d244a86050a599af21d6ed7ca00&oe=61659134",
    ],
    "texts":[
      "Iam excited to have a new chance to play a valuable role in development environment",
      "Iam excited to have a new chance to play a valuable role in development environment",
      "Iam excited to have a new chance to play a valuable role in development environment",
      "Iam excited to have a new chance to play a valuable role in development environment",
      "Iam excited to have a new chance to play a valuable role in development environment",
      "Iam excited to have a new chance to play a valuable role in development environment",
      "Iam excited to have a new chance to play a valuable role in development environment",
      "Iam excited to have a new chance to play a valuable role in development environment",
      "Iam excited to have a new chance to play a valuable role in development environment",
    ]
  };

  // for like chech in facebook screen
  bool isLikePressed = false;

  void likeClicked() {
    isLikePressed = !isLikePressed;
    emit(LikeButtonIsPressed());
  }
}
