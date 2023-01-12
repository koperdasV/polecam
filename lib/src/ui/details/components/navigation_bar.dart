import 'package:flutter/cupertino.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/details/components/nav_bar/about_widget.dart';
import 'package:polec/src/ui/details/components/nav_bar/contact_widget.dart';
import 'package:polec/src/ui/details/components/nav_bar/open_widget.dart';

enum Detail { about, contact, open }

Map<Detail, Widget> detailWidget = <Detail, Widget>{
  Detail.about: const AboutWidget(),
  Detail.open: const OpenWidget(),
  Detail.contact: const ContactWidget(),
};

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({
    super.key,
  });

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  Detail _selectedSegment = Detail.about;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: double.infinity,
            child: CupertinoSlidingSegmentedControl<Detail>(
              backgroundColor: AppColor.navigatorColor,
              thumbColor: const Color(0xffffffff),
              // This represents the currently selected segmented control.
              groupValue: _selectedSegment,
              // Callback that sets the selected segmented control.
              onValueChanged: (Detail? value) {
                if (value != null) {
                  setState(() {
                    _selectedSegment = value;
                  });
                }
              },
              children: const <Detail, Widget>{
                Detail.about: Text(
                  'About',
                  style: TextStyle(
                    color: CupertinoColors.black,
                  ),
                ),
                Detail.open: Text(
                  'Open',
                  style: TextStyle(color: CupertinoColors.black),
                ),
                Detail.contact: Text(
                  'Contact',
                  style: TextStyle(color: CupertinoColors.black),
                ),
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: detailWidget[_selectedSegment],
        ),
      ],
    );
  }
}
