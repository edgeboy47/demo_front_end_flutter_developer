import 'package:demo_front_end_flutter_developer/home_screen/home_screen.dart';
import 'package:demo_front_end_flutter_developer/onboarding/onboarding_page.dart';
import 'package:demo_front_end_flutter_developer/onboarding/onboarding_page_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: HomeScreen(),
        ),
      ),
    );
  }

  final onb = const OnBoardingPageView(
            children: [
              OnboardingPage(
                title: 'Welcome',
                body: 'Welcome to this awesome intro screen app.',
                bgColor: Colors.green,
                imageURL: 'assets/onboarding.png',
              ),
              OnboardingPage(
                title: 'Awesome App',
                body: 'This is an awesome app, of intro screen design',
                bgColor: Colors.blue,
                imageURL: 'assets/onboarding.png',
              ),
               OnboardingPage(
                title: 'Flutter App',
                body: 'Flutter is awesome for app development',
                bgColor: Color(0xFF7684c5),
                imageURL: 'assets/onboarding.png',
              )
            ],
          );
}
