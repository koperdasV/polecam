import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/details/components/recomended_button.dart';
import 'package:polec/src/ui/profile/account/edit_components/account_widget.dart';
import 'package:polec/src/ui/profile/account/bloc/account_bloc.dart';
import 'package:polec/src/ui/profile/account/cubit/account_cubit.dart';
import 'package:polec/src/ui/profile/account/edit_components/gender_nav_bar.dart';
import 'package:polec/src/ui/profile/account/edit_components/edit_profile_widget.dart';
import 'package:polec/src/ui/profile/account/model/account_model.dart';
import 'package:polec/theme/app_colors.dart';

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
  final TextEditingController sityController = TextEditingController();
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
    sityController.dispose();
    streetController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountCubit, AccountEditState>(
      builder: (context, state) {
        bool account = state.editing;

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
                  sityController: sityController,
                  streetController: streetController,
                  onPressed: () {
                    setState(() {
                      if (formKey.currentState!.validate()) {
                        context
                            .read<AccountCubit>()
                            .editingAcc(editingAccount: false);
                        // AccountModel(
                        //   firstName: nameController.text,
                        //   lastName: surnameController.text,
                        //   email: emailController.text,
                        //   phone: phoneController.text,
                        //   street: streetController.text,
                        //   sity: sityController.text,
                        //   postCode: postCodeController.text,
                        //   pesel: peselController.text,
                        //   dateOfBirth: dateOfBirthController.text,
                        // ).toJson();
                      }
                      //   accountModelToJson(AccountModel(
                      //     firstName: nameController.text,
                      //     lastName: surnameController.text,
                      //     email: emailController.text,
                      //     phone: phoneController.text,
                      //     street: streetController.text,
                      //     sity: sityController.text,
                      //     postCode: postCodeController.text,
                      //     pesel: peselController.text,
                      //     dateOfBirth: dateOfBirthController.text,
                      //   ));
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

  // void editGender(String male, String female) {
  //   if (GenderNavBar == Gender.male) {}
  //   male = 'Male';
  // } else {
  //   female = ' female';
  // }
}
