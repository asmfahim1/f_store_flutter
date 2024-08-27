import 'package:f_store_flutter/common/styles/spacing_styles.dart';
import 'package:f_store_flutter/common/widgets/login_signup/login_signup_divider_widget.dart';
import 'package:f_store_flutter/common/widgets/login_signup/login_signup_social_button_widget.dart';
import 'package:f_store_flutter/features/authentication/screens/login/widgets/login_form_widget.dart';
import 'package:f_store_flutter/features/authentication/screens/login/widgets/login_header_widget.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:f_store_flutter/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: FSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              const FLoginHeaderWidget(),

              /// Form
              const FLoginFormWidget(),

              ///Divider
              FLoginDividerWidget(dividerText: FTexts.orSignInWith.capitalize!,),

              const SizedBox(height: FSizes.spaceBtwItems),

              /// Footer
              const FLoginSocialButtonsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}




