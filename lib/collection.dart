import 'package:flutter/material.dart';

class Collection extends StatelessWidget {
  const Collection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 20, top: 20), // Left padding added
          child: Container(
            alignment: Alignment.centerLeft, // Aligns text to the left
            child: Text(
              "READY-TO-SHIP COLLECTION",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: 'Taviraj',
              ),
            ),
          ),
        ),

        Container(
          padding: const EdgeInsets.only(top: 1),
          child: Image.asset(
            'assets/images/img_9.png',
            height: 400,
            width: 400,
            fit: BoxFit.cover, // Ensure image fits properly
          ),
        ),


      ],
    );
  }
}
