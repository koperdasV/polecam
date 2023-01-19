import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/src/ui/profile/account/edit_components/title_text.dart';
import 'package:polec/theme/app_colors.dart';

class EditPassword extends StatefulWidget {
  const EditPassword({super.key});

  @override
  State<EditPassword> createState() => _EditPasswordState();
}

class _EditPasswordState extends State<EditPassword> {
  late bool _passwordVisible;
  late final TextEditingController newPassController;
  late final TextEditingController confirmPassController;
  @override
  void initState() {
    _passwordVisible = false;
    newPassController = TextEditingController();
    confirmPassController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleTextWidget(
          text: 'Enter a new password',
        ),
        password('Enter a new password', newPassController),
        const SizedBox(height: 10),
        const TitleTextWidget(
          text: 'Confirm new password',
        ),
        password('Confirm a new password', confirmPassController),
      ],
    );
  }

  
  CupertinoTextField password(
    String placeholder,
    TextEditingController controller,
  ) {
    return CupertinoTextField(
      placeholder: placeholder,
      obscureText: !_passwordVisible,
      controller: controller,
      cursorHeight: 14,
      placeholderStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        color: AppColors.editPlaceholderAcc,
        fontSize: 14,
      ),
      style: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
      decoration: BoxDecoration(
        color: AppColors.bgAccountPage,
        borderRadius: BorderRadius.circular(10),
      ),
      suffix: SizedBox(
        height: 30,
        child: CupertinoButton(
          padding: const EdgeInsets.only(right: 5),
          child: Icon(
            size: 20,
            // Based on passwordVisible state choose the icon
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
            color: Colors.black,
          ),
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
      ),
    );
  }
}
