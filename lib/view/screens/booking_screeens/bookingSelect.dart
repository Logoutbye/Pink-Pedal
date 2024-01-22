import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Themesdata/elevatedbutton/elevatedbutton.dart';
import 'package:liveproject/utilis/Themesdata/theme_text.dart';
import 'package:liveproject/utilis/Themesdata/themecolors.dart';
import 'package:liveproject/utilis/searchbar.dart';

class BookingSelect extends StatefulWidget {
  const BookingSelect({super.key});

  @override
  State<BookingSelect> createState() => _BookingSelectState();
}

class _BookingSelectState extends State<BookingSelect> {
  @override
  Widget build(BuildContext context) {
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
       
)
      );

  }
  Widget buildSheetContent(){
    return Container(
      margin: EdgeInsets.all(30),
      
      child: Column(
      children: [
        Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Pickup Details',
        style: Themetext.Dtextstyle,),
        Text('NOV',
        style: Themetext.atextstyle,)
      ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.01,),
        Divider(color: Color(0xFFF1EDED),
        ),
        ListTile(
          leading: Icon(Icons.share_location_rounded,
            color: Themecolor.selectedItemColor),
          title: Text('My Current Location',
          style: Themetext.atextstyle.copyWith(
            fontWeight: FontWeight.w600
          ),),
          subtitle: Text('35 Oak Ave. San Andreas.'),
          
        ),
           ListTile(
          leading: Icon(Icons.location_on,
          color: Themecolor.selectedItemColor,),
          title: Text('United Bank Limited',
           style: Themetext.atextstyle.copyWith(
            fontWeight: FontWeight.w600
          )),
          subtitle: Text('Bank Square, AL 63652'),
          
        ),
           SizedBox(height: MediaQuery.of(context).size.height*0.03,),
        CustomElevatedButton(
          buttonText: 'Confirm Pickup',
           onPressed: (){

           })

      ],
      ),
    );
  }
}
