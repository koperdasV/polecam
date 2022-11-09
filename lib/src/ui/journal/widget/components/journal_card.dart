import 'package:flutter/material.dart';
import 'package:polec/src/ui/journal/widget/components/alert_dialog.dart';

class JournalCard extends StatelessWidget {
  const JournalCard({
    required this.tmpStr,
    Key? key,
  }) : super(key: key);

  final String tmpStr;

  @override
  Widget build(BuildContext context) {
    final _controller = PageController(viewportFraction: 0.5);

    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage(
          'assets/fake_images/food_polecane.png',
        ),
        radius: 30,
      ),
      title: Text(
        tmpStr,
        style: const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 18,
        ),
      ),
      subtitle: const Text(
        'Bartek Nowak recommends',
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14,
          color: Colors.blue,
        ),
      ),
      trailing: const Text(
        '10:30 am',
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14,
        ),
      ),
      onTap: () {
        alertDialog(context, _controller);
      },
    );
  }
}

Future<void> alertDialog(BuildContext context, PageController _controller) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialogWidget(
        controller: _controller,
      );
    },
  );
}
