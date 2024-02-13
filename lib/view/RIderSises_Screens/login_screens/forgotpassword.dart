import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Routes/Named_Routes.dart';
import 'package:liveproject/utilis/Themesdata/elevatedbutton/elevatedbutton.dart';

class Forgot_password extends StatefulWidget {
  const Forgot_password({super.key});

  @override
  State<Forgot_password> createState() => _Forgot_passwordState();
}

class _Forgot_passwordState extends State<Forgot_password> {
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
             SizedBox(height: height*0.03,),
                  TextField(
                          // controller: emailtext,
                            keyboardType: TextInputType.text,
                              style:const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              labelText: 'Email Address',
                              labelStyle: Theme.of(context).textTheme.bodySmall,
                              hintText: 'Enter Your Email Address',
                              hintStyle: Theme.of(context).textTheme.bodyMedium ,
                               contentPadding:const EdgeInsets.symmetric(horizontal: 8,vertical: 8), 
                              border:const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    10)), // Use Radius.circular to specify the border radius
                              ),
                            ),
                          ),
                            SizedBox(height: height*0.05,),
                            CustomElevatedButton(
                              text: 'Next',
                               onPressed: ()=> Navigator.pushNamed(context, RoutesName.createNewPassword))
          ],
        ),
      ),
    );
  }
 
}
