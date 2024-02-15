import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Routes/Named_Routes.dart';
import 'package:liveproject/utilis/Themesdata/elevatedbutton/elevatedbutton.dart';
import 'package:liveproject/utilis/Themesdata/theme_text.dart';
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
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Themecolor.container2,
        leading: CommonIcons.arrowback,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      Container(
        alignment: Alignment.center,
      child: Column(
        children: [
              Text('Account Recovery Option',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold
              )),
          Text('Continue with email or Continue with ',style: Themetext.btextstyle,),
          Text('phone to retrieve your account access',style: Themetext.btextstyle,),
             SizedBox(height: height*0.03,),
          CustomElevatedButton(text: 'Continue With Email', onPressed: (){
            Navigator.pushNamed(context, RoutesName.forGotPassword);
          }),
          SizedBox(height: height*0.02,),
           CustomElevatedButton(text: 'Continue With Phone', onPressed: (){}),
        ],
      ),
      )
        ],
      ),
    );
  }
}