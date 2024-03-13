import 'package:flutter/material.dart';
import 'package:web_query_params/page/home_page.dart';
import 'package:web_query_params/page/profile_page.dart';

sealed class Routes {
  static Map<String, WidgetBuilder> route = {
    '/': (context) => const HomePage(),
    '/profile': (context) => const ProfilePage(),
  };
}
