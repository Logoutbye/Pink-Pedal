import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Themesdata/elevatedbutton/elevatedbutton.dart';
import 'package:liveproject/utilis/Themesdata/theme_text.dart';
import 'package:liveproject/utilis/Themesdata/themecolors.dart';
import 'package:liveproject/utilis/searchbar.dart';
import 'package:intl/intl.dart';

class Reviewscreen extends StatefulWidget {
  const Reviewscreen({Key? key}) : super(key: key);

  @override
  State<Reviewscreen> createState() => _ReviewscreenState();
}

class _ReviewscreenState extends State<Reviewscreen> {
  String phonNo = '03169913414';
  String deriverName = 'Younis Arif';
  String carName = 'Civic';
  String carColor = 'Black';
  String carNum = 'MNA1876';
  String LocationTo = 'Institute of Business Administration - K...';
  String LocationFrom = 'Khalid Bin Walid Road';
  int payment=600;

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();

    // Format the date
    String formattedDate = DateFormat('yyyy-MM-dd').format(currentDate);
     String formattedtime = DateFormat('h:mm a').format(currentDate);

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            height: height * 0.36,
            width: width,
            color: Colors.teal,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CustomSearchBar(),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height * 0.64,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Driver details',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/Image.png'),
                            ),
                            title: Text(deriverName),
                            subtitle: Row(
                              children: [
                                Icon(Icons.call),
                                SizedBox(width: 5),
                                Text(phonNo),
                              ],
                            ),
                            // Add other ListTile properties as needed
                          ),
                        ),
                        Icon(
                          Icons.message_outlined,
                          size: 30,
                          color: Themecolor.containercolor,
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(
                          Icons.add_call,
                          size: 30,
                          color: Themecolor.containercolor,
                        )
                        // Add other widgets next to the ListTile if needed
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Divider(
                      color: Color(0xFFEBEBEB),
                    ),
                    Text(
                      'Car Info',
                      style: Themetext.btextstyle.copyWith(
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/reviewimage.png',
                          height: height * 0.1,
                          width: width * 0.2,
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                  text: 'car:',
                                  style: Themetext.btextstyle.copyWith(
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w400)),
                              TextSpan(
                                  text: carName,
                                  style: Themetext.btextstyle.copyWith(
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w600))
                            ])),
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                  text: 'Color:',
                                  style: Themetext.btextstyle.copyWith(
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w400)),
                              TextSpan(
                                  text: carColor,
                                  style: Themetext.btextstyle.copyWith(
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w600))
                            ])),
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                  text: 'Number:',
                                  style: Themetext.btextstyle.copyWith(
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w400)),
                              TextSpan(
                                  text: carNum,
                                  style: Themetext.btextstyle.copyWith(
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w600))
                            ]))
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Divider(
                      color: Color(0xFFEBEBEB),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.location_on,
                        color: Themecolor.iconColor,
                      ),
                      title: Text(
                        LocationTo,
                        style: Themetext.Etextstyle,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.location_on,
                        color: Themecolor.iconColor2,
                      ),
                      title: Text(
                        LocationFrom,
                        style: Themetext.Etextstyle,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_month_outlined,
                        size: width*0.05,
                        ),
                        SizedBox(width: width*0.01),
                        Text(" $formattedDate",
                        style: Themetext.Etextstyle.copyWith(
                          fontWeight: FontWeight.w400,
                          
                        ),),
                        SizedBox(width: width*0.2,),
                        Icon(Icons.timer_outlined,
                            size: width*0.05,),
                          SizedBox(width: width*0.01),
                          Text('$formattedtime',
                            style: Themetext.Etextstyle.copyWith(
                          fontWeight: FontWeight.w400,
                          
                        )
                          ),
                           SizedBox(width: width*0.2,),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'est.PKR:',
                                  style: Themetext.Etextstyle.copyWith(
                                    fontWeight: FontWeight.w300
                                  )
                                ),
                                TextSpan(
                                  text: '$payment',
                                  style: Themetext.Etextstyle.copyWith(
                                    fontWeight: FontWeight.w600
                                )),
                              ]
                            )
                          )
                      ],
                    ),
                    SizedBox(height: height*0.03,),
                    Center(child: Text('Driver is on its way',
                    style: Themetext.Etextstyle.copyWith(
                      fontWeight: FontWeight.w900,
                      fontSize: 17
                    ),)),
                    CustomElevatedButton(
                      
                      buttonText: 'Cancel', onPressed: (){

                    })

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
