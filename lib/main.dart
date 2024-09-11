import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:the_basics/views/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: kIsWeb ? 'Flutter Web Demo' : 'Flutter Mobile Demo',  // Different titles for web and mobile
      theme: ThemeData(
        
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Montserrat',
        ),
        // Add platform-specific customizations here if needed
        brightness: kIsWeb ? Brightness.light : Brightness.dark, // Example: Different brightness for web vs mobile
      ),
      home: const HomeView(),
    );
  }
}
