import 'package:demo_front_end_flutter_developer/home_screen/home_screen_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: _buildAppBarWithTabs(),
        body: Container(
          color: Colors.grey,
          child: Stack(
            children: [
              TabBarView(
                children: [
                  ListView(
                    children: const [
                      HomeScreenCard(
                        imageURL: 'assets/onboarding.png',
                        title:
                            'How to Seem Like You Always Have Your Shot Together',
                        author: 'Jonhy Vino',
                        readingMinutes: 4,
                      ),
                      HomeScreenCard(
                        imageURL: 'assets/onboarding.png',
                        title:
                            'Does Dry is January Actually Improve Your Health?',
                        author: 'Jonhy Vino',
                        readingMinutes: 4,
                      ),
                      HomeScreenCard(
                        imageURL: 'assets/onboarding.png',
                        title:
                            'You do hire a designer to make something. You do hire them.',
                        author: 'Jonhy Vino',
                        readingMinutes: 4,
                      ),
                    ],
                  ),
                  const Text('Design'),
                  const Text('Beauty'),
                  const Text('Education'),
                ],
              ),
              const BottomTabRow(),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBarWithTabs() {
    return AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Categories',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: const Icon(
          Icons.category,
          color: Colors.black,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.search, color: Colors.black),
          )
        ],
        bottom: const TabBar(
          labelPadding: EdgeInsets.only(bottom: 6),
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              width: 1.5,
              color: Colors.pink,
            ),
          ),
          labelColor: Colors.pink,
          unselectedLabelColor: Colors.black,
          tabs: [
            Text('For You'),
            Text('Design'),
            Text('Beauty'),
            Text('Education'),
          ],
        ),
      );
  }
}

class BottomTabRow extends StatelessWidget {
  const BottomTabRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: const Color(0xFFfafafa),
        child: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(
                Icons.home,
                color: Color(0xFF737373),
              ),
              Icon(
                Icons.folder_open_outlined,
                color: Colors.pink,
              ),
              Icon(
                Icons.favorite_border,
                color: Color(0xFF737373),
              ),
              Icon(
                Icons.person_outline,
                color: Color(0xFF737373),
              ),
              Icon(
                Icons.settings,
                color: Color(0xFF737373),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
