import 'package:intl/intl.dart';
import 'package:liveproject/import_all.dart';

class CurrentDeriverDetails extends StatefulWidget {
  const CurrentDeriverDetails({Key? key}) : super(key: key);

  @override
  State<CurrentDeriverDetails> createState() => _CurrentDeriverDetailsState();
}

class _CurrentDeriverDetailsState extends State<CurrentDeriverDetails> {
  String phonNo = '03169913414';
  String deriverName = 'Younis Arif';
  String carName = 'Civic';
  String carColor = 'Black';
  String carNum = 'MNA1876';
  String LocationTo = 'Institute of Business Administration - K...';
  String LocationFrom = 'Khalid Bin Walid Road';
  int payment = 600;

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();

    // Format the date
    String formattedDate = DateFormat('yyyy-MM-dd').format(currentDate);
    String formattedtime = DateFormat('h:mm a').format(currentDate);

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios,color: Themecolor.container2,),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.view_day_rounded,color: Themecolor.container2,size: 30,),
          ),
        ],
      ),
      body: Stack(
        
        children: [
          Container(
            color: Themecolor.container,
            height: height * 0.36,
            width: double.infinity,
            child: Center(child: Image.asset(AssetPaths.splashimage,)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height * 0.6,
              width: width,
              decoration: const BoxDecoration(
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
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            leading: CircleAvatar(
                              maxRadius: width*0.04,
                              backgroundImage:
                                 const AssetImage(AssetPaths.image),
                            ),
                            title: Text(deriverName,style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold),),
                            subtitle: Row(
                              children: [
                                const Icon(Icons.call),
                                 SizedBox(width: width*0.001),
                                Text(phonNo),
                              ],
                            ),
                            // Add other ListTile properties as needed
                          ),
                        ),
                        Container(
                          width: width*0.1,
                          height: height*0.06,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xFF9E9E9E),
                                width: 2), // Add border color and width
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(Icons.message_outlined,
                              size: 35, color: Themecolor.container),
                        ),
                        SizedBox(
                          width: width*0.04,
                        ),
                        Container(
                          width: width*0.1,
                          height: height*0.06,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:const Color(0xFF9E9E9E),
                                width: 2), // Add border color and width
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.add_call,
                            size: 35,
                            color: Themecolor.container,
                          ),
                        )
                        // Add other widgets next to the ListTile if needed
                      ],
                    ),
                    SizedBox(
                      height: height * 0.003,
                    ),
                    const Divider(
                      color: Color(0xFFEBEBEB),
                    ),
                    Text(
                      'Car Info',
                      style: Themetext.btextstyle.copyWith(
                          color: const Color(0xFF000000),
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
                                      color: const Color(0xFF000000),
                                      fontWeight: FontWeight.w400)),
                              TextSpan(
                                  text: carName,
                                  style: Themetext.btextstyle.copyWith(
                                      color: const Color(0xFF000000),
                                      fontWeight: FontWeight.w600))
                            ])),
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                  text: 'Color:',
                                  style: Themetext.btextstyle.copyWith(
                                      color: const Color(0xFF000000),
                                      fontWeight: FontWeight.w400)),
                              TextSpan(
                                  text: carColor,
                                  style: Themetext.btextstyle.copyWith(
                                      color: const Color(0xFF000000),
                                      fontWeight: FontWeight.w600))
                            ])),
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                  text: 'Number:',
                                  style: Themetext.btextstyle.copyWith(
                                      color: const Color(0xFF000000),
                                      fontWeight: FontWeight.w400)),
                              TextSpan(
                                  text: carNum,
                                  style: Themetext.btextstyle.copyWith(
                                      color: const Color(0xFF000000),
                                      fontWeight: FontWeight.w600))
                            ]))
                          ],
                        )
                      ],
                    ),
                     SizedBox(
                      height: height * 0.003,
                    ),
                    const Divider(
                      color: Color(0xFFEBEBEB),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.location_on,
                        color: Themecolor.icon,
                      ),
                      title: Text(
                        LocationTo,
                        style: Themetext.Etextstyle,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.location_on,
                        color: Themecolor.icon2,
                      ),
                      title: Text(
                        LocationFrom,
                        style: Themetext.Etextstyle,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          size: width * 0.05,
                        ),
                        SizedBox(width: width * 0.01),
                        Text(
                          " $formattedDate",
                          style: Themetext.Etextstyle.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.2,
                        ),
                        Icon(
                          Icons.timer_outlined,
                          size: width * 0.05,
                        ),
                        SizedBox(width: width * 0.01),
                        Text(formattedtime,
                            style: Themetext.Etextstyle.copyWith(
                              fontWeight: FontWeight.w400,
                            )),
                        SizedBox(
                          width: width * 0.2,
                        ),
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: 'est.PKR:',
                              style: Themetext.Etextstyle.copyWith(
                                  fontWeight: FontWeight.w300)),
                          TextSpan(
                              text: '$payment',
                              style: Themetext.Etextstyle.copyWith(
                                  fontWeight: FontWeight.w600)),
                        ]))
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Center(
                        child: Text(
                      'Driver is on its way',
                      style: Themetext.Etextstyle.copyWith(
                          fontWeight: FontWeight.w900, fontSize: 17),
                    )),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    CustomElevatedButton(text: 'Cancel', onPressed: () {})
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
