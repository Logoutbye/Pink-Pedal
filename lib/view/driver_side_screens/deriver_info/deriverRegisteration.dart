import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Themesdata/elevatedbutton/elevatedbutton.dart';
import 'package:liveproject/utilis/Themesdata/theme_text.dart';
import 'package:liveproject/utilis/Themesdata/themecolors.dart';
import 'package:liveproject/utilis/constant/icons.dart';

class DeriverRegisteration extends StatefulWidget {
  const DeriverRegisteration({Key? key}) : super(key: key);

  @override
  State<DeriverRegisteration> createState() => _DeriverRegisterationState();
}

class _DeriverRegisterationState extends State<DeriverRegisteration> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Themecolor.container2,
        leading: CommonIcons.arrowback,
        title: Text(
          'Registration',
          style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children:  [
          ListTile(
            leading: Icon(Icons.person_2_outlined),
            title: Text('Basic Info', style: Themetext.atextstyle),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(color: Themecolor.Divider,),
          ListTile(
            leading: Icon(Icons.add_card_rounded),
            title: Text('CNIC', style: Themetext.atextstyle),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(color: Themecolor.Divider,),
          ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('Basic Info', style: Themetext.atextstyle),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(color: Themecolor.Divider,),
          ListTile(
            leading: Icon(Icons.car_crash_outlined),
            title: Text('Basic Info', style: Themetext.atextstyle),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
SizedBox(height: height*0.05,),
          CustomElevatedButton(
            size: Size(width*0.9, height*0.04),
            text: 'Done', onPressed: (){})
        ],
      ),
    );
  }
}
