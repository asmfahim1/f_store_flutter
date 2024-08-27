import 'package:f_store_flutter/features/authentication/screens/password_configuration/reset_password_screen.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:f_store_flutter/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(padding: EdgeInsets.all(FSizes.defaultSpace),
      child: Column(
        children: [
          /// Headings
          Text(FTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,),
          SizedBox(height: FSizes.spaceBtwItems,),
          Text(FTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium,),
          SizedBox(height: FSizes.spaceBtwSections,),


          /// Text Field
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: FTexts.email,
            ),
          ),
          SizedBox(height: FSizes.defaultSpace),

          /// Submit Button
          SizedBox(width: double.maxFinite, child: ElevatedButton(onPressed: () => Get.off(() => ResetPasswordScreen()), child: Text(FTexts.submit)),)
          ],
        ),
      ),
    );
  }
}
