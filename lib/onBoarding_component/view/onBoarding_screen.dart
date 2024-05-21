import 'package:component/onBoarding_component/view/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../comman/assest_images.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
 /* PageController _controller = PageController();

  //keep track of if we are on the last page or not
  bool onLastPage = false;*/

  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
              alignment: Alignment.topRight,
                  child:  TextButton(
                    onPressed: () {
                      _pageController.animateToPage(
                        _currentPage + 2,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );

                    },
                    child: Text('Skip'),
                  ),),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: [
                  OnboardingPage(
                    title: 'Page 1',
                    description: 'Description for Page 1',
                  ),
                  OnboardingPage(
                    title: 'Page 2',
                    description: 'Description for Page 2',
                  ),
                  OnboardingPage(
                    title: 'Page 3',
                    description: 'Description for Page 3',
                  ),
                ],
              ),
            ),

            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  if (_currentPage < 2) {
                    _pageController.animateToPage(
                      _currentPage + 1,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  } else {
                    // Navigate to the next screen or perform any action
                    // when the user completes the onboarding.
                    print('Onboarding completed');
                  }
                },
                child: Text(_currentPage < 2 ? 'Next' : 'Finish'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}





class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;

  OnboardingPage({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsImages.splashBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text(
            description,
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Home Page "),
      )
    );
  }
}


