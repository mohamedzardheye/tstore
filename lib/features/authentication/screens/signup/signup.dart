import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:tstore/common/widgets/form_divider.dart';
import 'package:tstore/common/widgets/social_buttons.dart';
import 'package:tstore/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Title
            Text(
              TTexts.signupTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            //Form
            const TSignupForm(),

            const SizedBox(height: TSizes.spaceBtwItems),

            //Divider
            TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),



            //Social Buttons

            const TSocialButtons(),
          ],
        ),
      )),
    );
  }
}


