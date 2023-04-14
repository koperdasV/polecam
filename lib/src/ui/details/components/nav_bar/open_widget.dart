import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';
import 'package:polec/src/ui/details/components/day_widget.dart';

class OpenWidget extends StatelessWidget {
  const OpenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DetailsBloc, DetailsState>(
      listener: (context, state) => state.whenOrNull(
        error: (errorMessage) async =>
            context.showErrorBar(content: Text(errorMessage)),
      ),
      builder: (context, state) => state.maybeWhen(
        orElse: () => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        notFound: () => const Center(
          child: Text('not found product by id'),
        ),
        loaded: (productDetails) => Column(
          children: [
            DayWidget(
              day: 'Monday: ',
              title: productDetails.address[0].open.monday,
            ),
            DayWidget(
              day: 'Tuesday: ',
              title: productDetails.address[0].open.tuesday,
            ),
            DayWidget(
              day: 'Wednesday: ',
              title: productDetails.address[0].open.wednesday,
            ),
            DayWidget(
              day: 'Thursday: ',
              title: productDetails.address[0].open.thursday,
            ),
            DayWidget(
              day: 'Friday: ',
              title: productDetails.address[0].open.friday,
            ),
            DayWidget(
              day: 'Saturday: ',
              title: productDetails.address[0].open.saturday,
            ),
            DayWidget(
              day: 'Sunday: ',
              title: productDetails.address[0].open.sunday,
            ),
          ],
        ),
        error: (errorMessage) => const Center(child: FlutterLogo()),
      ),
    );
  }
}
