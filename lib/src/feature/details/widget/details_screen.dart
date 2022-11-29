import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/src/ui/details/details_widget.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    super.key,
    this.image = '',
    this.regularFee = 0,
    this.recommend,
    this.name = '',
    this.tag,
  });

  final String image;
  final double? regularFee;
  final String? recommend;
  final String name;

  final List<String>? tag;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text(
          'In your area',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      child: DetailsWidget(
        regularFee: widget.regularFee,
        image: widget.image,
        recommend: widget.recommend,
        name: widget.name,
        tag: widget.tag?.toList(),
      ),
    );
  }
}
