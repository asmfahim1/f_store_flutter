import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:f_store_flutter/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class FLoginFormWidget extends StatelessWidget {
  const FLoginFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Form(
      //key: ,
      child: Padding(
        padding:
        const EdgeInsets.symmetric(vertical: FSizes.defaultSpace),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: FTexts.email,
              ),
            ),

            const SizedBox(height: FSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: FTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),

            const SizedBox(height: FSizes.spaceBtwInputFields / 2),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    /// Remember me
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    const Text(FTexts.rememberMe),
                  ],
                ),

                /// Forget Password
                TextButton(
                  onPressed: () {},
                  child: const Text(FTexts.forgotPassword),
                ),
              ],
            ),

            const SizedBox(height: FSizes.defaultSpace),

            /// Sign In Button
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(FTexts.signIn),
              ),
            ),

            const SizedBox(height: FSizes.spaceBtwItems),

            /// Create Account Button
            SizedBox(
              width: double.maxFinite,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(FTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}