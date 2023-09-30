import 'package:flutter/material.dart';
import 'package:mod8_assignment/image_paths.dart';

class ImageGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // image grid code
    return _buildImageRows();
  }

  Widget _buildImageRows() {
    List<String> imagePaths = ImagePaths.paths;

    const int picturesPerRow = 3;

    int numberOfRows = (imagePaths.length / picturesPerRow).ceil();

    List<Widget> rows = [];

    for (int i = 0; i < numberOfRows; i++) {
      int startIndex = i * picturesPerRow;
      int endIndex = (i + 1) * picturesPerRow;

      if (endIndex > imagePaths.length) {
        endIndex = imagePaths.length;
      }

      List<String> rowImages = imagePaths.sublist(startIndex, endIndex);

      rows.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:
              rowImages.map((imagePath) => _buildImageCard(imagePath)).toList(),
        ),
      );

      if (i < numberOfRows - 1) {
        rows.add(SizedBox(height: 8));
      }
    }

    return Column(children: rows);
  }

  Widget _buildImageCard(String imagePath) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          imagePath,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
