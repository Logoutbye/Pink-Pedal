import 'package:flutter/material.dart';
import 'package:liveproject/utilis/components/elevatedbutton.dart';
import 'package:liveproject/utilis/constant/assetpath.dart';
import 'package:liveproject/utilis/constant/icons.dart';
import 'package:liveproject/utilis/theme/theme_text.dart';
import 'package:liveproject/utilis/theme/themecolors.dart';

class DriverprofileDetail extends StatefulWidget {
  const DriverprofileDetail({super.key});

  @override
  State<DriverprofileDetail> createState() => _DriverprofileDetailState();
}

class _DriverprofileDetailState extends State<DriverprofileDetail> {
  String deriverPhone='03127032001';
  String driverEmail='umerishaq7387@gmail.com';
  String location='Abbottabad';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Themecolor.container2,
        ),
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Container(
        color: Themecolor.Divider,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Themecolor.container2,
                  borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(15),
              child: ListTile(
                leading: Container(
                  color: Themecolor.Divider,

                  height: height*0.1,
                  width: width*0.1,
                  child: Image.asset(AssetPaths.image1)),
                title: Text(
                  'Younis Arif',
                  style: Themetext.atextstyle,
                ),
                subtitle: Text(
                  'heavy vehicle driving',
                  style: Themetext.btextstyle,
                ),
                trailing: CustomElevatedButton(
                    color: Themecolor.Divider,
                    textColor: Themecolor.container,
                    size: Size(width * 0.15, height * 0.01),
                    text: 'Edit',
                    onPressed: () {}),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              margin: EdgeInsets.all(25),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Themecolor.container2,
                  borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.phone,color: Themecolor.container,),
                          SizedBox(width: width*0.01,),
                          Text(deriverPhone,style: Themetext.atextstyle,),
             
                        ],
                      ),
                                      SizedBox(height:height*0.01,),
              Divider(color: Themecolor.Divider,),
            SizedBox(height:height*0.01,),
             Row(
                        children: [
                          Icon(Icons.mail_outline_outlined,color: Themecolor.container,),
                          SizedBox(width: width*0.01,),
                          Text(driverEmail,style: Themetext.atextstyle,),
             
                        ],
                      ),
                                      SizedBox(height:height*0.01,),
              Divider(color: Themecolor.Divider,),
            SizedBox(height:height*0.01,),
             Row(
                        children: [
                          Icon(Icons.location_on_outlined,color: Themecolor.container,),
                          SizedBox(width: width*0.01,),
                          Text(location,style: Themetext.atextstyle,),
             
                        ],
                      ),
                                      SizedBox(height:height*0.01,),
              Divider(color: Themecolor.Divider,),
            SizedBox(height:height*0.01,),
             Row(
                        children: [
                          Icon(Icons.history,color: Themecolor.container,),
                          SizedBox(width: width*0.01,),
                          Text('History',style: Themetext.atextstyle,),
             
                        ],
                      ),
                                      SizedBox(height:height*0.01,),
              Divider(color: Themecolor.Divider,),
            SizedBox(height:height*0.01,),
             Row(
                        children: [
                          Icon(Icons.change_circle_outlined,color: Themecolor.container,),
                          SizedBox(width: width*0.01,),
                          Text('Change Password',style: Themetext.atextstyle,),
             
                        ],
                      ),
                                      SizedBox(height:height*0.01,),
              Divider(color: Themecolor.Divider,),
            SizedBox(height:height*0.01,),
             Row(
                        children: [
                          Icon(Icons.contact_phone_outlined,color: Themecolor.container,),
                          SizedBox(width: width*0.01,),
                          Text('Contact Us',style: Themetext.atextstyle,),
             
                        ],
                      ),
              
                    ],
                  ),
            )
          ],
        ),
      ),
    );
  }
}
