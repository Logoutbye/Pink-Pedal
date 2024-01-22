import 'package:flutter/material.dart';
import 'package:liveproject/view/screens/login_screens/signup.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FirstOnboardingScreen extends StatefulWidget {
  const FirstOnboardingScreen({Key? key}) : super(key: key);

  @override
  State<FirstOnboardingScreen> createState() => _FirstOnboardingScreenState();
}

class _FirstOnboardingScreenState extends State<FirstOnboardingScreen> {
  PageController page1controller = PageController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                
                controller: page1controller,
                children: [
                  Reusable(
                    imagepath: 'assets/images/pics1.jpg',
                    title: 'Best Application for explore the world',
                    description:
                        'Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem . ',
                  ),
                  Reusable(
                    imagepath: "assets/images/pics2.jpg",
                    title: 'Rent From Over 36 Latest Car Models',
                    description:
                        'Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem . ',
                  ),
                  Reusable(
                    imagepath: 'assets/images/pics3.jpg',
                    title: 'Need to Rent a Car ? We are Everywhere',
                    description:
                        'Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem . ',
                  ),
                ],
                physics: BouncingScrollPhysics(),
              ),
            ),
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 2, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmoothPageIndicator(
                    controller: page1controller,
                    count: 3,
                    effect: WormEffect(
                      spacing: 15,
                      dotColor:Color(0xFF483285),
                      activeDotColor: Colors.white ,
                    ),
                    onDotClicked: (int index){
                      page1controller.animateToPage(index, 
                      duration: Duration(microseconds: 500),
                       curve: Curves.easeIn);

                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
    Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    ElevatedButton(
     onPressed: () {
                if (page1controller.page == 2) {
                  // If on the last page, navigate to signup screen
                  navigatorbutton();
                } else {
                  // Move to the next page
                  page1controller.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                }
              },
      style: ElevatedButton.styleFrom(
        // backgroundColor: Colors.deepPurple, // Set the background color to purple
        padding: EdgeInsets.only(left: 120,right: 120),
      ),
      child: Center(
        child: Text(
          'Next',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black, // Set the text color to white
          ),
        ),
      ),
    ),
  ],
)

        
          ],
        ),
      ),
    );
  }
  void navigatorbutton(){
    Navigator.push(context, 
    MaterialPageRoute(builder: (context)=>Signup()));
  }
}

class Reusable extends StatelessWidget {
  final imagepath;
  final title;
  final description;

  Reusable({
    Key? key,
    required this.imagepath,
    required this.title,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagepath),
          SizedBox(
            height: 40,
          ),
          Text(
            title,
            style: TextStyle(
              textBaseline: TextBaseline.alphabetic,
              fontSize: 24,
              fontWeight: FontWeight.w700,
              
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            description ?? '', // Added null check for description
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    );
  }
}
