import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Routes/Named_Routes.dart';
import 'package:liveproject/utilis/Themesdata/elevatedbutton/elevatedbutton.dart';
import 'package:liveproject/utilis/Themesdata/theme_text.dart';
import 'package:liveproject/utilis/searchbar.dart';

class Findride extends StatefulWidget {
  const Findride({Key? key}) : super(key: key);

  @override
  State<Findride> createState() => _FindrideState();
}

class _FindrideState extends State<Findride> {
  List<Listrides> rideslist = [
    Listrides(
      leading:const Icon(Icons.electric_bike_sharp,
      size: 30,),
      title: 'Bike',
      subTitle: '11 Nearby',
      trailing:const Icon(Icons.radio_button_checked),
    ),
    Listrides(
      leading:const Icon(Icons.car_crash,
      size: 30,),
      title: 'Civic',
      subTitle: '3 Nearby',
      trailing:const Icon(Icons.radio_button_checked),
    ),
    Listrides(
      leading:const Icon(Icons.car_repair,
      size: 30,),
      title: 'car carry',
      subTitle: '11 Nearby',
      trailing:const Icon(Icons.radio_button_checked),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // Trigger the bottom sheet when the widget is built
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return buildSheetContent(); // Use the method to build the sheet content
        },
      );
    });

    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.zero, child: AppBar()),
      body: Column(
        children: [
          CustomSearchBar(),
        ],
      ),
    );
  }

  Widget buildSheetContent() {
    return Container(
      margin:const EdgeInsets.only(top: 10, left: 10),
      padding:const EdgeInsets.only(top:8,bottom: 20,right: 8,left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Ride Details',
            style: Themetext.Dtextstyle,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: rideslist.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin:const EdgeInsets.symmetric(vertical: 8),
                  // padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: ClipOval(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color:const Color(
                                  0xFF03008B)), // Set your desired border color here
                          borderRadius: BorderRadius.circular(
                              30), // Half of the size of your CircleAvatar
                        ),
                        child: rideslist[index].leading,
                      ),
                    ),
                    title: Text(
                      rideslist[index].title ?? '',
                      style: Themetext.Dtextstyle,
                    ),
                    subtitle: Text(rideslist[index].subTitle ?? ''),
                    trailing: rideslist[index].trailing,
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          CustomElevatedButton(text: 'continue', onPressed: ()=> Navigator.pushNamed(context, RoutesName.mybooking))
        ],
      ),
    );
  }
}

class Listrides {
  Icon? leading;
  String? title;
  String? subTitle;
  Icon? trailing;

  Listrides({
    required this.leading,
    required this.title,
    required this.subTitle,
    required this.trailing,
  });
}
