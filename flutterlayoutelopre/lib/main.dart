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
            home: Scaffold(
                appBar: AppBar(
                    title: const Text('Flutter Layout Lab Example'),
                ),
                body: const Column(
                    children: const <Widget>[
                        Row(
                            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                                Icon(Icons.star, color: Colors.blue),
                                Icon(Icons.favorite, color: Colors.red),
                                Icon(Icons.beach_access, color: Colors.green),
                            ],
                            ),
                        Text('Welcome to Flutter!'),
                        Text('Building a layout!'),
                    ],
                )
            ),
        );
    }
}