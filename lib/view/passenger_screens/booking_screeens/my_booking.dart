import 'package:liveproject/import_all.dart';

class MyBooking extends StatefulWidget {
  const MyBooking({super.key});

  @override
  State<MyBooking> createState() => _MyBookingState();
}

class _MyBookingState extends State<MyBooking> {
  String deriverName = 'younus arif';
  String rideName = 'civic';
  String distance = '3.3km';
  String time = '4 mint';
  String payment = '600';
  String startLocation = 'Choose start location';
  String yourDestination = 'Choose your destination';
  String ridenum = 'MNA434';
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'My Bookings',
          style: Themetext.Dtextstyle,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: ListTile(
                      leading: CircleAvatar(
                        maxRadius: width * 0.05,
                        backgroundImage: const AssetImage(AssetPaths.image),
                      ),
                      title: Text(
                        deriverName,
                        style: Themetext.Dtextstyle,
                      ),
                      subtitle: Text(
                        rideName,
                        style: Themetext.Dtextstyle.copyWith(
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      CustomElevatedButton(
                        text: 'contact',
                        onPressed: () {},
                        size: const Size(80.0, 20.0),
                      ),
                      Text(
                        'MR-AF-212',
                        style: Themetext.Dtextstyle,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 30,
                      ),
                      SizedBox(
                        width: width * 0.001,
                      ),
                      Text(
                        distance,
                        style: Themetext.atextstyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.timer_outlined, size: 30),
                      SizedBox(
                        width: width * 0.001,
                      ),
                      Text(
                        time,
                        style: Themetext.atextstyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.add_card_sharp, size: 30),
                      SizedBox(
                        width: width * 0.001,
                      ),
                      Text(
                        'Rs: $payment',
                        style: Themetext.atextstyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Text(
                    'Date & Time',
                    style: Themetext.btextstyle,
                  ),
                  SizedBox(
                    width: width * 0.56,
                  ),
                  Expanded(
                      child: Text(
                    dateTimeHelper.getCurrentDateTime(),
                    style: Themetext.btextstyle,
                  )),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const Divider(
              color: Themecolor.Divider,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                'Booking details',
                style: Themetext.btextstyle.copyWith(
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height * 0.22,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 20,
                          spreadRadius: 1,
                          offset: const Offset(0, 4))
                    ]),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.location_on),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Text(
                          startLocation,
                          style: Themetext.Dtextstyle,
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                      const  Icon(Icons.location_searching_sharp),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Text(
                          yourDestination,
                          style: Themetext.Dtextstyle,
                        )
                      ],
                    ),
                  const  Divider(
                      color: Color(0xFFF0EFF2),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        Image.asset(AssetPaths.image1),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              rideName,
                              style: Themetext.atextstyle,
                            ),
                            Text(ridenum)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Payment Method',
                style: Themetext.Dtextstyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding:const EdgeInsets.only(left: 8.0),
                height: height * 0.1,
                decoration: BoxDecoration(
                    borderRadius:const BorderRadius.all(Radius.circular(15)),
                    color: const Color(0xFFFFFFFF),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 20,
                          spreadRadius: 1,
                          offset: const Offset(0, 5))
                    ]),
                child: Row(
                  children: [
                  const  Icon(Icons.circle, color: Themecolor.selectedItem),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    const Icon(
                      Icons.payments_outlined,
                      color: Themecolor.selectedItem,
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Text(
                      'Cash',
                      style: Themetext.Etextstyle,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Center(
              child: CustomElevatedButton(
                  text: 'Chalo !',
                  onPressed: () {
                    opendialog();
                  }),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Center(
              child: CustomElevatedButton(
                  color: const Color(0xFFCBC9C5),
                  text: 'Cancel',
                  textStyle:const TextStyle(color: Colors.black),
                  onPressed: () {
                    openDialog();
                  }),
            )
          ],
        ),
      ),
    );
  }

  void opendialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Column(
              children: [
                Image.asset(
                  'assets/images/illusterate.png',
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
              const  Text(
                  'Your Ride are Started',
                )
              ],
            ),
          );
        });
  }

  void openDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Column(
              children: [
               const Text('Are you sure you want to cancel?'),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomElevatedButton(
                    color:const Color(0xFFEB1616),
                    text: 'Yes! Cancel',
                    onPressed: () {}),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomElevatedButton(
                    color:const Color(0xFF04018C),
                    text: 'No! Keep Ride',
                    onPressed: () {
                      opendialogbox();
                    }),
              ],
            ),
          );
        });
  }
  void opendialogbox(){
    showDialog(
      context: context, 
      builder: (context){
        return AlertDialog(
          title: Column(
            children: [
                Image.asset(
                    'assets/images/illusterate.png',
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                  Text('Ride Completed',
                 style: Themetext.Dtextstyle.copyWith(color:const Color(0xFF03008B)),),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                  Text('Your ride have been completed',
                  style: Themetext.Etextstyle.copyWith(color:const Color(0xFF9CA4AB)),),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                  CustomElevatedButton(text: 'Pay Now1', onPressed: ()=> Navigator.pushNamed(context, RoutesName.rideCompleted),
                  size: const Size(60, 30),)
            ],
          
          ),
        );

      }
      );
  }
}
