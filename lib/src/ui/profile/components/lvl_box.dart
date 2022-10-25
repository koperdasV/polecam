import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:polec/theme/app_colors.dart';

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
          child: Text(
            text,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.transparent),
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
