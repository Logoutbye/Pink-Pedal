import 'package:liveproject/import_all.dart';


class AddDestination extends StatefulWidget {
  const AddDestination({Key? key}) : super(key: key);

  @override
  State<AddDestination> createState() => _AddDestinationState();
}

class _AddDestinationState extends State<AddDestination> {
  TextEditingController fromcontroller=TextEditingController();
    TextEditingController destinationcontroller=TextEditingController();
  List<LocationModel> locationlist = [
    LocationModel(title: 'Giga Mall Plaza', subTitle: '8946 Essex St. Sunnyside, In46321'),
    LocationModel(title: 'Mega Mall Plaza', subTitle: '8946 Essex St. Sunnyside, In46321'),
    LocationModel(title: 'jadoon plaza', subTitle: '8946 Essex St. Sunnyside, In46321e')
  ];
  @override
  Widget build(BuildContext context) {
    // Trigger the bottom sheet when the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return buildSheetContent(); // Use the method to build the sheet content
        },
      );
    });

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: width,
            height: height,
            decoration:const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/destination.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Color(0xff1717253d),
                  BlendMode.darken,
                ),
              ),
            ),
          ),
          // Remove the ElevatedButton that was used for triggering the bottom sheet
        ],
      ),
    );
  }

  Widget buildSheetContent() {
    return Container(
      padding:const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: fromcontroller,
            decoration: InputDecoration(
              contentPadding:const EdgeInsets.all(5),
              labelText: 'From',
              labelStyle: Themetext.btextstyle,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              prefixIcon:
                const  Icon(Icons.location_searching_outlined), // Add a leading icon
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          TextField(
            controller: destinationcontroller,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(5),
              labelText: 'Destination',
              labelStyle: Themetext.btextstyle,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              prefixIcon: const Icon(Icons.location_on), // Add a leading icon
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          ListTile(
            leading:const Icon(Icons.save_alt_outlined),
            title: Text(
              'Saved Placed',
              style: Themetext.atextstyle,
            ),
            trailing: InkWell(
              onTap: (){
                navigatorDestination();
                
              },
              child:const Icon(Icons.arrow_forward_ios)),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: locationlist.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading:const Icon(Icons.access_time_rounded,
                    ),
                    title: Text(locationlist[index].title ?? '',
                    style: Themetext.atextstyle),
                    subtitle: Text(locationlist[index].subTitle ?? '',
                    style: Themetext.btextstyle,),
                  );
                }),
          )
          // Add more list tiles or content as needed
        ],
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
