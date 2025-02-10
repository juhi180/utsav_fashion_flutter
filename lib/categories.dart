import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // Scrollable Category List
        SizedBox(
          height: 110, // Height for the category images and text
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            children: [
              buildCategoryItem('assets/images/saree.png', "Saree"),
              buildCategoryItem('assets/images/lehenga.png', "Lehenga"),
              buildCategoryItem('assets/images/men.png', "Men"),
              buildCategoryItem('assets/images/jewellery.png', "Jewellery"),
              buildCategoryItem('assets/images/kids.png', "Kids"),
              buildCategoryItem('assets/images/indoor.png', "Indoor"),
              buildCategoryItem('assets/images/sports.png', "Sports"),
              buildCategoryItem('assets/images/shoes.png', "Shoes"),
            ],
          ),
        ),
      ],
    );
  }

  // Helper function for category items
  Widget buildCategoryItem(String imagePath, String text) {
    return Column(
      children: [
        // Rounded Image
        Container(
          width: 60,
          height: 60,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 76, 181, 0.1),
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(imagePath),            ),
          ),
        ),
        const SizedBox(height: 5),

        // Category Text
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: 'Source Sans Pro',
          ),
        ),
      ],
    );
  }
}
