import 'package:flutter/material.dart';

class HomeScreenCard extends StatelessWidget {
  const HomeScreenCard({
    Key? key,
    required this.title,
    required this.author,
    required this.readingMinutes,
    required this.imageURL,
  }) : super(key: key);

  final String title;
  final String author;
  final int readingMinutes;
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12).copyWith(top: 16),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 32,
        ),
        leading: Image.asset(imageURL),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            title,
            maxLines: 3,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  wordSpacing: 16,
                ),
          ),
        ),
        isThreeLine: true,
        subtitle: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFfd6592),
              ),
              height: 30,
              width: 30,
            ),
            const Spacer(),
            Text(
              author,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
              maxLines: 1,
            ),
            const Spacer(
              flex: 4,
            ),
            Text(
              '$readingMinutes min read',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
              maxLines: 1,
            ),
            const Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }
}
