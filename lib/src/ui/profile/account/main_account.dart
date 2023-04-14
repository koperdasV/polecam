import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/feature/profile/provider/profile_provider.dart';
import 'package:polec/src/ui/profile/account/cubit/account_cubit.dart';
import 'package:polec/src/ui/profile/account/edit_components/account_widget.dart';
import 'package:polec/src/ui/profile/account/edit_components/edit_profile_widget.dart';
import 'package:provider/provider.dart';

class MainAccountWidget extends StatefulWidget {
  MainAccountWidget({
    super.key,
    this.accWidgetVis = true,
    this.editWidgetVis = false,
  });
  bool accWidgetVis;
  bool editWidgetVis;

  @override
  State<MainAccountWidget> createState() => _MainAccountWidgetState();
}

class _MainAccountWidgetState extends State<MainAccountWidget> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController streetController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController postCodeController = TextEditingController();
  final TextEditingController peselController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();

  @override
  void dispose() {
    dateOfBirthController.dispose();
    emailController.dispose();
    nameController.dispose();
    surnameController.dispose();
    peselController.dispose();
    phoneController.dispose();
    postCodeController.dispose();
    cityController.dispose();
    streetController.dispose();
    super.dispose();
  }

  bool click = false;

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<SlidingBarProvider>().markerVisible;

    return BlocBuilder<AccountCubit, AccountEditState>(
      builder: (context, state) {
        final account = state.editing;
        if (account == true) {
          widget
            ..accWidgetVis = false
            ..editWidgetVis = true;
        } else {
          widget
            ..accWidgetVis = true
            ..editWidgetVis = false;
        }
        return Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Visibility(
                visible: widget.accWidgetVis,
                child: AccountWidget(
                  onPressed: () {},
                ),
              ),
              Visibility(
                visible: widget.editWidgetVis,
                child: EditProfileWidget(
                  dateOfBirthController: dateOfBirthController,
                  emailController: emailController,
                  nameController: nameController,
                  surnameController: surnameController,
                  peselController: peselController,
                  phoneController: phoneController,
                  postCodeController: postCodeController,
                  cityController: cityController,
                  streetController: streetController,
                  onPressed: () {
                    setState(() {
                      if (formKey.currentState!.validate()) {
                        context
                            .read<AccountCubit>()
                            .editingAcc(editingAccount: false);
                      }
                    });
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
