import 'package:flutter/cupertino.dart';

const double _kItemExtent = 32;
final List<String> period = <String>[
  '3 months',
  '6 months',
  '9 months',
  '12 months'
];

class PeriodPicker extends StatefulWidget {
  const PeriodPicker({super.key});

  @override
  State<PeriodPicker> createState() => _PeriodPickerState();
}

class _PeriodPickerState extends State<PeriodPicker> {
  int _selectedPeriod = 0;

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Text('Period: '),
        CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () => _showDialog(
            CupertinoPicker(
              magnification: 1.22,
              squeeze: 1.2,
              useMagnifier: true,
              itemExtent: _kItemExtent,
              onSelectedItemChanged: (int selectedItem) {
                setState(() {
                  _selectedPeriod = selectedItem;
                });
              },
              children: List<Widget>.generate(period.length, (int index) {
                return Center(
                  child: Text(
                    period[index],
                  ),
                );
              }),
            ),
          ),
          // This displays the selected fruit name.
          child: Text(
            period[_selectedPeriod],
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
