import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Themesdata/elevatedbutton/elevatedbutton.dart';
import 'package:liveproject/utilis/Themesdata/theme_text.dart';
import 'package:liveproject/utilis/Themesdata/themecolors.dart';
import 'package:liveproject/utilis/constant/assetpath.dart';
import 'package:liveproject/utilis/icons/icons.dart';

class BasicInfo extends StatefulWidget {
  const BasicInfo({super.key});

  @override
  State<BasicInfo> createState() => _BasicInfoState();
}

class _BasicInfoState extends State<BasicInfo> {
  TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Themecolor.container2,
        leading: CommonIcons.arrowback,
        title: Text(
          'Basic Info',
          style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    maxRadius: 50,
                    backgroundImage: AssetImage(AssetPaths.image1),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Center(
                  child: Container(
                      height: height * 0.04,
                      width: width * 0.2,
                      decoration: BoxDecoration(
                          color: Themecolor.container,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                          child: Text('Add Profile', style: Themetext.ctextstyle))),
                ),
            
                // Email
                Text('Full Name',
                    style:
                        Themetext.btextstyle.copyWith(fontWeight: FontWeight.bold)),
                SizedBox(height: height * 0.01),
                Container(
                  padding: EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    color: Themecolor.textfield,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    controller: _nameController,
                    // enabled: isEditable,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Enter Your Full Name',
                      labelStyle: Themetext.btextstyle,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.01),
                // Email
                Text('Last Name',
                    style:
                        Themetext.btextstyle.copyWith(fontWeight: FontWeight.bold)),
                SizedBox(height: height * 0.01),
                Container(
                  padding: EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    color: Themecolor.textfield,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    controller: _nameController,
                    // enabled: isEditable,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Enter Your Last Name',
                      labelStyle: Themetext.btextstyle,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.01),
                Text('CNIC Number',
                    style:
                        Themetext.btextstyle.copyWith(fontWeight: FontWeight.bold)),
                SizedBox(height: height * 0.01),
                Container(
                  padding: EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    color: Themecolor.textfield,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    controller: _nameController,
                    // enabled: isEditable,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Enter Your CNIC',
                      labelStyle: Themetext.btextstyle,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.01),
                Text(
                  'CNIC',
                  style: Themetext.atextstyle,
                ),
                SizedBox(height: height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      maxRadius: 50,
                      child: Icon(
                        Icons.perm_contact_calendar_outlined,
                        size: 40,
                      ),
                    ),
                    CircleAvatar(
                      maxRadius: 50,
                      child: Icon(
                        Icons.perm_contact_calendar_outlined,
                        size: 40,
                      ),
                    ),
                  ],
                ),
                 SizedBox(height: height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: height * 0.04,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                            color: Themecolor.container,
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Center(
                            child:
                                Text('Upload', style: Themetext.ctextstyle))),
                                Container(
                        height: height * 0.04,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                            color: Themecolor.container,
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Center(
                            child:
                                Text('Upload', style: Themetext.ctextstyle))),
                  ],
                ),
                  SizedBox(height: height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Text('CNIC front Side',style: Themetext.btextstyle,),
                  Text('CNIC Back Side',style: Themetext.btextstyle,)
                ],),
                 SizedBox(height: height * 0.01),
                Text('Selfie With ID',style: Themetext.atextstyle,),
                 SizedBox(height: height * 0.01),
                  Center(
                  child: CircleAvatar(
                    maxRadius: 50,
                 child: Icon(Icons.camera_front_rounded,
                 size: 40,),
                  ),
                ),
                  SizedBox(height: height * 0.03),
                  Center(child: CustomElevatedButton(text: 'Next', onPressed: (){}))



              ],
            ),
          ],
        ),
      ),
    );
  }
}
