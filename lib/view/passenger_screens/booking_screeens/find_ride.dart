
import 'package:liveproject/import_all.dart';

class FindRide extends StatefulWidget {
  const FindRide({Key? key}) : super(key: key);

  @override
  State<FindRide> createState() => _FindRideState();
}

class _FindRideState extends State<FindRide> {
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
     Listrides(
      leading:const Icon(Icons.car_repair,
      size: 30,),
      title: 'car carry',
      subTitle: '11 Nearby',
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
    var height=MediaQuery.of(context).size.height;
        var width=MediaQuery.of(context).size.width;


    // Trigger the bottom sheet when the widget is built
 

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new,color: Themecolor.container2,),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.manage_search_rounded,color: Themecolor.container2,size: 35,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
        height: height*0.35,
        decoration: const BoxDecoration(
          color: Themecolor.container,
        ),
        child: Center(child: Image.asset(AssetPaths.splashimage)),
            ),
           SizedBox(
            height: height*0.55,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Choose Your Ride',style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold,
                  fontSize: 18),),
                  SizedBox(height: height*0.01,),
                  Expanded(
                    child: ListView.builder(
                        itemCount: rideslist.length,
                        itemBuilder: (BuildContext context, int index) {
                          final rideslists=rideslist[index];
                          Icon? leading=rideslists.leading ;
                          String title=rideslists.title ?? '';
                          String subTitle=rideslists.subTitle ?? '';
                          Icon? trailing=rideslists.trailing;
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
                                  child: leading,
                                ),
                              ),
                              title: Text(
                                title,
                                style: Themetext.Dtextstyle,
                              ),
                              subtitle: Text(subTitle),
                              trailing:trailing,
                            ),
                          );
                        },
                      ),
                  ),
                      SizedBox(height: height*0.01,),
                  Center(child: CustomElevatedButton(text: 'Confirm', onPressed: (){}))
                 
                ],
              ),
            ),
           ),
        
            
          ],
        ),
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

