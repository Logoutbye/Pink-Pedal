import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Routes/Named_Routes.dart';
import 'package:liveproject/utilis/Themesdata/elevatedbutton/elevatedbutton.dart';
import 'package:liveproject/utilis/Themesdata/theme_text.dart';
import 'package:liveproject/utilis/Themesdata/themecolors.dart';

class Forgot_password extends StatefulWidget {
  const Forgot_password({super.key});

  @override
  State<Forgot_password> createState() => _Forgot_passwordState();
}

class _Forgot_passwordState extends State<Forgot_password> {
  TextEditingController emailController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:const Icon(Icons.arrow_back),
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text('Forgot Password',
              style: Theme.of(context).textTheme.bodyLarge,),
            ),
            SizedBox(height: height*0.02,),
           const Text('Recover your account password'),
             SizedBox(height: height*0.02,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Email Address', style: Themetext.btextstyle.copyWith(
                                          fontWeight: FontWeight.bold
                                        )),
                        ],
                      ),
                SizedBox(height: height * 0.01),
                    Container(
                              height: height*0.07,
                    padding:const EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      color: Themecolor.textfield,
                      borderRadius: BorderRadius.circular(15),
                    ),
                      child: TextField(
                        
                        controller: emailController,
                        keyboardType: TextInputType.text,
                          style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Your Email Address',
                           hintStyle: Themetext.btextstyle,
                            contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 8), 
                        
                        ),
                      ),
                    ),
          
                            SizedBox(height: height*0.05,),
                            CustomElevatedButton(
                              text: 'Send OTP',
                               onPressed: ()=> Navigator.pushNamed(context, RoutesName.otpCode))
          ],
        ),
      ),
    );
  }
 
}
