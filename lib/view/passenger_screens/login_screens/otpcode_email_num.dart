import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Routes/routes_name.dart';
import 'package:liveproject/utilis/components/elevatedbutton.dart';
import 'package:liveproject/utilis/theme/theme_text.dart';
import 'package:liveproject/utilis/theme/themecolors.dart';
import 'package:liveproject/utilis/constant/icons.dart';
class OTPEmailNum extends StatefulWidget {
  const OTPEmailNum({super.key});

  @override
  State<OTPEmailNum> createState() => _OTPEmailNumState();
}

class _OTPEmailNumState extends State<OTPEmailNum> {
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