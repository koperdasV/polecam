import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/details/components/recomended_button.dart';
import 'package:polec/src/ui/profile/account/edit_components/edit_basic_information.dart';
import 'package:polec/src/ui/profile/account/edit_components/edit_password.dart';
import 'package:polec/theme/app_colors.dart';

class EditProfileWidget extends StatelessWidget {
  const EditProfileWidget({
    super.key,
    required this.emailController,
    required this.nameController,
    required this.surnameController,
    required this.phoneController,
    required this.streetController,
    required this.cityController,
    required this.postCodeController,
    required this.peselController,
    required this.dateOfBirthController,
    required this.onPressed,
  });

  final TextEditingController emailController;
  final TextEditingController nameController;
  final TextEditingController surnameController;
  final TextEditingController phoneController;
  final TextEditingController streetController;
  final TextEditingController cityController;
  final TextEditingController postCodeController;
  final TextEditingController peselController;
  final TextEditingController dateOfBirthController;

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: 18,
      color: AppColor.titleColor,
      fontWeight: FontWeight.bold,
    );

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 17, bottom: 7),
                child: Text(
                  'Basic Information',
                  style: textStyle,
                ),
              ),
              EditBasicInformation(
                dateOfBirthController: dateOfBirthController,
                emailController: emailController,
                nameController: nameController,
                surnameController: surnameController,
                peselController: peselController,
                phoneController: phoneController,
                postCodeController: postCodeController,
                cityController: cityController,
                streetController: streetController,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 13),
                child: Text(
                  'Password',
                  style: textStyle,
                ),
              ),
              const EditPassword(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
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
                  onPressed: onPressed,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
