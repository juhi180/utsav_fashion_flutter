import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Text(
          "CUSTOMER REVIEWS",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 180, // Adjust height as needed
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(5, (index) => _buildReviewCard(index)),
          ),
        ),
        const SizedBox(height: 8),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[700],
            ),
            children: [
              TextSpan(
                text: "Rated ",
              ),
              TextSpan(
                text: "4.4",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: "/5 based on ",
              ),
              TextSpan(
                text: "2,336 reviews",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text: ". Showing our 4 & 5 star reviews.",
              ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 18,
            ),
            SizedBox(width: 4),
            Text(
              "Trustpilot",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildReviewCard(int index) {
    List<Map<String, String>> reviews = [
      {
        "title": "Great Quality!",
        "review": "Loved the fabric and the fitting was perfect! Highly recommend.",
        "author": "Emma R. · 2 days ago",
      },
      {
        "title": "Fast Delivery!",
        "review": "Got my order within two days, amazing service!",
        "author": "James L. · 5 days ago",
      },
      {
        "title": "Stylish & Affordable",
        "review": "Trendy outfits at great prices. Will shop again!",
        "author": "Sophia M. · 1 week ago",
      },
      {
        "title": "Super Comfortable",
        "review": "The best casual wear I've bought in a long time.",
        "author": "David P. · 3 days ago",
      },
      {
        "title": "Amazing Variety!",
        "review": "So many options to choose from, loved the collection!",
        "author": "Olivia H. · 6 days ago",
      },
    ];

    return Container(
      width: 250,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: List.generate(
              5,
                  (starIndex) => Icon(
                Icons.star,
                color: starIndex < 4 ? Colors.amber : Colors.grey,
                size: 18,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            reviews[index]["title"]!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            reviews[index]["review"]!,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const Spacer(),
          Text(
            reviews[index]["author"]!,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
