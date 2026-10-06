import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Lab',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Lab Example'),
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.star, color: Colors.blue),
                Icon(Icons.favorite, color: Colors.red),
                Icon(Icons.beach_access, color: Colors.green),
              ],
            ),

            const SizedBox(height: 20),

            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: const [
                Chip(label: Text('Flutter')),
                Chip(label: Text('Dart')),
                Chip(label: Text('Mobile App')),
              ],
            ),

            const SizedBox(height: 20),

            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Icon(
                    Icons.play_circle_fill,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Text('Welcome to Flutter!'),
            Text('Building a layout!'),
          ],
        ),
      ),
    );
  }
}