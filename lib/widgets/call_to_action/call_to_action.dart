import 'package:flutter/material.dart';

class CallToAction extends StatelessWidget {
  final String title;
  CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20), // Add some margin to give space around
      width: double.infinity, // Makes the button full width, adjust if necessary
      alignment: Alignment.center, // Aligns the inner text or content to center
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 31, 229, 146), // Background color
          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15), // Padding inside the button
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5), // Rounded corners
          ),
        ),
        onPressed: () {
          // Define what happens when the button is tapped
          print('Button tapped!');
        },
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
