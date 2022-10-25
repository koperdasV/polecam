import 'package:flutter/material.dart';

class LvlBox extends StatelessWidget {
  const LvlBox({
    super.key,
    required this.text,
    required this.gradientStart,
    required this.gradientEnd,
  });
  final String text;
  final Color gradientStart;
  final Color gradientEnd;

  @override
  Widget build(BuildContext context) {
    // return CircleAvatar(
    //   radius: 20,
    //   child: Container(
    //     decoration: BoxDecoration(
    //       shape: BoxShape.circle,
    //       gradient: LinearGradient(
    //         colors: [
    //           gradientStart,
    //           gradientEnd,
    //         ],
    //       ),
    //     ),
    //     child: Text(
    //       text,
    //       style: TextStyle(
    //         fontSize: 24,
    //         color: Colors.white,
    //       ),
    //     ),
    //   ),
    // );

    return Container(
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            gradientStart,
            gradientEnd,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );

    // return Container(
    //   clipBehavior: Clip.hardEdge,
    //   decoration: BoxDecoration(
    //     shape: BoxShape.circle,
    //     gradient: LinearGradient(
    //       colors: [
    //         gradientStart,
    //         gradientEnd,
    //       ],
    //     ),
    //   ),
    //   child: Text(
    //     text,
    //     style: const TextStyle(
    //       fontSize: 24,
    //       color: Colors.white,
    //     ),
    //   ),
    // );
  }
}
