import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/details/components/recomended_button.dart';
import 'package:polec/src/ui/profile/account/account_widget.dart';
import 'package:polec/src/ui/profile/account/bloc/account_bloc.dart';
import 'package:polec/src/ui/profile/account/cubit/account_cubit.dart';
import 'package:polec/src/ui/profile/account/edit_components/gender_nav_bar.dart';
import 'package:polec/src/ui/profile/account/edit_profile_widget.dart';
import 'package:polec/src/ui/profile/account/model/account_model.dart';
import 'package:polec/theme/app_colors.dart';

class EditWidget extends StatefulWidget {
  EditWidget({
    super.key,
    this.accWidgetVis = true,
    this.editWidgetVis = false,
  });
  bool accWidgetVis;
  bool editWidgetVis;

  @override
  State<EditWidget> createState() => _EditWidgetState();
}

class _EditWidgetState extends State<EditWidget> {
  // bool accWidgetVis = true;
  // bool editWidgetVis = false;
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
        final account = state.editing;
        if (account == true) {
          widget
            ..accWidgetVis = false
            ..editWidgetVis = true;
        }
        return Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Visibility(
                visible: widget.accWidgetVis,
                child: const AccountWidget(),
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
                ),
              ),
              Visibility(
                visible: widget.accWidgetVis,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: RecommendedButton(
                    textButton: 'Reconnect now',
                    gradient: const LinearGradient(
                      colors: [
                        AppColors.gradientStartActive,
                        AppColors.gradientEndActive,
                      ],
                    ),
                    imageColor: Colors.white,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        widget
                          ..accWidgetVis = false
                          ..editWidgetVis = true;
                      });
                    },
                  ),
                ),
              ),
              Visibility(
                visible: widget.editWidgetVis,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: RecommendedButton(
                    textButton: 'Save',
                    gradient: const LinearGradient(
                      colors: [
                        AppColors.gradientStart,
                        AppColors.gradientEnd,
                      ],
                    ),
                    imageColor: Colors.white,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        // if (editWidgetVis = true) {
                        //   print('object');
                        if (formKey.currentState!.validate()) {
                          widget
                            ..accWidgetVis = true
                            ..editWidgetVis = false;
                          AccountModel(
                            firstName: nameController.text,
                            lastName: surnameController.text,
                            email: emailController.text,
                            phone: phoneController.text,
                            street: streetController.text,
                            sity: sityController.text,
                            postCode: postCodeController.text,
                            pesel: peselController.text,
                            dateOfBirth: dateOfBirthController.text,
                          ).toJson();
                        }
                        //   //   accountModelToJson(AccountModel(
                        //   //     firstName: nameController.text,
                        //   //     lastName: surnameController.text,
                        //   //     email: emailController.text,
                        //   //     phone: phoneController.text,
                        //   //     street: streetController.text,
                        //   //     sity: sityController.text,
                        //   //     postCode: postCodeController.text,
                        //   //     pesel: peselController.text,
                        //   //     dateOfBirth: dateOfBirthController.text,
                        //   //   ));
                        //   // }
                        // }
                      });
                    },
                  ),
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
