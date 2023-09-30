import 'package:flutter/material.dart';
import 'package:mod8_assignment/image_grid.dart';
import 'package:mod8_assignment/profile_image.dart';

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? _buildPortraitContent()
              : _buildLandscapeContent();
        },
      ),
    );
  }

  Widget _buildPortraitContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 16),
          ProfileImage(),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Hasan Al-Banna',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Passionate software developer with a love for creating innovative solutions. Enthusiastic about learning new technologies and building applications that make a positive impact. Currently exploring the world of Flutter and mobile development.',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                //SizedBox(height: 16),
                Divider(),
                ImageGrid(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLandscapeContent() {
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: ProfileImage(),
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Hasan Al-Banna',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Passionate software developer with a love for creating innovative solutions. Enthusiastic about learning new technologies and building applications that make a positive impact. Currently exploring the world of Flutter and mobile development.',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  //SizedBox(height: 4),
                  Divider(),
                  ImageGrid(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
