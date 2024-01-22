import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Themesdata/elevatedbutton/elevatedbutton.dart';
import 'package:liveproject/view/screens/login_screens/otp.dart';

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
       final height=MediaQuery.of(context).size.height;
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
        child: Expanded(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20,
                color: Color(0xFF03008B),
              ),
              Container(
                width: 400,
                padding: EdgeInsets.all(20),
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
                    Text('Please fill up your information to continue',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                    controller: emailtext,
                      keyboardType: TextInputType.text,
                        style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                          labelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xFF9CA4AB)
                                ),
                        hintText: 'Enter Your Email Address',
                        hintStyle: Theme.of(context).textTheme.bodyMedium ,
                         contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 8), 
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              10)), // Use Radius.circular to specify the border radius
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height*0.03,
                    ),
                    TextField(
                      controller: passtext,
                      keyboardType: TextInputType.text,
                        style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelText: 'Password',
                          labelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xFF9CA4AB)
                                ),
                        hintText: 'Enter Your Password',
                         hintStyle: Theme.of(context).textTheme.bodyMedium,
                          contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 8), 
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              10)), // Use Radius.circular to specify the border radius
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
                        Text('Remember Me',
                            style: Theme.of(context).textTheme.bodyMedium),
                        SizedBox(
                          width: 40,
                        ),
                        Text('Forgot Password',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Color(0xFF03008B)))
                      ],
                    ),
                       SizedBox(height: height*0.03,),
                     CustomElevatedButton(
                buttonText: 'Sign in',
                onPressed: () {
                  navigatorsignin();
                },
              ),
              SizedBox(height: height*0.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t have an account? '),
                  GestureDetector(
                    onTap: (){
        
                    },
                    child: Text('Signup',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color:Color(0xFF03008B)
                    ),),
                  ),
                 
                ],
              ),
              SizedBox(height: height*0.07 ,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Expanded(child: Text('By signing up you agree to our Terms and Conditions of Use',
                   style: Theme.of(context).textTheme.bodyMedium,)
                   ),
                 ],
               )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void navigatorsignin(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Otpscreen()));
  }
}
