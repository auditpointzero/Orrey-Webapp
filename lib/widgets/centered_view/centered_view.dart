import 'package:flutter/material.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
   CenteredView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 70),
      alignment: Alignment.topLeft,
      child: ConstrainedBox(constraints: BoxConstraints(
        maxWidth: 1140,
      ),
      child: child,),
    );
  }
}