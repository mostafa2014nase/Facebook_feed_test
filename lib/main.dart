import 'package:facebookfeed_app/facebook/facebookWebScreen.dart';
import 'package:facebookfeed_app/facebook/facebookWebTwo.dart';
import 'package:facebookfeed_app/facebook/facebook_screen.dart';
import 'package:facebookfeed_app/helper_backage/bloc/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'helper_backage/bloc/father_classes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CubitClass(),
        child: BlocConsumer<CubitClass, AppStates>(
            listener: (context, state) {},
            builder: (context, state) => MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Flutter Demo',
                  theme: ThemeData(
                    applyElevationOverlayColor: false,
                    appBarTheme: AppBarTheme(backgroundColor: Colors.white),
                    iconTheme: IconThemeData(
                      color: Colors.grey,
                    ),
                    scaffoldBackgroundColor: Colors.white70,
                    backgroundColor: Colors.white,
                    primarySwatch: Colors.blue,
                  ),
                  routes: {
                    "/": (context) => LayoutBuilder(
                          builder: (context, constrains) {
                            print(constrains.minWidth.toInt());
                            if(constrains.minWidth.toInt()<=600){
                            return FacebookFeedMobileScreen();}
                            if (constrains.minWidth.toInt()>600 &&constrains.minWidth.toInt()<=720){
                            return FacebookFeedWebTwoScreen();}
                            return FacebookFeedWebOneScreen();
                          },
                        ),
                  },
                )));
  }
}
