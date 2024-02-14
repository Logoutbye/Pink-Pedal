import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Routes/Named_Routes.dart';
import 'package:liveproject/utilis/Themesdata/elevatedbutton/elevatedbutton.dart';
import 'package:liveproject/utilis/Themesdata/themecolors.dart';
import 'package:liveproject/utilis/constant/assetpath.dart';
class splashScreenDeriver extends StatefulWidget {
  const splashScreenDeriver({super.key});

  @override
  State<splashScreenDeriver> createState() => _splashScreenDeriverState();
}

class _splashScreenDeriverState extends State<splashScreenDeriver> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
     var width=MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: Themecolor.container,
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            
            children: [
              Center(child: Image.asset(AssetPaths.splashimage)),
              // SizedBox(height: height*0.02,),
              CustomElevatedButton(
                textColor: Themecolor.unselecteditem,
                color: Themecolor.container2,
                text: 'Ride with us',
                 onPressed: (){
                  Navigator.pushNamed(context, RoutesName.signInUser);
                 }),
                   SizedBox(height: height*0.02,),
                   CustomElevatedButton(
                       textColor: Themecolor.unselecteditem,
                    color: Themecolor.container2,
                    text: 'Join As a Driver', onPressed: (){
                         Navigator.pushNamed(context, RoutesName.signInUser);
                    })

          
            ],
          ),
        ),
      ),
    );
  }
}