import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/form_divider.dart';
import '../../../../common/widgets/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return   Scaffold(
      body: SingleChildScrollView(
          child: Padding(
              padding: TSpacingStyle.paddingWithAppBarHeight,
              child: Column(
                children: [
                  /// Logo , title and sub title
                  const TLoginHeader(),

                  // FORM
                   const TLoginForm(),

                  //Divider
                   TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
                  const  SizedBox(height: TSizes.spaceBtwSections),

                  // footer
                  const  TSocialButtons()
                ],
              ))),
    );
  }
}




