import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Themesdata/elevatedbutton/elevatedbutton.dart';
import 'package:liveproject/utilis/Themesdata/theme_text.dart';
import 'package:liveproject/utilis/Themesdata/themecolors.dart';
import 'package:liveproject/utilis/constant/icons.dart';

class VehicleInfoDetail extends StatefulWidget {
  const VehicleInfoDetail({super.key});

  @override
  State<VehicleInfoDetail> createState() => _VehicleInfoDetailState();
}

class _VehicleInfoDetailState extends State<VehicleInfoDetail> {
  TextEditingController  carModelController = TextEditingController();
  TextEditingController deriverLicenseController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Themecolor.container2,
        leading: CommonIcons.arrowback,
        title: Text('Vehicle Info',
            style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Car Model',
                    style:
                        Themetext.btextstyle.copyWith(fontWeight: FontWeight.bold)),
                SizedBox(height: height * 0.01),
                Container(
                  padding:const EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    color: Themecolor.textfield,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    controller: carModelController,
                    // enabled: isEditable,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    hintText: 'Apv',
                      hintStyle: Themetext.btextstyle,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.01),
                Text('Color',
                    style:
                        Themetext.btextstyle.copyWith(fontWeight: FontWeight.bold)),
                SizedBox(height: height * 0.01),
                Container(
                  padding:const EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    color: Themecolor.textfield,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    // controller: CarModelController,
                    // enabled: isEditable,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Select color Of Car',
                      hintStyle: Themetext.btextstyle,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.01),
                Text('Deriver License',
                    style:
                        Themetext.btextstyle.copyWith(fontWeight: FontWeight.bold)),
                SizedBox(height: height * 0.01),
                Container(
                  padding:const EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    color: Themecolor.textfield,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    controller: deriverLicenseController,
                    // enabled: isEditable,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Your Deriving License',
                      hintStyle: Themetext.btextstyle,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.01),
                Text(
                  'Upload your Driver License',
                  style: Themetext.Dtextstyle,
                ),
                SizedBox(height: height * 0.01),
              const  Center(
                  child: CircleAvatar(
                    maxRadius: 50,
                    child: Icon(
                      Icons.content_paste_go,
                      size: 40,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.02),
                Center(
                  child: Container(
                      height: height * 0.04,
                      width: width * 0.2,
                      decoration:const BoxDecoration(
                          color: Themecolor.container,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                          child: Text('Upload', style: Themetext.ctextstyle))),
                ),
                SizedBox(height: height * 0.01),
              const  Divider(
                  color: Themecolor.Divider,
                ),
                SizedBox(height: height * 0.01),
                Text(
                  'Photo of your vehicle',
                  style: Themetext.Dtextstyle,
                ),
                SizedBox(height: height * 0.01),
               const Center(
                  child: CircleAvatar(
                    maxRadius: 50,
                    child: Icon(
                      Icons.content_paste_go,
                      size: 40,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.02),
                Center(
                  child: Container(
                      height: height * 0.04,
                      width: width * 0.2,
                      decoration:const BoxDecoration(
                          color: Themecolor.container,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                          child: Text('Upload', style: Themetext.ctextstyle))),
                ),
                   SizedBox(height: height * 0.01),
              const  Divider(
                  color: Themecolor.Divider,
                ),
                SizedBox(height: height * 0.01),
                Text('Certificate of vehicle registration',style: Themetext.atextstyle,),
                  SizedBox(height: height * 0.01),
              const  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      maxRadius: 50,
                      child: Icon(
                        Icons.padding_outlined,
                        size: 40,
                      ),
                    ),
                    CircleAvatar(
                      maxRadius: 50,
                      child: Icon(
                          Icons.padding_outlined,
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
                        decoration:const BoxDecoration(
                            color: Themecolor.container,
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Center(
                            child:
                                Text('Upload', style: Themetext.ctextstyle))),
                                Container(
                        height: height * 0.04,
                        width: width * 0.2,
                        decoration:const BoxDecoration(
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
                  Text('Certificate of vehicle',style: Themetext.btextstyle,),
                  Text('Certificate of vehicle',style: Themetext.btextstyle,)
                ],),
                    SizedBox(height: height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Text('registration front Side',style: Themetext.btextstyle,),
                  Text('registration Back Side',style: Themetext.btextstyle,)
                ],),
                 SizedBox(height: height * 0.04),
                 Center(child: CustomElevatedButton(text: 'Done', onPressed: (){}))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
