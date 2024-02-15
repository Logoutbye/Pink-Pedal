import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Routes/routes_name.dart';
import 'package:liveproject/utilis/constant/assetpath.dart';

class FirstOnboardingScreen extends StatefulWidget {
  const FirstOnboardingScreen({Key? key}) : super(key: key);

  @override
  State<FirstOnboardingScreen> createState() => _FirstOnboardingScreenState();
}

class _FirstOnboardingScreenState extends State<FirstOnboardingScreen> {
  PageController pageController = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const BouncingScrollPhysics(),
        onPageChanged: (int page) {
          if (page == 2) { // Assuming last screen is at index 2
            // Navigate to desired screen
           Navigator.pushNamed(context, RoutesName.deriverUser);
          }
        },
        children: const [
          Reusable(imagepath: AssetPaths.onBoarding11),
          Reusable(imagepath: AssetPaths.onBoarding2),
          Reusable(imagepath: AssetPaths.onBoarding3),
        ],
      ),
    );
  }
}

class Reusable extends StatelessWidget {
  final String imagepath;

  const Reusable({Key? key, required this.imagepath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      height: height,
      child: Image.asset(
        imagepath,
        fit: BoxFit.cover, // Make the image cover the entire container
      ),
    );
  }
}
