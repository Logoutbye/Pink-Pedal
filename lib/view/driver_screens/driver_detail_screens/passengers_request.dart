import 'package:flutter/material.dart';
import 'package:liveproject/utilis/components/elevatedbutton.dart';
import 'package:liveproject/utilis/constant/assetpath.dart';
import 'package:liveproject/utilis/theme/theme_text.dart';
import 'package:liveproject/utilis/theme/themecolors.dart';

class PassengersRequests extends StatefulWidget {
  const PassengersRequests({Key? key}) : super(key: key);

  @override
  State<PassengersRequests> createState() => _PassengersRequestsState();
}

class _PassengersRequestsState extends State<PassengersRequests> {
  String startLocation = 'Choose start location';
  String yourDestination = 'Choose your destination';
  String distance = '3.3km';
  String time = '4 mint';
  String payment = '600';

  @override
  Widget build(BuildContext context) {
    List<PassengersList> listPassenger = [
      PassengersList(
        image: Image.asset(AssetPaths.image1),
        heading: 'Aziz Khan',
        subheading: 'Black Suzuki WagonR',
        trailing: ' 4.5',
      ),
      PassengersList(
        image: Image.asset(AssetPaths.image1),
        heading: 'Maryum',
        subheading: 'Tangah',
        trailing: ' 4.5',
      ),
      PassengersList(
        image: Image.asset(AssetPaths.image1),
        heading: 'imran khan',
        subheading: 'jaz',
        trailing: ' 4.5',
      ),
    ];

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Themecolor.container,
            width: double.infinity,
            height: height * 0.35,
            child: Center(
              child: Image.asset(AssetPaths.splashimage,fit: BoxFit.cover,),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listPassenger.length,
              itemBuilder: (BuildContext context, index) {
                final listspanssengers = listPassenger[index];
                Image? leadings = listspanssengers.image;
                String title = listspanssengers.heading ?? '';
                String subtitle = listspanssengers.subheading ?? '';
                String trailings = listspanssengers.trailing ?? '';
                return Column(
                  children: [
                    Column(
                      children: [
                        ListTile(
                          leading: leadings,
                          title: Text(
                            title,
                            style: Themetext.atextstyle
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            subtitle,
                            style: Themetext.btextstyle,
                          ),
                          trailing: Text(trailings),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              const Icon(Icons.location_on),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                startLocation,
                                style:
                                    Themetext.atextstyle, // Example style, replace with your own
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              const Icon(Icons.location_searching_sharp),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                yourDestination,
                                style:
                                    Themetext.atextstyle, // Example style, replace with your own
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
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
                                    style: Themetext
                                        .btextstyle, // Example style, replace with your own
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
                                    style: Themetext
                                        .btextstyle, // Example style, replace with your own
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
                                    style: Themetext
                                        .btextstyle, // Example style, replace with your own
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.004,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              CustomElevatedButton(
                                  text: 'Accept Request', onPressed: () {}),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              CustomElevatedButton(
                                  color: const Color(0xFFF65E5D),
                                  size: Size(width * 0.4, height * 0.01),
                                  text: 'Deny',
                                  onPressed: () {})
                            ],
                          ),
                        )
                      ],
                    ),
                    const Divider(), // Divider added here
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class PassengersList {
  Image? image;
  String? heading;
  String? subheading;
  String? trailing;
 

  PassengersList({
    required this.image,
    this.heading,
    this.subheading,
    this.trailing,
  });
}
