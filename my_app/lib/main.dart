import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Valary App',
      home: Scaffold(
        backgroundColor: Color(0xFFADD8E6),  // Light blue color for background
        appBar: AppBar(
          title: const Text('App Created by Valary'), // Title bar with app name
          backgroundColor: Color(0xFF8B5B8B), // Dark maroon color for app bar (optional)
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Welcome to This App Created by Me: Valary!',
                style: TextStyle(fontSize: 24), // Welcome message
              ),
              const SizedBox(height: 20), // Spacing between Text and Button
              ElevatedButton(
                onPressed: () {
                  // Print message to console when the button is clicked
                  print('ElevatedButton clicked!');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF8B5B8B), // Dark maroon color for the button
                  foregroundColor: Colors.black, // Set the text color to black
                ),
                child: const Text('Click Me'), // Button text
              ),
              const SizedBox(height: 20), // Spacing between Button and Image
              Image.network(
                'https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_640.jpg', // Flower image from Pixabay
                height: 450, // Increased height to 450
                width: 450, // Increased width to 450
              ),
            ],
          ),
        ),
      ),
    );
  }
}