import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Routes/Named_Routes.dart';
import 'package:liveproject/utilis/Themesdata/elevatedbutton/elevatedbutton.dart';
import 'package:liveproject/utilis/Themesdata/theme_text.dart';
import 'package:liveproject/utilis/Themesdata/themecolors.dart';

// import 'package:liveproject/view/screens/login_screens/otp.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController emailtext=TextEditingController();
  TextEditingController passtext=TextEditingController();
  @override
  Widget build(BuildContext context) {
       var height=MediaQuery.of(context).size.height;
       var width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        
        leading: CircleAvatar(
          backgroundColor: Color(0xFF483285),
          foregroundColor: Colors.white54,
          radius: 10,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
        ),
        title: Text(
          'Sign in',
          style:
              TextStyle(color: Colors.white), // Set text color for AppBar title
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           
            Container(
              
              height: height*0.12,
              width: double.infinity,
              padding: EdgeInsets.all(15),
              color: Color(0xFF03008B),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, Welcome Back! 👋',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Color(0xFFFFFFFF)
                    ),
                  ),
                SizedBox(height: height*0.01,),
                  Text('Please fill up your information to continue',
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
            SizedBox(
              height: height*0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email Address', style: Themetext.btextstyle.copyWith(
              fontWeight: FontWeight.bold
            )),
              SizedBox(height: height * 0.01),
                  Container(
                       height: height*0.07,
                  padding: EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    color: Themecolor.textfield,
                    borderRadius: BorderRadius.circular(15),
                  ),
                    child: TextField(
                    controller: emailtext,
                      keyboardType: TextInputType.text,
                        style:const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                         border: InputBorder.none,
                        hintText: 'Enter Your Email Address',
                        hintStyle: Themetext.btextstyle ,
                         contentPadding:const EdgeInsets.symmetric(horizontal: 8,vertical: 8), 
                      
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height*0.01,
                  ),
                       Text('Password', style: Themetext.btextstyle.copyWith(
              fontWeight: FontWeight.bold
            )),
              SizedBox(height: height * 0.01),
                  Container(
                            height: height*0.07,
                  padding:const EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    color: Themecolor.textfield,
                    borderRadius: BorderRadius.circular(15),
                  ),
                    child: TextField(
                      
                      controller: passtext,
                      keyboardType: TextInputType.text,
                        style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your Password',
                         hintStyle: Themetext.btextstyle,
                          contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 8), 
                      
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false, // Set the initial value as needed
                        onChanged: (bool? value) {
                          // Handle the state change
                        },
                      ),
                      SizedBox(
                    height: height*0.02,
                  ),
        
                      Text('Remember Me',
                          style: Theme.of(context).textTheme.bodyMedium),
                      SizedBox(
                        width: width*0.5,
                      ),
                      InkWell(
                        onTap: ()=>Navigator.pushNamed(context, RoutesName.otpEmailNum),
                        child: Text('Forgot Password',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Color(0xFF03008B))),
                      )
                    ],
                  ),
                     SizedBox(height: height*0.03,),
                   Center(
                     child: CustomElevatedButton(
                                     text: 'Sign in',
                                     onPressed: () {
                                       navigatorsignin();
                                     },
                                   ),
                   ),
            SizedBox(height: height*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don’t have an account? '),
                GestureDetector(
                  onTap: (){
                
                  },
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, RoutesName.signUpUser);
                    },
                    child: Text('Signup',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color:Color(0xFF03008B)
                    ),),
                  ),
                ),
               
              ],
            ),
            SizedBox(height: height*0.3,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
               Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'By signing up you agree to our ',style: Themetext.btextstyle
                    ),
                    TextSpan(
                      text: 'Terms ',style: Theme.of(context).textTheme.bodySmall
                    ),
                    TextSpan(
                      text: 'and ',style: Themetext.btextstyle
                    ),
                    TextSpan(
                      text: 'Conditions of Use',style: Theme.of(context).textTheme.bodySmall
                    )
                  ]
                )
               )
               ],
             )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  void navigatorsignin(){
  Navigator.pushNamed(context, RoutesName.addDestination);
  }
}
