import 'package:flutter/material.dart';
import 'package:turath/core/utils/app_assets.dart';
import 'package:turath/core/utils/app_colors.dart';
import 'package:turath/features/home/home_screen.dart';
import 'package:turath/features/login/login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              _buildPage(
                image: Assets.imagesOnboarding1image,
                title: 'Welcome to Our App',
                description: 'Explore the amazing features we offer',
                pageIndex: 0,
              ),
              _buildPage(
                image: Assets.imagesOnboarding2image,
                title: 'Discover',
                description: "Let's Explore History Together",
                pageIndex: 1,
              ),
              Container(
                // width: double.infinity,
                // height: double.infinity,
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: _buildPage(
                        image: Assets.imagesOnboarding3image,
                        title: 'Get Started Now!',
                        description: 'Join us and enjoy the journey',
                        pageIndex: 2,
                      ),
                    ),
                    Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 550,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                    color: AppColors.primaryColor, width: 2),
                                minimumSize: const Size(350, 50),
                                backgroundColor: Colors.transparent,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                                textStyle: const TextStyle(fontSize: 18),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                "Let's Start",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.secondaryColor),
                              ),
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(350, 50),
                                backgroundColor: AppColors.primaryColor,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                                textStyle: const TextStyle(fontSize: 18),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                "Log in",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.secondaryColor),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
          _buildPageIndicator(),
        ],
      ),
    );
  }

  Widget _buildPage({
    required String image,
    required String title,
    required String description,
    required int pageIndex,
  }) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 1.0;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page! - pageIndex;
          value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
        }

        return Opacity(
          opacity: value,
          child: Transform(
            transform: Matrix4.identity()..scale(value, value),
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black87,
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  opacity: 0.7,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 250),
                  Text(
                    title,
                    style: TextStyle(
                        color: AppColors.textColorPrimary,
                        fontSize: 40,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      color: AppColors.textColorPrimary,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildPageIndicator() {
    return Positioned(
      bottom: 30,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          3,
          (index) => AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: const EdgeInsets.symmetric(horizontal: 5),
            height: 10,
            width: _currentPage == index ? 20 : 10,
            decoration: BoxDecoration(
              color:
                  _currentPage == index ? AppColors.primaryColor : Colors.grey,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
    );
  }
}
