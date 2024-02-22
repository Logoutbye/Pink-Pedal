import 'package:flutter/material.dart';
import 'package:liveproject/import_all.dart';

class CreateNewRide extends StatefulWidget {
  const CreateNewRide({Key? key}) : super(key: key);

  @override
  State<CreateNewRide> createState() => _CreateNewRideState();
}

class _CreateNewRideState extends State<CreateNewRide> {
TextEditingController fromcontroller=TextEditingController();
TextEditingController tocontroller=TextEditingController();



  List<driverslist> nearbyDriverList = [
    driverslist(image: Image.asset(AssetPaths.image1), rideName: 'Alto 660cc', derivername: 'azam khan', payment: '400', distance: '300m'),
    driverslist(image: Image.asset(AssetPaths.image1), rideName: 'Carry', derivername: 'umer khan', payment: '400', distance: '300m'),
    driverslist(image: Image.asset(AssetPaths.image1), rideName: 'Suzuki', derivername: 'Haji khan', payment: '400', distance: '300m'),
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Themecolor.container2,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.my_library_books_outlined,
              size: 30,
            ),
          ),
        ],
      ),
      body: Container(
        color: Themecolor.Divider,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                height: height * 0.13,
                decoration: BoxDecoration(
                  color: Themecolor.container2,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(5, 5),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Waiting ...',
                      style: Themetext.atextstyle.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '"Ready for your next Smart Cab ride? Just waiting for your approval to start the journey!"',
                      style: Themetext.btextstyle,
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.03),
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Themecolor.container2,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(5, 5),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('From', style: Themetext.atextstyle),
                    Container(
                      padding: const EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        color: Themecolor.textfield,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        style: Themetext.btextstyle,
                        controller: fromcontroller,
                        decoration: InputDecoration(
                          
                          border: InputBorder.none,
                          hintText: 'enter your current location',
                          hintStyle: Themetext.btextstyle,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text('To', style: Themetext.atextstyle),
                    Container(
                      padding: const EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        color: Themecolor.textfield,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        style: Themetext.btextstyle,
                        controller: tocontroller,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'enter your destination',
                          hintStyle: Themetext.btextstyle,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text('K/m', style: Themetext.atextstyle),
                    Container(
                      padding: const EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        color: Themecolor.textfield,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        style: Themetext.btextstyle,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'K/ms',
                          hintStyle: Themetext.btextstyle,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Center(
                      child: CustomElevatedButton(text: 'Cancel', onPressed: () {}),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: nearbyDriverList.length,
                  separatorBuilder: (BuildContext context, int index) => SizedBox(height: height*0.02),
                  itemBuilder: (BuildContext context, int index) {
                    var listNearbyDriver = nearbyDriverList[index];
                    Image? leading = listNearbyDriver.image;
                    String title = listNearbyDriver.rideName ?? '';
                    String subtitle = listNearbyDriver.derivername ?? '';
                    String amount = listNearbyDriver.payment ?? '';
                    String distance = listNearbyDriver.distance ?? '';
                    return Container(
                      // padding: EdgeInsets.all(10),
                      width: double.infinity,
                      height: height * 0.17,
                      decoration: BoxDecoration(
                        color: Themecolor.container2,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(5, 5),
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: leading,
                            title: Text(
                              title,
                              style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              subtitle,
                              style: Themetext.btextstyle.copyWith(fontWeight: FontWeight.bold),
                            ),
                            trailing: Column(
                              children: [
                                Text('Rs : $amount', style: Themetext.atextstyle),
                                Text(distance, style: Themetext.atextstyle),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomElevatedButton(color: Colors.green, size: Size(width * 0.3, height * 0.009), text: 'Accept', onPressed: () {}),
                              CustomElevatedButton(color: Colors.red, size: Size(width * 0.3, height * 0.009), text: 'Decline', onPressed: () {}),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class driverslist {
  Image? image;
  String? rideName;
  String? derivername;
  String? payment;
  String? distance;
  driverslist({required this.image, required this.rideName, required this.derivername, required this.payment, required this.distance});
}
