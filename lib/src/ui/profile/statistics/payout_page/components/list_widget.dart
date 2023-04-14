import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/journal/bloc/journals_bloc.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({
    Key? key,
    required this.name,
    required this.money,
    required this.color,
  }) : super(key: key);

  final String name;
  final String money;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JournalsBloc, JournalsState>(
      builder: (context, state) {
        return CustomScrollView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: state.journals.length,
                (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 19,
                    vertical: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                state.journals[index].source.avatar,
                              ),
                            ),
                          ),
                          Text(
                            state.journals[index].source.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        money,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
