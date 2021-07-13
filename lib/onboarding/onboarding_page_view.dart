import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatefulWidget {
  const OnBoardingPageView({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  _OnBoardingPageViewState createState() => _OnBoardingPageViewState();
}

class _OnBoardingPageViewState extends State<OnBoardingPageView> {
  late PageController _controller;
  late int _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPage = 0;

    _controller = PageController()
      ..addListener(() {
        setState(() {
          _currentPage = _controller.page!.toInt();
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: widget.children,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Skip',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  DotsIndicator(
                    dotsCount: widget.children.length,
                    position: _currentPage.toDouble(),
                    onTap: (pos) {
                      _controller.jumpToPage(pos.toInt());
                    },
                    decorator: const DotsDecorator(
                      color: Colors.white,
                      activeColor: Colors.red,
                    ),
                  ),
                  Icon(_currentPage == widget.children.length - 1
                      ? Icons.done
                      : Icons.arrow_forward),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
