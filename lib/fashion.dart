import 'package:flutter/material.dart';

class Fashion extends StatelessWidget {
  const Fashion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title Text
        const Padding(
          padding: EdgeInsets.only(
            left: 25,
            top: 20,
            bottom: 20,
          ),
          child: Text(
            "FASHION STORIES",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: 'Taviraj',
            ),
          ),
        ),

        // Scrollable Row with Images
        SizedBox(
          height: 300, // Ensure height fits images
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            children: [
              buildImage('https://medias.utsavfashion.com/media/wysiwyg/home/2025/0602/eid-collection-2025.gif'),
              buildImage('https://medias.utsavfashion.com/media/wysiwyg/home/2025/0602/ramadan-ready.jpg'),
              buildImage('https://medias.utsavfashion.com/media/wysiwyg/home/2025/0602/modernity-every-stitch.jpg'),

            ],
          ),
        ),
      ],
    );
  }

  // Helper function to create an image container
  Widget buildImage(String imagePath) {
    return Container(
      width: 250, // Adjusted for partial visibility
      height: 300,
      margin: const EdgeInsets.only(right: 10), // Space between images
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0), // Rounded corners
        image: DecorationImage(
          image: NetworkImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
