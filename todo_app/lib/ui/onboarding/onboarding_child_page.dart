import 'package:flutter/material.dart';

class OnboardingChildPage extends StatelessWidget {
  const OnboardingChildPage({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color(0xFF121212),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSkipButton(),
        _buildOnboardingImage(),
        _buildOnboardingPageControl(),
        _buildOnboardingTitleAndContent(),
      ],
    ),
  );
    }
    Widget _buildSkipButton(){
      return Container(
        margin: EdgeInsets.only(top: 14, ),
        child: TextButton(
          onPressed: (){

        },
         child: Text("SKIP", style: TextStyle(
          fontSize: 16,
          fontFamily: "Lato",
          color: Colors.white.withOpacity(0.44),
         ),)),
      );
    }
    Widget _buildOnboardingImage(){
      return Container();
    }
    Widget _buildOnboardingPageControl(){
      return Container();
    }
    Widget _buildOnboardingTitleAndContent(){
      return Container();
    }
}