import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Routes/routes_name.dart';
import 'package:liveproject/utilis/components/elevatedbutton.dart';
import 'package:liveproject/utilis/theme/theme_text.dart';
import 'package:liveproject/utilis/constant/assetpath.dart';
import 'package:liveproject/utilis/constant/date_time.dart';

class RideCompleted extends StatefulWidget {
  const RideCompleted({super.key});

  @override
  State<RideCompleted> createState() => _RideCompletedState();
}

class _RideCompletedState extends State<RideCompleted> {
  String deriverName = 'Younis Arif';
  String rideName = 'civic';
  String distance = '3.3km';
  String time = '4 mint';
  String payment = '600';
  String? selectedPaymentMethod;
  List<String> paymentList = [ 'Credit Card', 'Wallet'];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back),
        title: Text(
          'Ride Completed',
          style: Themetext.Dtextstyle,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
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
            SizedBox(
              height: height * 0.02,
            ),
            Row(
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
                SizedBox(
                  width: width * 0.1,
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
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              children: [
                Text(
                  'Date & Time',
                  style: Themetext.btextstyle,
                ),
                SizedBox(
                  width: width * 0.1,
                ),
                Expanded(
                  child: Text(
                    dateTimeHelper.getCurrentDateTime(),
                    style: Themetext.btextstyle,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: 'Total Amount :',
                      style: Themetext.Dtextstyle.copyWith(
                          fontWeight: FontWeight.w400)),
                  TextSpan(
                      text: payment,
                      style: Themetext.Dtextstyle.copyWith(
                          fontWeight: FontWeight.w600))
                ]))
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              'Payment Method',
              style: Themetext.Etextstyle,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              padding: const EdgeInsets.only(left: 15.0, top: 35),
              height: height * 0.1,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFD9D9D9),
                    blurRadius: 6,
                    spreadRadius: 2,
                    offset: Offset(
                      0,
                      5,
                    ),
                  )
                ],
              ),
              child: Row(
                children: [
                 
                
                  Expanded(
                    child: CustomDropdownButton(
                      onChanged: (String? value) {
                        setState(() {
                          selectedPaymentMethod = value;
                        });
                      },
                      value: selectedPaymentMethod,
                      items: [
                        const DropdownMenuItem<String>(
                          value: null,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text('Select Payment Method'),
                          ),
                        ),
                        ...paymentList.map<DropdownMenuItem<String>>(
                          (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  color: Colors.white,
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Color(0xFFD9D9D9),
                                  //     blurRadius: 6,
                                  //     spreadRadius: 2,
                                  //     offset: const Offset(
                                  //       0,
                                  //       8,
                                  //     ),
                                  //   )
                                  // ],
                                ),
                                child: Row(
                                  children: [
                                    // if (value == 'Cash')
                                    //   Container(
                                    //     width: 30,
                                    //     height: 30,
                                    //     decoration: BoxDecoration(
                                    //       shape: BoxShape.circle,
                                    //       color: Colors.red,
                                    //     ),
                                    //   ),
                                    if (value == 'Credit Card')
                                    const  Icon(
                                        Icons.credit_card,
                                        color: Colors.blue,
                                      ),
                                    if (value == 'Wallet')
                                   const   Icon(
                                        Icons.account_balance_wallet,
                                        color: Colors.green,
                                      ),
                                    SizedBox(
                                      width: MediaQuery.of(context)
                                              .size
                                              .width *
                                          0.02,
                                    ),
                                    Text(value),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                 
                ],
              ),
            ),
            SizedBox(height: height*0.4,),
            Center(
              child: CustomElevatedButton(
                size: Size(width*0.8, height*0.05),
                text: 'Done', 
                onPressed: ()=>Navigator.pushNamed(context, RoutesName.userFeedBack)),
            )
          ],
        ),
      ),
    );
  }
}

class CustomDropdownButton extends StatelessWidget {
  final ValueChanged<String?>? onChanged;
  final String? value;
  final List<DropdownMenuItem<String>> items;

  const CustomDropdownButton({
    Key? key,
    this.onChanged,
    this.value,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      onChanged: onChanged,
      value: value,
      items: items,
      icon: null,
      iconSize: 24,
      elevation: 16,
      
      style: const TextStyle(color: Colors.black),
      underline: Container(), // Set the underline to an empty container
      isExpanded: true,
    );
  }
}

