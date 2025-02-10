import 'package:flutter/material.dart';

class Bestseller extends StatelessWidget {
  const Bestseller({super.key});

  @override
  Widget build(BuildContext context) {
     return Container(
       padding: const EdgeInsets.only(top: 10,bottom: 10),
       child: Image.asset(
         'assets/images/img_14.png',
         height: 250,
         width: 300,
         fit: BoxFit.cover, // Ensure image fits properly
       ),
     );
  }
}
