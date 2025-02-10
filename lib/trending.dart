import 'package:flutter/material.dart';

class Trending extends StatelessWidget {
  const Trending({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align title to left
      children: [
        // Title Text
        const Padding(
          padding: EdgeInsets.only(
            left: 25,
            top: 20,
            bottom: 20,
          ),
          child: Text(
            "TRENDING THIS WEEK",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: 'Taviraj',
            ),
          ),
        ),

        // Scrollable Row with Images and Text
        SingleChildScrollView(
          scrollDirection: Axis.horizontal, // Enables horizontal scrolling
          child: Row(
            children: [
              const SizedBox(width: 16), // Padding at start
              buildImageWithText(
                'https://medias.utsavfashion.com/media/catalog/product/cache/1/small_image/295x/040ec09b1e35df139433887a97daa66f/e/m/embroidered-organza-pakistani-suit-in-sky-blue-v1-kry1711.jpg',
                "Embroidered Georgette Pakistani Suit in Mustard",
                "₹ 5,000.00",
                "₹ 3,750.00",
                180,
                250,
              ),
              const SizedBox(width: 10),
              buildImageWithText(
                 'https://medias.utsavfashion.com/media/catalog/product/cache/1/small_image/295x/040ec09b1e35df139433887a97daa66f/e/m/embroidered-art-silk-kurta-set-in-black-v1-mxx1034.jpg',
                "Woven Art Silk Jacquard Kurta Set in Navy Blue",
                "₹ 5,000.00",
                "₹ 3,750.00",
                180,
                250,
              ),
              const SizedBox(width: 10),
              buildImageWithText(
                'https://medias.utsavfashion.com/media/catalog/product/cache/1/small_image/295x/040ec09b1e35df139433887a97daa66f/b/a/bandhej-printed-georgette-pakistani-suit-in-red-v1-kch14038.jpg',
                "Designer Lehenga in Royal Blue",
                "₹ 7,000.00",
                "₹ 5,250.00",
                180,
                250,
              ),
              const SizedBox(width: 10),
              buildImageWithText(
                'https://medias.utsavfashion.com/media/catalog/product/cache/1/small_image/295x/040ec09b1e35df139433887a97daa66f/w/o/woven-linen-cotton-saree-in-green-v1-spta14763.jpg',
                "Embroidered Anarkali Gown in Peach",
                "₹ 6,500.00",
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
              image: NetworkImage(imagePath),
             // fit: BoxFit.cover,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                oldPrice,

                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              const SizedBox(width: 5),
              Text(
                newPrice,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
