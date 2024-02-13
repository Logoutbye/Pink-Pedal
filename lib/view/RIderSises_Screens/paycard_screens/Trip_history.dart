import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Themesdata/theme_text.dart';
import 'package:liveproject/utilis/Themesdata/themecolors.dart';
import 'package:liveproject/utilis/constant/assetpath.dart';
import 'package:liveproject/utilis/searchbar.dart';

class TripHistory extends StatefulWidget {
  const TripHistory({Key? key}) : super(key: key);

  @override
  State<TripHistory> createState() => _TripHistoryState();
}

class _TripHistoryState extends State<TripHistory> {
  List<String> months = [
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
  ];
  List<List<RideTripHistory>> triplist = [];

  @override
  void initState() {
    super.initState();
    // Initialize dummy data for each month
    for (int i = 0; i < months.length; i++) {
      triplist.add(List.generate(5, (index) => generateDummyTrip(i, index)));
    }
  }

  RideTripHistory generateDummyTrip(int monthIndex, int tripIndex) {
    return RideTripHistory(
      image: Image.asset(AssetPaths.image1),
      heading: 'Trip $tripIndex',
      subHeading: 'Location $tripIndex to Destination $tripIndex',
      trailing: 'Rs.${tripIndex * 100}',
      location: 'Start Location $tripIndex',
      destination: 'End Location $tripIndex',
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: months.length,
      initialIndex: DateTime.now().month - 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Trip History',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w800,
                ),
          ),
        ),
        body: Column(
          children: [
           CustomSearchBar(hintText: 'Search for payees'),
          TabBar(
              isScrollable: true,
          indicatorSize: TabBarIndicatorSize.tab,
              labelPadding: EdgeInsets.symmetric(horizontal: 40),
              tabs: months.map((month) {
                return Tab(
                  text: month,
                );
              }).toList(),
            ),
            Expanded(
              child: TabBarView(

                children: [
                  for (var tripList in triplist)
                    Container(
                      color: Color(0xFFECECEF),
                      child: ListView.builder(
                        itemCount: tripList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return TealContainer(
                            child: Triplist(
                              location: tripList[index].location,
                              destination: tripList[index].destination,
                              image: tripList[index].image,
                              heading: tripList[index].heading,
                              subHeading: tripList[index].subHeading,
                              trailing: tripList[index].trailing,
                            ),
                          );
                        },
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Triplist extends StatelessWidget {
  final String? location;
  final String? destination;
  final Image? image;
  final String? heading;
  final String? subHeading;
  final String? trailing;

  Triplist({
    this.location,
    this.destination,
    this.image,
    this.heading,
    this.subHeading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.location_on),
              SizedBox(width: 8),
              Text(location ?? '',style: Themetext.atextstyle,),
            ],
          ),
          SizedBox(height: height*0.03),
           // Add spacing between location and destination
          Row(
            children: [
              Icon(Icons.location_searching_outlined),
              SizedBox(width: 8),
              Text(destination ?? '',style: Themetext.atextstyle,),
            ],
          ),
          SizedBox(height: height*0.01), 
          Divider(
            color: Color(0xFFF0EFF2),
          ),
          // SizedBox(height: height*0.01), // Add spacing between destination and ListTile
          ListTile(
            leading: image,
            title: Text(heading ?? '',style: Themetext.atextstyle.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),),
            subtitle: Text(subHeading ?? ''),
            trailing: Text(trailing ?? ''),
          ),
          SizedBox(height: 8), // Add spacing between ListTile and View Detail row
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: (){
                  
                },
                child: Text('View Detail',style: Themetext.atextstyle,)),
              // SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              Icon(Icons.arrow_forward_ios),
            ],
          )
        ],
      ),
    );
  }
}

class RideTripHistory {
  Image? image;
  String? heading;
  String? subHeading;
  String? trailing;
  String? location;
  String? destination;

  RideTripHistory({
    this.image,
    this.heading,
    this.subHeading,
    this.trailing,
    this.location,
    this.destination,
  });
}

class TealContainer extends StatelessWidget {
  final Widget child;

  TealContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: child,
    );
  }
}
