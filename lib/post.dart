import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  int? selectedIndex; // To track which image is clicked

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 8),
        const Text(
          "#MYFASHIONUTSAV",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Source Sans Pro',
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6), // Space between hashtag and paragraph
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Show us how you celebrate with Utsav and get featured.\n"
                "We are celebrating your love for Indian Fashion."
                "Follow us & get a ₹500 Off Coupon."
                "To claim, message us on Instagram!",
            style: TextStyle(
              fontSize: 13,
              color: Color.fromRGBO(109, 109, 109, 1),
              fontWeight: FontWeight.w400,
              fontFamily: 'Source Sans Pro',
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 20), // Space between text and images

        // Image List
        SizedBox(
          height: 250, // Adjusted height for images
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              bool isSelected = selectedIndex == index;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = isSelected ? null : index; // Toggle selection
                  });
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 200, // Adjusted width
                      height: 250, // Adjusted height
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/post_${index + 1}.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: 200,
                      height: 250,
                      decoration: BoxDecoration(
                        color: isSelected
                            ? Colors.black.withOpacity(0.5)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    if (isSelected)
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/img_1.png', // Custom icon
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Shop Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Source Sans Pro',
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
