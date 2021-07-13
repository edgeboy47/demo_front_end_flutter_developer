import 'package:demo_front_end_flutter_developer/user_profile/user.dart';
import 'package:flutter/material.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 12.0,
                top: 16,
                bottom: 16,
              ),
              child: Text(
                'User Information',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const Divider(
              thickness: 0.4,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: ListTile(
                leading: const Icon(Icons.email),
                title: const Text(
                  'Email',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  user.email!,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: ListTile(
                leading: const Icon(Icons.phone),
                title: const Text(
                  'Phone',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  user.phoneNumber!,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: ListTile(
                leading: const Icon(Icons.web),
                title: const Text(
                  'Website',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  user.website!,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
