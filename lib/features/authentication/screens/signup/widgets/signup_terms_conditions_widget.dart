import 'package:f_store_flutter/utils/constants/colors.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:f_store_flutter/utils/constants/text_strings.dart';
import 'package:f_store_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SignupTermsAndConditionsWidget extends StatelessWidget {
  const SignupTermsAndConditionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = FHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (val) {}),
        ),
        const SizedBox(
          width: FSizes.spaceBtwItems / 2,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: FTexts.iAgreeTo,
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: ' ${FTexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? FColors.primaryColor : FColors.black,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? FColors.primaryColor : FColors.black,
                    ),
              ),
              TextSpan(
                  text: ' ${FTexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: FTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? FColors.primaryColor : FColors.black,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? FColors.primaryColor : FColors.black,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
