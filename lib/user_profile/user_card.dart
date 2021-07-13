import 'package:demo_front_end_flutter_developer/user_profile/user.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Card(
        // clipBehavior: Clip.none,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.height * 0.9,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 115,
                top: 15,
                child: Text(
                  user.name,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Positioned(
                left: 115,
                top: 50,
                child: Text(
                  user.title,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Positioned(
                left: 115,
                top: 70,
                child: Text(
                  user.location,
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(fontSize: 14),
                ),
              ),
              Align(
                alignment: const Alignment(0, 0.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('${user.likes}'),
                        const Text('Likes'),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('${user.comments}'),
                        const Text('Comments'),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('${user.favourites}'),
                        const Text('Favourites'),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -15,
                left: 15,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    user.imageURL,
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
