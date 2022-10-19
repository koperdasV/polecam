import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:polec/resourses/app_icons.dart';
import 'package:polec/resourses/app_images.dart';
import 'package:polec/src/common/router/routes.dart';
import 'package:polec/src/feature/registration/widget/custom_text_field.dart';
import 'package:polec/src/feature/registration/widget/text_field_widget.dart';
import 'package:polec/theme/app_colors.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  CountryCode _countryCode = CountryCode(code: 'PL', dialCode: '+48');
  final formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 16, right: 16, bottom: 16, top: 110),
            child: Column(
              children: [
                Container(
                  height: 30,
                  child: Image.asset(AppImages.logo),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Utwórz konto',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'polec.am',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.greyDark,
                  ),
                ),
                const SizedBox(height: 65),
                Form(
                  key: formKey,
                  child: const TextFieldWidget(),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Checkbox(
                        value: checkValue,
                        checkColor: Colors.white,
                        activeColor: Colors.blue,
                        onChanged: (value1) {
                          setState(() {
                            checkValue = value1!;
                          });
                        }),
                    const Text(
                      'Akceptuję',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.greyDark,
                      ),
                    ),
                    CupertinoButton(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      onPressed: () {},
                      child: const Text(
                        'warunki korzystania',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Text(
                      'i',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.greyDark,
                      ),
                    ),
                    CupertinoButton(
                      padding: const EdgeInsets.only(left: 5),
                      onPressed: () {},
                      child: const Text(
                        'regulamin',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 80),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: CupertinoButton.filled(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.go('/');
                      }
                    },
                    child: const Text('Utwórz konto'),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Masz już konto?',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.greyDark,
                      ),
                    ),
                    CupertinoButton(
                      padding: const EdgeInsets.only(left: 5),
                      onPressed: () {},
                      child: const Text(
                        'Zaloguj się',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
