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
    this.description = '',
  });

  final String image;
  final double? regularFee;
  final String? recommend;
  final String name;
  final String description;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final image = widget.image;
    final regularFee = widget.regularFee;
    final recommend = widget.recommend;
    final description = widget.description;

    final name = widget.name;

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
        regularFee: regularFee,
        image: image,
        recommend: recommend,
        name: name,
        description: description,
      ),
    );
  }
}
