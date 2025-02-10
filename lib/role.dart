import 'package:flutter/material.dart';

class Role extends StatelessWidget {
  const Role({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; // Get screen width
    double imageWidth = screenWidth / 2;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 13, left: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "SHOP BY ROLE",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: 'Taviraj',
              ),
            ),
          ),
        ),
        Column(
          children: [
            Row(
              children: [
                buildImageWithButton('https://medias.utsavfashion.com/media/wysiwyg/home/2024/2612/bride.jpg', "BRIDE", imageWidth),
                buildImageWithButton('https://medias.utsavfashion.com/media/wysiwyg/home/2024/2612/brides-mom.jpg', "BRIDE'S MOM", imageWidth),
              ],
            ),
            Row(
              children: [
                buildImageWithButton('https://medias.utsavfashion.com/media/wysiwyg/home/2024/2612/bridesmaids.jpg', "BRIDE'S MAID", imageWidth),
                buildImageWithButton('https://medias.utsavfashion.com/media/wysiwyg/home/2024/2612/groom.jpg', "GROOM", imageWidth),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget buildImageWithButton(String imagePath, String buttonText, double width) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: width, // Each image takes half the screen width
          height: 300, // Adjust height as needed
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imagePath),
              fit: BoxFit.cover, // Ensures image fills the container
            ),
          ),
        ),
        Positioned(
          bottom: 30, // ✅ Move the button up (was 25 before)
          child: SizedBox(
            width: 150,
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Button background color
                foregroundColor: Colors.black, // ✅ Sets text color to black
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Source Sans Pro',
                ),
              ),
              child: Text(buttonText),
            ),

          ),
        ),
      ],
    );
  }
}
