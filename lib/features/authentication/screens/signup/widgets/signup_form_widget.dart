import 'package:f_store_flutter/features/authentication/screens/signup/widgets/signup_terms_conditions_widget.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:f_store_flutter/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          /// First and Last Name
          Row(
            children: [
              Flexible(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: FTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: FSizes.spaceBtwInputFields,
              ),
              Flexible(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: FTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: FSizes.spaceBtwInputFields,
          ),

          /// User name
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: FTexts.userName,
              prefixIcon: Icon(Iconsax.user),
            ),
          ),

          const SizedBox(
            height: FSizes.spaceBtwInputFields,
          ),

          /// Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: FTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          const SizedBox(
            height: FSizes.spaceBtwInputFields,
          ),

          /// Phone number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: FTexts.phoneNumber,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),

          const SizedBox(
            height: FSizes.spaceBtwInputFields,
          ),

          /// Password
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: FTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),

          const SizedBox(
            height: FSizes.spaceBtwSections / 2,
          ),

          /// Terms and Conditions checkbox
          SignupTermsAndConditionsWidget(),

          const SizedBox(
            height: FSizes.spaceBtwSections / 2 ,
          ),

          /// Sign up button
          SizedBox(width: double.maxFinite,
            child: ElevatedButton(onPressed: (){}, child: const Text(FTexts.createAccount)),)
        ],
      ),
    );
  }
}

