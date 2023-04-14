import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:polec/resourses/app_images.dart';
import 'package:polec/src/feature/registration/widget/text_field_widget.dart';
import 'package:polec/theme/app_colors.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final CountryCode _countryCode = CountryCode(code: 'PL', dialCode: '+48');
  final formKey = GlobalKey<FormState>();

  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: LayoutBuilder(
        builder: (context, constraints) => Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                // bottom: 16,
                top: constraints.minHeight * 0.1,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  // minWidth: constraints.minWidth,
                  // minHeight: constraints.minHeight,
                  maxHeight: constraints.maxHeight * 0.9,
                  maxWidth: constraints.maxWidth,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                      child: Image.asset(AppImages.logo),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Create account',
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
                    SizedBox(height: constraints.minHeight * 0.05),
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
                          onChanged: (value) {
                            setState(() {
                              checkValue = value!;
                            });
                          },
                        ),
                        const Text(
                          'I accept',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.greyDark,
                          ),
                        ),
                        CupertinoButton(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          onPressed: () {},
                          child: const Text(
                            'terms of use',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Text(
                          'and',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.greyDark,
                          ),
                        ),
                        CupertinoButton(
                          padding: const EdgeInsets.only(left: 5),
                          onPressed: () {},
                          child: const Text(
                            'statute',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: constraints.minHeight * 0.05),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: CupertinoButton.filled(
                        onPressed: () {
                          if (formKey.currentState!.validate() &&
                              checkValue == true) {
                            context.go('/');
                          }
                        },
                        child: const Text(
                          'Create account',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: constraints.minHeight * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account?',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.greyDark,
                          ),
                        ),
                        CupertinoButton(
                          padding: const EdgeInsets.only(left: 5),
                          onPressed: () {},
                          child: const Text(
                            'Log in',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                              fontWeight: FontWeight.w700,
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
        ),
      ),
    );
  }
}
