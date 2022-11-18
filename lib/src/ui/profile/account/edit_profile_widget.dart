import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/common/models/user_preferences.dart';
import 'package:polec/src/ui/details/components/recomended_button.dart';
import 'package:polec/src/ui/profile/account/account_widget.dart';
import 'package:polec/src/ui/profile/account/bloc/account_bloc.dart';
import 'package:polec/src/ui/profile/account/components/profile_text_field.dart';
import 'package:polec/src/ui/profile/account/edit_components/edit_basic_information.dart';
import 'package:polec/src/ui/profile/account/edit_components/edit_password.dart';
import 'package:polec/src/ui/profile/account/edit_components/gender_nav_bar.dart';
import 'package:polec/src/ui/profile/account/model/account_model.dart';
import 'package:polec/src/ui/profile/components/nav_bar/navigation_bar.dart';
import 'package:polec/theme/app_colors.dart';

class EditProfileWidget extends StatefulWidget {
  const EditProfileWidget({super.key});

  @override
  State<EditProfileWidget> createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController streetController = TextEditingController();
  final TextEditingController sityController = TextEditingController();
  final TextEditingController postCodeController = TextEditingController();
  final TextEditingController peselController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final formKey = GlobalKey<FormState>();
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
    final user = UserPreferences.myUser;
    final textStyle = TextStyle(
      fontSize: 18,
      color: AppColor.titleColor,
      fontWeight: FontWeight.bold,
    );
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Basic Information',
                      style: textStyle,
                    ),
                    const SizedBox(height: 20),
                    EditBasicInformation(
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
                    //////////////////////////////////////////////////////////////
                    const SizedBox(height: 20),
                    Text(
                      'Password',
                      style: textStyle,
                    ),
                    const SizedBox(height: 20),
                    const EditPassword(),
                    const SizedBox(height: 20),
                    RecommendedButton(
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
                        if (formKey.currentState!.validate()) {
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
                          // accountModelToJson(AccountModel(
                          //   firstName: nameController.text,
                          //   lastName: surnameController.text,
                          //   email: emailController.text,
                          //   phone: phoneController.text,
                          //   street: streetController.text,
                          //   sity: sityController.text,
                          //   postCode: postCodeController.text,
                          //   pesel: peselController.text,
                          //   dateOfBirth: dateOfBirthController.text,
                          // ));

                          changeEditWidget();
                        }
                        // setState(() {});
                      },
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void changeEditWidget() async {
    await detailWidget.update(Detail.account, (value) => const AccountWidget());
  }
}
