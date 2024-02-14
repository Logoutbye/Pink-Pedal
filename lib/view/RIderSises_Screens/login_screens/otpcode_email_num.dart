import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Themesdata/elevatedbutton/elevatedbutton.dart';
import 'package:liveproject/utilis/Themesdata/themecolors.dart';
import 'package:liveproject/utilis/constant/icons.dart';
class OTP_Email_Num extends StatefulWidget {
  const OTP_Email_Num({super.key});

  @override
  State<OTP_Email_Num> createState() => _OTP_Email_NumState();
}

class _OTP_Email_NumState extends State<OTP_Email_Num> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Themecolor.container2,
        leading: CommonIcons.arrowback,
      ),
      body: Column(
        children: [
          Text('Account Recovery Option'),
          Text('Continue with email or Continue with phone to retrieve your account access'),
          CustomElevatedButton(text: 'Continue With Email', onPressed: (){}),
           CustomElevatedButton(text: 'Continue With Phone', onPressed: (){}),
        ],
      ),
    );
  }
}