import 'package:liveproject/import_all.dart';

class TripDetail extends StatefulWidget {
  const TripDetail({Key? key}) : super(key: key);

  @override
  State<TripDetail> createState() => _TripDetailState();
}

class _TripDetailState extends State<TripDetail> {
  String fromLocation='Abbottabad,khola kehal ward no-45';
  String destination='Bilal town streat 333 house no-67';
  String distance='23 km';
  String vehicle='Alto 1000 cc';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
        var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Themecolor.container2,
        leading: const Icon(Icons.arrow_back_ios_new,size: 25,),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.view_headline,size: 30,),
          )
        ],
      ),
      body: Builder(
        builder: (context) {
          return Container(
            color: Themecolor.Divider,
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: height * 0.23,
                  child: Image.asset(AssetPaths.riderdetail,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(15),
                width: double.infinity,
                height: height * 0.09,
                decoration: BoxDecoration(
                  color: Themecolor.container2,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(5, 5),
                    )
                  ],
                ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Trip Details',
                            style: Themetext.atextstyle.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            )
                          ),
                                                                    Text('"Quick Trip Info: From, To, and Distance – Your Smart Cab journey, simplified."',style: Themetext.btextstyle,),
                            
                        ],
                      ),
                            
                    ),
                    // SizedBox(height: height*0.01),
                    // Divider(color: Color(0xFFF1EDED)),
                    Container(
                           margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(15),
                width: double.infinity,
                height: height * 0.1,
                decoration: BoxDecoration(
                  color: Themecolor.container2,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(5, 5),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    Text('From',style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold),),
                    SizedBox(height: height*0.01,),
                    Row(children: [
                      const Icon(Icons.location_searching_outlined,color:  Themecolor.container,),
                      SizedBox(width: width*0.01,),
                      Text(fromLocation, style: Themetext.atextstyle,)
                    ],),
                  ],
                ),
                      
                    ),
                   SizedBox(height: height*0.0001,),
                       Container(
                           margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(15),
                width: double.infinity,
                height: height * 0.1,
                decoration: BoxDecoration(
                  color: Themecolor.container2,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(5, 5),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    Text('Destination',style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold),),
                    SizedBox(height: height*0.01,),
                    Row(children: [
                      const Icon(Icons.location_on_outlined,color: Themecolor.container,),
                      SizedBox(width: width*0.01,),
                      Text(destination, style: Themetext.atextstyle,)
                    ],),
                  ],
                ),
                      
                    ),
               SizedBox(height: height*0.0001,),
                       Container(
                           margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(15),
                width: double.infinity,
                height: height * 0.1,
                decoration: BoxDecoration(
                  color: Themecolor.container2,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(5, 5),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    Text('K/M',style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold),),
                    SizedBox(height: height*0.01,),
                    Row(children: [
                      const Icon(Icons.mode_of_travel_outlined,color: Themecolor.container,),
                      SizedBox(width: width*0.01,),
                      Text(distance, style: Themetext.atextstyle,)
                    ],),
                  ],
                ),
                      
                    ),
                     SizedBox(height: height*0.0001,),
                       Container(
                           margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(15),
                width: double.infinity,
                height: height * 0.1,
                decoration: BoxDecoration(
                  color: Themecolor.container2,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(5, 5),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    Text('Vehicle',style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold),),
                    SizedBox(height: height*0.01,),
                    Row(children: [
                      const Icon(Icons.car_crash_outlined,color: Themecolor.container,),
                      SizedBox(width: width*0.01,),
                      Text(vehicle, style: Themetext.atextstyle,)
                    ],),
                  ],
                ),
                      
                    ),
                    SizedBox(height: height*0.01,),
                    Center(child: CustomElevatedButton(text: 'Confirm', onPressed: (){}))
                
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
