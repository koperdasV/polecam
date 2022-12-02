import 'package:flutter/cupertino.dart';
import 'package:polec/src/ui/details/components/nav_bar/about_widget.dart';
import 'package:polec/src/ui/details/components/nav_bar/contact_widget.dart';
import 'package:polec/src/ui/details/components/nav_bar/open_widget.dart';
import 'package:polec/theme/app_colors.dart';

enum Detail { about, contact, open }

Map<Detail, Widget> detailWidget = <Detail, Widget>{
  Detail.about: AboutWidget(
    about: anyDescription,
  ),
  Detail.open: const OpenWidget(),
  Detail.contact: const ContactWidget(),
};
late final String anyDescription;

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({
    super.key,
    this.description,
  });
  final String? description;

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  Detail _selectedSegment = Detail.about;

  @override
  void initState() {
    anyDescription = widget.description.toString();

    super.initState();
  }

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
              backgroundColor: AppColors.bgControl,
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
                  style: TextStyle(color: CupertinoColors.black),
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
