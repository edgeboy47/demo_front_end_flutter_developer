import 'package:demo_front_end_flutter_developer/user_profile/user.dart';
import 'package:demo_front_end_flutter_developer/user_profile/user_card.dart';
import 'package:demo_front_end_flutter_developer/user_profile/user_info_card.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xFFe0e0e0),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/profile.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Align(
            alignment: Alignment.topLeft.add(const Alignment(0.04, 0.04)),
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
          Align(
            alignment: const Alignment(0, -0.2),
            child: UserCard(user: user),
          ),
          Align(
            alignment: const Alignment(0, 1),
            child: UserInfoCard(
              user: user,
            ),
          )
        ],
      ),
    );
  }
}
