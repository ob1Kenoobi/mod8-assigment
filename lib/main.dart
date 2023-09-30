import 'package:flutter/material.dart';
import 'package:mod8_assignment/user_profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserProfilePage(),
    );
  }
}
