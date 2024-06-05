import 'package:flutter/material.dart';

class Workshop {
  final String title;
  final String description;
  final String imageUrl;

  Workshop({required this.title, required this.description, required this.imageUrl});
}

class WorkshopsPage extends StatelessWidget {
  final List<Workshop> workshops = [
    Workshop(
      // nail polish workshop
      title: 'Nail polish workshop',
      description: 'This workshop will teach you how to apply nail polish.',
      imageUrl: 'assets/workshop1.png',
    ),
    Workshop(title: "Volunteering center", 
    description: "Spend your free time volunteering at the center.",
     imageUrl: "assets/volunteering.png"),
    Workshop(
      // Welding workshop
      title: 'Welding workshop',
      description: 'This workshop will teach you how to weld metal.',
      imageUrl: 'assets/workshop2.png',
    ),
    Workshop(
      // programming workshop
      title: 'Programming workshop',
      description: 'This workshop will teach you how to write code.',
      imageUrl: 'assets/workshop3.png',
    ),
    Workshop(
      // Entrepreneurship workshop
      title: 'Entrepreneurship workshop',
      description: 'This workshop will teach you how to start a business.',
      imageUrl: 'assets/workshop4.png',
    ),
    Workshop(
      // cooking volentiring
      title: 'Cooking workshop',
      description: 'This workshop will teach you how to cook.',
      imageUrl: 'assets/workshop5.png',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    print("WorkshopsPage build");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Workshops at School',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: workshops.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(height: 16),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  workshops[index].imageUrl,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              Text(
                workshops[index].title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                workshops[index].description,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 16),
            ],
          );
        },
      ),
    );
  }
}