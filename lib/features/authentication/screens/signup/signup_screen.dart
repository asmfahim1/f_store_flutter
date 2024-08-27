import 'package:f_store_flutter/common/widgets/login_signup/login_signup_divider_widget.dart';
import 'package:f_store_flutter/common/widgets/login_signup/login_signup_social_button_widget.dart';
import 'package:f_store_flutter/features/authentication/screens/signup/widgets/signup_form_widget.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:f_store_flutter/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                FTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: FSizes.spaceBtwSections / 2,
              ),

              /// Form
              const SignupFormWidget(),
              const SizedBox(
                height: FSizes.spaceBtwItems ,
              ),

              /// Divider
              FLoginDividerWidget(dividerText: FTexts.orSignUpWith.capitalize!,),
              const SizedBox(
                height: FSizes.spaceBtwItems ,
              ),

              /// Footer social buttons
              const FLoginSocialButtonsWidget(),

            ],
          ),
        ),
      ),
    );
  }
}


