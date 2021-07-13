import 'package:demo_front_end_flutter_developer/home_screen/home_screen.dart';
import 'package:demo_front_end_flutter_developer/onboarding/onboarding_page.dart';
import 'package:demo_front_end_flutter_developer/onboarding/onboarding_page_view.dart';
import 'package:demo_front_end_flutter_developer/user_profile/user.dart';
import 'package:demo_front_end_flutter_developer/user_profile/user_profile.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Darrion Mills demo_front_end_flutter_developer',
              maxLines: 5,
            ),
          ),
          body: Center(
            child: Builder(builder: (context) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (c) => _onboardingPage,
                        ),
                      );
                    },
                    child: const Text('Onboarding UI'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (c) => _homeScreenPage,
                        ),
                      );
                    },
                    child: const Text('HomeScreen UI'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (c) => _userProfilePage,
                        ),
                      );
                    },
                    child: const Text('User Profile UI'),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }

  final _onboardingPage = const OnBoardingPageView(
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

  final _userProfilePage = UserProfile(
    user: User(
      name: 'Little Butterfly',
      title: 'Product Designer',
      location: 'Kathmandu',
      imageURL: 'assets/profile.png',
      likes: 285,
      comments: 3025,
      favourites: 650,
      email: 'butterfly.little@gmail.com',
      website: 'https://www.littlebutterfly.com',
      phoneNumber: '+977-9815225566',
    ),
  );

  final _homeScreenPage = const HomeScreen();
}
