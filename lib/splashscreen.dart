import 'package:flutter/material.dart';
import 'homepage.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  final List<Widget> _pages = [
    OnboardingPage(
      image: 'assets/room.jpg',
      title: 'Home App',
      description: 'Give your home a makeover\n The best app to find home services',
    ),
    OnboardingPage(
      image: 'assets/house.jpg',
      title: 'Explore Amazing Features',
      description: 'Get quality services at just fingertip\n Hassel free services',
    ),
    OnboardingPage(
      image: 'assets/sprof.jpg',
      title: 'Qualified Professionals',
      description: 'Extremely profeesional at work\n Fast Service',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemBuilder: (BuildContext context, int index) {
                  return _pages[index % _pages.length];
                },
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              child: Text(
                _currentPage == _pages.length - 1 ? 'Get Started' : 'Next',
                style: TextStyle(color: Colors.black),
              ),
              // color: Colors.blue,
              onPressed: () {
                if (_currentPage == _pages.length - 1) {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
                } else {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                }
              },
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < _pages.length; i++) {
      indicators.add(
        i == _currentPage
            ? _buildIndicator(true)
            : _buildIndicator(false),
      );
    }
    return indicators;
  }

  Widget _buildIndicator(bool isActive) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      height: 8.0,
      width: isActive ? 24.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.red : Colors.grey,
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingPage({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          SizedBox(height: 80.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}