import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Routes/routes_name.dart';
import 'package:liveproject/utilis/components/elevatedbutton.dart';
import 'package:liveproject/utilis/theme/theme_text.dart';
import 'package:liveproject/utilis/theme/themecolors.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
   TextEditingController emailtext=TextEditingController();
  TextEditingController passtext=TextEditingController();


  @override
  Widget build(BuildContext context) {
      final height=MediaQuery.of(context).size.height;
        final width=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundColor: const Color(0xFF483285),
          foregroundColor: Colors.white54,
          radius: 10,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
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
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              color: const Color(0xFF03008B),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create Account',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: const Color(0xFFFFFFFF)),
                  ),
                  SizedBox(height: height*0.01,),
                  Text('Please to fill up the data to create your account',
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Full Name', style: Themetext.btextstyle.copyWith(
                fontWeight: FontWeight.bold
              )),
                SizedBox(height: height * 0.01),
                    Container(
                         height: height*0.07,
                    padding: const EdgeInsets.only(left: 8),
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
                          hintText: 'Enter Your Full Name',
                          hintStyle: Themetext.btextstyle ,
                           contentPadding:const EdgeInsets.symmetric(horizontal: 8,vertical: 8), 
                        
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height*0.01,
                    ),
                         Text('Phone Number', style: Themetext.btextstyle.copyWith(
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
                          style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Your phone Number',
                           hintStyle: Themetext.btextstyle,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8), 
                        
                        ),
                      ),
                    ),
                       SizedBox(
                      height: height*0.01,
                    ),
                         Text('Email Address', style: Themetext.btextstyle.copyWith(
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
                          style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Your Email Address',
                           hintStyle: Themetext.btextstyle,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8), 
                        
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
                          style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Your Password',
                           hintStyle: Themetext.btextstyle,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8), 
                        
                        ),
                      ),
                    ),
                ],
              ),
            ),
              SizedBox(height: height*0.05,),
            CustomElevatedButton(
                text: 'Create An Account',
                onPressed: () {
                  navigatorsignup();
                }),
          ],
        ),
      ),
    );
  }

  void navigatorsignup() {
   Navigator.pushNamed(context, RoutesName.otpCode);
  }

}
