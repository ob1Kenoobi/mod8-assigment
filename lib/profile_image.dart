import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Your profile image code
    return CircleAvatar(
      radius: 200,
      backgroundImage: AssetImage('assets/images/profile.jpg'),
    );
  }
}
