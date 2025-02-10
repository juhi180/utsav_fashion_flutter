import 'dart:async';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Offer extends StatefulWidget {
  const Offer({super.key});

  @override
  _OfferState createState() => _OfferState();
}

class _OfferState extends State<Offer> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (_currentPage < 3) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 350, // Image height
          width: double.infinity,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              // Image Slider
              PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  Image.asset('assets/images/img.png', fit: BoxFit.cover),
                  Image.asset('assets/images/img.png', fit: BoxFit.cover),
                  Image.asset('assets/images/img.png', fit: BoxFit.cover),
                  Image.asset('assets/images/img.png', fit: BoxFit.cover),
                ],
              ),
              // Overlay Buttons (Now Elevated)
              Positioned(
                bottom: 20,
                left: 10,
                right: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildElevatedButton('New'),
                    _buildElevatedButton('Bestsellers'),
                    _buildElevatedButton('Ready to Ship'),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10), // Space between image and dots

        // Dots Indicator
        SmoothPageIndicator(
          controller: _pageController,
          count: 4,
          effect: const ScrollingDotsEffect(
            dotWidth: 8,
            dotHeight: 8,
            activeDotColor: Color.fromRGBO(255, 76, 81, 1),
            dotColor: Color.fromRGBO(156, 156, 156, 1),
          ),
        ),

        const SizedBox(height: 10), // Space before bottom image

        // Bottom Image
        Image.asset(
          'assets/images/img_4.png',
          width: 350, // Adjust size as needed
          height: 50,
          fit: BoxFit.contain,
        ),
        SizedBox(height: 10,)
      ],
    );
  }

  // Elevated Button Widget
  Widget _buildElevatedButton(String text) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white, // Button color
        elevation: 5, // Shadow effect
        padding: const EdgeInsets.only(
          left: 5,
          right:5,

        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5), // Rounded edges
        ),
      ),
      onPressed: () {
        // Add functionality if needed
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 13),
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontFamily: 'Source Sans Pro',
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
