import 'package:flutter/material.dart';

class Gem extends StatelessWidget {
  const Gem({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double imageWidth = screenWidth / 2; // Adjusted for spacing

    return Column(
      children: [
        // Title
        Padding(
          padding: const EdgeInsets.only(bottom: 15, left: 25,top: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "HIDDEN GEMS",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: 'Taviraj',
              ),
            ),
          ),
        ),

        // Grid Layout
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildImageWithText("assets/images/gem_1.png", imageWidth),
                buildImageWithText("assets/images/gem_2.png", imageWidth),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildImageWithText("assets/images/gem_3.png",  imageWidth),
                buildImageWithText("assets/images/gem_4.png",  imageWidth),
              ],
            ),
          ],
        ),
        const SizedBox(height: 15),
        Image.asset('assets/images/line.png',
        height: 20,
        width: 350,),
      ],
    );
  }

  // Helper function to create an image with text
  Widget buildImageWithText(String imagePath,  double width) {
    return Column(
      children: [
        Container(
          width: 180, // Now using the width parameter
          height: 250, // Making it square

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            image: DecorationImage(
              image: AssetImage(imagePath),

            ),
          ),
        ),
        const SizedBox(height: 5),

      ],
    );
  }
}
