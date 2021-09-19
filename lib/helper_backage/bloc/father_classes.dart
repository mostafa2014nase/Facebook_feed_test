import 'package:flutter/material.dart';
abstract class AppStates {}
class AppInitialStates extends AppStates{}
class NoCommentState extends AppStates{}
class ThereIsCommentState extends AppStates{}
class LikeButtonIsPressed extends AppStates {}