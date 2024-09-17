import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../login/login.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.off(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear)
              )
        ],
      ),


      body: SingleChildScrollView(
        child: Column(children: [


          //Image
          Image(image: const AssetImage
          (TImages.deliveredEmailIllustration),
            width:THelperFunctions.screenWidth() * 0.6
          ),
           const SizedBox(height: TSizes.spaceBtwItems,),



          //Title & Subtitle
          Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,),
          const SizedBox(height: TSizes.spaceBtwItems,),


          Text('Support@supportmail.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
          const SizedBox(height: TSizes.spaceBtwItems,),

          Text(TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
          const SizedBox(height: TSizes.spaceBtwItems,),










          //Buttons
          SizedBox(width: double.infinity,
           child: ElevatedButton(
            onPressed: () {  },
            child: const Text(TTexts.tContinue)
          ,),),


                  const SizedBox(height: TSizes.spaceBtwItems,),


          SizedBox(width: double.infinity, 
          child: TextButton(onPressed: (){} , child:  const Text(TTexts.resendEmail),),),







        ],)
      ,)
    );
  }
}