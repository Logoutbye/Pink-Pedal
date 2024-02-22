import 'package:flutter/material.dart';
import 'package:liveproject/import_all.dart';
import 'package:liveproject/utilis/theme/themecolors.dart';

class PickupDetailDriver extends StatefulWidget {
  String? elevatedtext;
    final VoidCallback? onPressed;
  PickupDetailDriver({Key? key, this.elevatedtext,this.onPressed}) : super(key: key);

  @override
  State<PickupDetailDriver> createState() => _PickupDetailDriverState();
}


class _PickupDetailDriverState extends State<PickupDetailDriver> {
  String elevatedtext='Picking Up Aziz';
  String deriverName='Malik Sab';
  String PhonNo='+923127032001';
  String fromLocation='Abbottabad kehal ward no-23';
  String destination='islamabad sector G 7/4';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Themecolor.container,
      body: Column(
        children: [
          Container(
            color: Themecolor.container,
            height: height * 0.5,
          ),
          Container(
            height: height*0.5,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.white, // Added color to see the container
              border: Border.all(
                color: Colors.black, // Add border color
                width: 1, // Add border width
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Pickup Details',style: Themetext.atextstyle,),
                      Text('Rs 1000',style: Themetext.atextstyle
                      ,),
                    ],
                  ),
                      Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              leading: CircleAvatar(
                                maxRadius: width*0.04,
                                backgroundImage:
                                   const AssetImage(AssetPaths.image),
                              ),
                              title: Text(deriverName,style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold),),
                              subtitle: Row(
                                children: [
                                  const Icon(Icons.call),
                                   SizedBox(width: width*0.001),
                                  Text(PhonNo),
                                ],
                              ),
                              // Add other ListTile properties as needed
                            ),
                          ),
                          Container(
                            width: width*0.1,
                            height: height*0.06,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xFF9E9E9E),
                                  width: 2), // Add border color and width
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Icon(Icons.message_outlined,
                                size: 35, color: Themecolor.container),
                          ),
                          SizedBox(
                            width: width*0.04,
                          ),
                          Container(
                            width: width*0.1,
                            height: height*0.06,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:const Color(0xFF9E9E9E),
                                  width: 2), // Add border color and width
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Icon(
                              Icons.add_call,
                              size: 35,
                              color: Themecolor.container,
                            ),
                          )
                          // Add other widgets next to the ListTile if needed
                        ],
                      ),
                      SizedBox(
                        height: height * 0.003,
                      ),
                      Divider(color: Themecolor.Divider,),
                          Container(
                           margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(15),
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
                      offset: Offset(5, 5),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    Text('From',style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold),),
                    SizedBox(height: height*0.01,),
                    Row(children: [
                      Icon(Icons.location_searching_outlined,color:  Themecolor.container,),
                      SizedBox(width: width*0.01,),
                      Text(fromLocation, style: Themetext.atextstyle,)
                    ],),
                  ],
                ),
                      
                    ),
                    SizedBox(height: height*0.01,),
                        Container(
                           margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(15),
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
                      offset: Offset(5, 5),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    Text('Destination',style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold),),
                    SizedBox(height: height*0.01,),
                    Row(children: [
                      Icon(Icons.location_searching_outlined,color:  Themecolor.container,),
                      SizedBox(width: width*0.01,),
                      Text(destination, style: Themetext.atextstyle,)
                    ],),
                  ],
                ),
                      
                    ),
                    SizedBox(height: height*0.02,),
                    Center(child: CustomElevatedButton(text:widget.elevatedtext ?? 'Pick up Aziz', onPressed: (){}))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
