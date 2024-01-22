import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Themesdata/elevatedbutton/elevatedbutton.dart';
import 'package:liveproject/view/screens/login_screens/signinscreens.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

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
        title: Text('Sign up', style: Theme.of(context).textTheme.bodyMedium
            // Set text color for AppBar title
            ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 400,
              padding: EdgeInsets.all(15),
              color: Color(0xFF03008B),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create Account',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Color(0xFFFFFFFF)),
                  ),
                  Text('Please to fill up the data to create your account',
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextField(
                    // controller: emailtext,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      labelStyle:
                          Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xFF9CA4AB),
                              ),
                      hintText: 'Enter Your Full Name',
                      hintStyle: Theme.of(context).textTheme.bodyMedium,
                     contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 8), // Adjust padding
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                 SizedBox(height: height*0.03,),
                  TextField(
                    // controller: emailtext,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: 'User Name',
                      labelStyle: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Color(0xFF9CA4AB)),
                      hintText: 'Enter Your User Name',
                      hintStyle: Theme.of(context).textTheme.bodyMedium,
                      contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(
                            10)), // Use Radius.circular to specify the border radius
                      ),
                    ),
                  ),
                    SizedBox(height: height*0.03,),
                  TextField(
                    // controller: emailtext,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      labelStyle: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Color(0xFF9CA4AB)),
                      hintText: 'Enter Your Email Address',
                      hintStyle: Theme.of(context).textTheme.bodyMedium,
                       contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(
                            10)), // Use Radius.circular to specify the border radius
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.03,),
                  TextField(
                    // controller: emailtext,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      labelStyle: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: const Color(0xFF9CA4AB)),
                      hintText: 'Enter Your Phone Number',
                      hintStyle: Theme.of(context).textTheme.bodyMedium,
                      contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(
                            10)), // Use Radius.circular to specify the border radius
                      ),
                    ),
                  ),
                ],
              ),
            ),
              SizedBox(height: height*0.05,),
            CustomElevatedButton(
                buttonText: 'Create An Account',
                onPressed: () {
                  navigatorsignup();
                }),
          ],
        ),
      ),
    );
  }

  void navigatorsignup() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SigninScreen()));
  }
}
