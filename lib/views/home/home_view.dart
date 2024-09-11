import 'package:flutter/material.dart';
import 'package:the_basics/widgets/earth/earth.dart';
import 'package:the_basics/widgets/explore_cosmos/explore_cosmos.dart';
import 'package:the_basics/widgets/navigation bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: CNavigationBar(),
            ),
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 48),
                    child: ExploreCosmos(),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 100,  // Adjust horizontal position
              bottom: 100,  // Adjust vertical position
              child: ClipOval(
                child: Container(
                  width: 800,  // Increase the size to fill more space
                  height: 800,
                  child: Earth(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
