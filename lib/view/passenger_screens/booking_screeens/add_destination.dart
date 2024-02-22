import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Routes/routes_name.dart';
import 'package:liveproject/utilis/components/elevatedbutton.dart';
import 'package:liveproject/utilis/constant/assetpath.dart';
import 'package:liveproject/utilis/theme/theme_text.dart';
import 'package:liveproject/utilis/theme/themecolors.dart';

class AddDestination extends StatefulWidget {
  const AddDestination({Key? key}) : super(key: key);

  @override
  State<AddDestination> createState() => _AddDestinationState();
}

class _AddDestinationState extends State<AddDestination> {
  TextEditingController fromcontroller = TextEditingController();
  TextEditingController destinationcontroller = TextEditingController();
  List<LocationModel> locationlist = [
    LocationModel(
        title: 'Giga Mall Plaza',
        subTitle: '8946 Essex St. Sunnyside, In46321'),
    LocationModel(
        title: 'Mega Mall Plaza',
        subTitle: '8946 Essex St. Sunnyside, In46321'),
    LocationModel(
        title: 'jadoon plaza', subTitle: '8946 Essex St. Sunnyside, In46321e')
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Themecolor.container,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios, color: Themecolor.container2),
        actions: [
          Builder(
            builder: (context) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: Icon(Icons.view_headline_outlined,
                    color: Themecolor.container2, size: 35),
              ),
            ),
          )
        ],
      ),
      endDrawer: Drawer(
        width: width * 0.55,
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: height * 0.3,
              child: Image.asset(
                AssetPaths.smartLogoBlack,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Themecolor.container,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: ListTile(
                leading: CircleAvatar(
                  maxRadius: 35,
                  child: Image.asset(AssetPaths.image1),
                ),
                title: Text(
                  'malik umer',
                  style: Themetext.ctextstyle,
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '+923127032001',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      'umerishaq7387@gmail.com',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home_outlined, size: 35, color: Themecolor.container),
              title: Text('Home', style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Icon(Icons.person_2_outlined, size: 35, color: Themecolor.container),
              title: Text('Profile', style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Icon(Icons.wallet, size: 35, color: Themecolor.container),
              title: Text('Wallet', style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Icon(Icons.history, size: 35, color: Themecolor.container),
              title: Text('History', style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold)),
            ),
            Expanded(
              child: SizedBox(height: height * 0.23),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout, size: 35, color: Color(0xFFFF0000)),
              title: Text('Logout', style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold, color: Color(0xFFFF0000))),
              onTap: () {
                // Add logout functionality here
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.3,
              decoration: BoxDecoration(
                color: Themecolor.container,
              ),
              child: Center(child: Image.asset(AssetPaths.splashimage)),
            ),
            Container(
              decoration: BoxDecoration(
                color: Themecolor.Divider,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              height: height * 0.62,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    style: Themetext.atextstyle,
                    controller: fromcontroller,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(5),
                      labelText: 'From',
                      labelStyle: Themetext.btextstyle,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon:
                          const Icon(Icons.location_searching_outlined),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  TextField(
                    style: Themetext.atextstyle,
                    controller: destinationcontroller,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(5),
                      labelText: 'Destination',
                      labelStyle: Themetext.btextstyle,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon: const Icon(Icons.location_on),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  ListTile(
                    leading: const Icon(Icons.save_alt_outlined),
                    title: Text(
                      'Saved Placed',
                      style: Themetext.atextstyle,
                    ),
                    trailing: InkWell(
                        onTap: () {
                          navigatorDestination();
                        },
                        child: const Icon(Icons.arrow_forward_ios)),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: locationlist.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: const Icon(
                            Icons.access_time_rounded,
                          ),
                          title: Text(locationlist[index].title ?? '',
                              style: Themetext.atextstyle),
                          subtitle: Text(locationlist[index].subTitle ?? '',
                              style: Themetext.btextstyle),
                        );
                      },
                    ),
                  ),
                  Center(
                      child: CustomElevatedButton(
                          text: 'Continue', onPressed: () {}))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void navigatorDestination() {
    Navigator.pushNamed(context, RoutesName.enterLocation);
  }
}

class LocationModel {
  String? title;
  String? subTitle;
  LocationModel({required this.title, required this.subTitle});
}
