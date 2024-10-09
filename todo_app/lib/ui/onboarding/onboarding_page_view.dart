import 'package:flutter/material.dart';
import 'package:todo_app/ui/onboarding/onboarding_child_page.dart';
class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({super.key});

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          OnboardingChildPage(),
          
           OnboardingChildPage(),
        ],
      ),
    );
  }
}