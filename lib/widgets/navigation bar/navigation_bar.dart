import 'package:flutter/material.dart';

class CNavigationBar extends StatelessWidget {
  const CNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0x19D9D9D9), Color(0x19D9D9D9)],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Centers the items horizontally within the container
        crossAxisAlignment: CrossAxisAlignment.center, // Aligns the items vertically to the center
        children: <Widget>[
          _NavBarItem('Home'),
          SizedBox(width: 60), // Adjusted the horizontal gap to 10
          _NavBarItem('Info'),
          SizedBox(width: 60), // Adjusted the horizontal gap to 10
          Container(
            height: 100, // Adjust the size of your logo container as needed
            width: 100, // Adjust the width of your logo container as needed
            child: Image.asset('assets/logo.png', fit: BoxFit.cover),
          ),
          SizedBox(width: 60), // Adjusted the horizontal gap to 10
          _NavBarItem('Team'),
          SizedBox(width: 60), // Adjusted the horizontal gap to 10
          _NavBarItem('Contact'),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;

  const _NavBarItem(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400), // Style your text here
    );
  }
}
