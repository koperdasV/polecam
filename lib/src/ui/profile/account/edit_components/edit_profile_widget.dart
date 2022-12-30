import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/details/components/recomended_button.dart';
import 'package:polec/src/ui/profile/account/edit_components/edit_basic_information.dart';
import 'package:polec/src/ui/profile/account/edit_components/edit_password.dart';
import 'package:polec/theme/app_colors.dart';

class EditProfileWidget extends StatefulWidget {
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

  final VoidCallback onPressed;

  @override
  State<EditProfileWidget> createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
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
              Text(
                'Basic Information',
                style: textStyle,
              ),
              const SizedBox(height: 20),
              EditBasicInformation(
                dateOfBirthController: widget.dateOfBirthController,
                emailController: widget.emailController,
                nameController: widget.nameController,
                surnameController: widget.surnameController,
                peselController: widget.peselController,
                phoneController: widget.phoneController,
                postCodeController: widget.postCodeController,
                cityController: widget.cityController,
                streetController: widget.streetController,
              ),
              const SizedBox(height: 20),
              Text(
                'Password',
                style: textStyle,
              ),
              const SizedBox(height: 20),
              const EditPassword(),
              const SizedBox(height: 10),
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
                onPressed: widget.onPressed,
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
