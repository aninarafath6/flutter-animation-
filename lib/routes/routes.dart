import 'package:flutter/cupertino.dart';
import 'package:flutter_animation/apps/tween_animation_example/main.dart';
import 'package:flutter_animation/initial_page.dart';

class Routes {
  static final Map<String, WidgetBuilder> routes = {
    '/tween_animation': (context) => TweenAnimationPage(),
    '/home': (context) => InitialPage(),
  };
}
