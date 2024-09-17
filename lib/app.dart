import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';




import 'features/authentication/screens/onBoarding/onboarding.dart';
//import 'navigation_menu.dart';
import 'utils/constants/text_strings.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    

    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),
      home: const OnBoardingScreen(),
         // child: Text('Awesome Project Structure is setup and running. \n Happy T Coding 🎊', textAlign: TextAlign.center,),
      
      
    );
  }
  
}