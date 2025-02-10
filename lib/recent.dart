import 'package:flutter/material.dart';

class Recent extends StatelessWidget {
  const Recent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align title to left
      children: [
        // Title Text
        const Padding(
          padding: EdgeInsets.only(
            top: 20,
            bottom: 20,
            left: 25,
          ),
          child: Text(
            "RECENTLY VIEWED",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: 'Taviraj',
            ),
          ),
        ),

        // Scrollable Row with Images and Text
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 16),
              buildImageWithText(
                'assets/images/trending_pic1.png',
                "Embroidered Georgette Pakistani Suit in Mustard",
                "\n",
                "₹ 3,750.00",
                180,
                250,
              ),
              const SizedBox(width: 10),
              buildImageWithText(
                'assets/images/trending_pic2.png',
                "Woven Art Silk Jacquard Kurta Set in Navy Blue",
                "5,000.00",
                "₹ 3,750.00",
                180,
                250,
              ),
              const SizedBox(width: 10),
              buildImageWithText(
                'assets/images/trending_pic3.png',
                "Designer Lehenga in Royal Blue",
                "7,000.00",
                "₹ 5,250.00",
                180,
                250,
              ),
              const SizedBox(width: 10),
              buildImageWithText(
                'assets/images/trending_pic1.png',
                "Embroidered Anarkali Gown in Peach",
                "6,500.00",
                "₹ 4,875.00",
                180,
                250,
              ),
              const SizedBox(width: 16), // Padding at end
            ],
          ),
        ),
      ],
    );
  }

  // Helper function to create an image with text below it
  Widget buildImageWithText(
      String imagePath, String title, String oldPrice, String newPrice, double width, double height) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            image: DecorationImage(
              image: AssetImage(imagePath),
               fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 5),
        SizedBox(
          width: width,
          child: Text(
            title,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 2),
        SizedBox(
          width: width,
          child :Column(
            children: [
              const SizedBox(height: 14), // Placeholder for the first text (same space)
              Align(
                alignment: Alignment.centerLeft, // Aligns text to center
                child: Text(
                  newPrice,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),

        ),
      ],
    );
  }
}
