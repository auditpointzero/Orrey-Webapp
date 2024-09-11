import 'package:flutter/material.dart';


class ExploreCosmos extends StatelessWidget {
  const ExploreCosmos({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 300, right: 500),
      child: Container(
        width: 600,
        child: Column(  
          crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(
                 fontSize: 50,
                 fontWeight: FontWeight.w800,
                 height: 1.5,
                 fontFamily: 'Montserrat',
                 color: Colors.white,
                ),
                children: <TextSpan>[
                  TextSpan(text: 'Explore The Cosmos\n'),
                  TextSpan(
                    text: 'With our ', style: TextStyle(color: Colors.white),
                  ),
                  TextSpan(
                    text: 'Orrey Web', style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
              Text('Visualize near-Earth objects and learn about their paths with our interactive orrery and  track real-time data on them, explore their routes, and understand the  mechanics that govern their movements.',
              style: TextStyle(fontSize: 21, height: 1.7, color: Colors.white),),
          SizedBox(height: 20),
          OverflowBar(
            spacing: 10,
            alignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                   print('Button tapped!');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Color(0xFF0A153A),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                    side: BorderSide(width: 1, color: Colors.white),
                  ),
                ),
                child: Text('Start Exploring', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, height: 0.08),),
              ),
              SizedBox(width: 10,),
              OutlinedButton(
                onPressed: () {
                  print('Pressed');
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                    side: BorderSide(color: Colors.white),
                  ),
                ),
                child: Text('Learn More', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, height: 0.08),),
              ),
            ],
          ),
          
          ],
        ),
      ),
    );
  }
}
