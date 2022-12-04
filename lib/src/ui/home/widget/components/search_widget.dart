import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/details/components/show_dialog.dart';
import 'package:polec/src/ui/home/widget/components/in_active_button.dart';
import 'package:polec/src/ui/home/widget/components/title_widget.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ShowDialog(
          height: 520,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  'journalModel.target.name',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 10,
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  'recommends\n With your first purchase'
                  '\nYou will get a 30% discount',
                  style: TextStyle(
                    height: 1.5,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: InActiveButton(
                  text: 'Save the Card',
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  fontSize: 22,
                ),
              ),
            ],
          ),
        );
      },
      child: CupertinoSearchTextField(
        suffixIcon: const Icon(
          CupertinoIcons.line_horizontal_3_decrease,
          color: Colors.black,
        ),
        suffixMode: OverlayVisibilityMode.always,
        suffixInsets: const EdgeInsetsDirectional.fromSTEB(0, 0, 25, 2),
        prefixIcon: const SizedBox(),
        onTap: () {
          alertDialog(context);
        },
      ),
    );
  }

  Future<void> alertDialog(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return const FilterChips();
      },
    );
  }
}

class FilterChips extends StatefulWidget {
  const FilterChips({
    Key? key,
  }) : super(key: key);

  @override
  State<FilterChips> createState() => _FilterChipsState();
}

class _FilterChipsState extends State<FilterChips> {
  final List<String> _options = [
    'Food',
    'Desserts',
    'Party',
    'Drink',
    'Asian',
    'Family',
    'Meat',
  ];
  final List<bool> _selected = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  Widget _buildChips() {
    final chips = <Widget>[];

    for (var i = 0; i < _options.length; i++) {
      final filterChip = FilterChip(
        selected: _selected[i],
        label: Text(
          _options[i],
          style: const TextStyle(color: Colors.white),
        ),
        shadowColor: Colors.teal,
        backgroundColor: Colors.black54,
        selectedColor: Colors.blue,
        onSelected: (bool selected) {
          setState(() {
            _selected[i] = selected;
          });
        },
      );

      chips.add(Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: filterChip));
    }

    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: chips,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ShowDialog(
      height: 520,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 30,
                child: _buildChips(),
              ),
              // FilterChip(
              //   selected: _selected[i],
              //   label: const Text('Company name'),
              //   side: BorderSide(color: AppColor.textButtonColor),
              //   selectedColor: AppColor.textButtonColor,
              //   disabledColor: Colors.grey,
              //   onSelected: (bool selected) {
              //     setState(() {
              //       _selected = !_selected;
              //     });
              //   },
              // ),
              // FilterChip(
              //   label: const Text('Offer name'),
              //   onSelected: (val) {},
              // ),
            ],
          ),
          const TitleWidget(
            title: 'Search by category',
            fontSizeTitle: 18,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FilterChip(
                label: const Text('Choose All'),
                onSelected: (val) {},
              ),
              FilterChip(
                label: const Text('Category 1'),
                onSelected: (val) {},
              ),
              FilterChip(
                label: const Text('Category 2'),
                onSelected: (val) {},
              ),
              FilterChip(
                label: const Text('Category 3'),
                onSelected: (val) {},
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InActiveButton(
                  width: 140,
                  text: 'Cancel',
                  onPressed: () {},
                  fontSize: 22,
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(65, 65, 65, 0.5),
                      Color.fromRGBO(100, 100, 100, 0.5),
                      Color.fromRGBO(190, 190, 190, 1),
                    ],
                  ),
                ),
                InActiveButton(
                  width: 140,
                  text: 'Apply',
                  onPressed: () {},
                  fontSize: 22,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class FilterCheckbox extends StatefulWidget {
//   const FilterCheckbox({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<FilterCheckbox> createState() => _FilterCheckboxState();
// }

// class _FilterCheckboxState extends State<FilterCheckbox> {
//   bool checkValue = false;

//   @override
//   Widget build(BuildContext context) {
//     return ShowDialog(
//       height: 480,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               // FilterBox(
//               //   label: const Text('Company name'),
//               //   value: isCheck,
//               //   onSelected: (val) {
//               //     setState(() {
//               //       isCheck = val!;
//               //     });
//               //   },
//               // ),
//               // FilterBox(
//               //   label: const Text('Offer name'),
//               //   value: isCheck,
//               //   onSelected: (val) {
//               //     // setState(() {
//               //     //   checkValue = val!;
//               //     // });
//               //   },
//               // ),
//             ],
//           ),
//           const TitleWidget(
//             title: 'Search by category',
//             fontSizeTitle: 18,
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   isCheckedBox(checkValue),
//                   isCheckedBox(checkValue),
//                   isCheckedBox(checkValue),
//                 ],
//               )
//               // FilterBox(
//               //   label: const Text('Choose All'),
//               //   onSelected: (val) {
//               //     // setState(() {
//               //     //   checkValue = val!;
//               //     // });
//               //   },
//               //   value: isCheck,
//               // ),
//               // FilterBox(
//               //   label: const Text('Category 1'),
//               //   onSelected: (val) {
//               //     // setState(() {
//               //     //   checkValue = val!;
//               //     // });
//               //   },
//               //   value: isCheck,
//               // ),
//               // FilterBox(
//               //   label: const Text('Category 2'),
//               //   onSelected: (val) {
//               //     setState(() {
//               //       isCheck = val!;
//               //     });
//               //   },
//               //   isCheck: isCheck,
//               //   value: isCheck,
//               // ),
//               // FilterBox(
//               //   label: const Text('Category 3'),
//               //   onSelected: (val) {
//               //     setState(() {
//               //       isCheck = val!;
//               //     });
//               //   },
//               //   isCheck: isCheck,
//               //   value: isCheck,
//               // ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 InActiveButton(
//                   width: 140,
//                   text: 'Cancel',
//                   onPressed: () {},
//                   fontSize: 22,
//                   gradient: const LinearGradient(
//                     colors: [
//                       Color.fromRGBO(65, 65, 65, 0.5),
//                       Color.fromRGBO(100, 100, 100, 0.5),
//                       Color.fromRGBO(190, 190, 190, 1),
//                     ],
//                   ),
//                 ),
//                 InActiveButton(
//                   width: 140,
//                   text: 'Apply',
//                   onPressed: () {},
//                   fontSize: 22,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Checkbox isCheckedBox(
//     bool isChecked,
//   ) {
//     return Checkbox(
//       value: isChecked,
//       onChanged: (value) {
//         setState(() {
//           checkValue = value!;
//         });
//       },
//     );
//   }
// }

// class FilterBox extends StatefulWidget {
//   FilterBox({
//     Key? key,
//     required this.label,
//     required this.value,
//     required this.onSelected,
//     required this.isCheck,
//   }) : super(key: key);

//   final Widget label;
//   final bool value;
//   bool isCheck = false;
//   void Function(bool?)? onSelected;

//   @override
//   State<FilterBox> createState() => _FilterBoxState();
// }

// class _FilterBoxState extends State<FilterBox> {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Checkbox(
//           value: widget.value,
//           onChanged: (value) {
//             setState(() {
//               widget.isCheck = value!;
//             });
//           },
//         ),
//         widget.label,
//       ],
//     );
//   }
// }
