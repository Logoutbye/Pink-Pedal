import 'package:flutter/material.dart';
import 'package:liveproject/utilis/components/elevatedbutton.dart';
import 'package:liveproject/utilis/constant/icons.dart';
import 'package:liveproject/utilis/theme/theme_text.dart';
import 'package:liveproject/utilis/theme/themecolors.dart';
class DriverEarnings extends StatefulWidget {
  const DriverEarnings({super.key});

  @override
  State<DriverEarnings> createState() => _DriverEarningsState();
}

class _DriverEarningsState extends State<DriverEarnings> {
  String earnings=' Rs: 1000';
  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Themecolor.container2,
        leading: CommonIcons.arrowback,
        title: Text('Earnings',style: Themetext.atextstyle.copyWith(
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Feb 4 - Feb 10',style: Themetext.atextstyle,),
            SizedBox(height:height*0.01,),
            Text(earnings,style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold,fontSize: 24),),
         SizedBox(height:height*0.01,),
              const Divider(color: Themecolor.Divider,),
              SizedBox(height:height*0.01,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Online",style:Themetext.atextstyle),
                Text('23hr to 18min',style: Themetext.atextstyle.copyWith(
          fontWeight: FontWeight.bold
        ),)
              ],),
               SizedBox(height:height*0.01,),
              const Divider(color: Themecolor.Divider,),
            SizedBox(height:height*0.01,),
                 Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Trip",style:Themetext.atextstyle),
                Text('56',style: Themetext.atextstyle.copyWith(
          fontWeight: FontWeight.bold
        ),)
              ],),
              SizedBox(height:height*0.01,),
              const Divider(color: Themecolor.Divider,),
            SizedBox(height:height*0.01,),
                 Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Points",style:Themetext.atextstyle),
                Text('78',style: Themetext.atextstyle.copyWith(
          fontWeight: FontWeight.bold
        ),)
              ],),
              SizedBox(height:height*0.03,),
              Center(
                
                child: CustomElevatedButton(
                  size: Size(width*0.9, height*0.02),
                  text: 'See Details', onPressed: (){})),
                  SizedBox(height:height*0.03,),
                  
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Themecolor.Divider,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Balance: Rs 20,000',style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold,fontSize: 18),),
                         SizedBox(height:height*0.01,),
                        Text('Next Payment Scheduled for Feb 11',style: Themetext.atextstyle,),
                          SizedBox(height:height*0.02,),
                          CustomElevatedButton(
                            size: Size(width*0.2, height*0.01),
                            text: 'Check out', onPressed: (){})
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
}