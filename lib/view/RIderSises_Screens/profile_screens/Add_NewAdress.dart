import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Themesdata/elevatedbutton/elevatedbutton.dart';
import 'package:liveproject/utilis/Themesdata/theme_text.dart';
import 'package:liveproject/utilis/Themesdata/themecolors.dart';
import 'package:liveproject/utilis/constant/icons.dart';
class NewAddress extends StatefulWidget {
  const NewAddress({super.key});

  @override
  State<NewAddress> createState() => _NewAddressState();
}

class _NewAddressState extends State<NewAddress> {
   TextEditingController _nameController = TextEditingController();
   String? chooseCountryValue ;
   List<String > countryList=['Pakistan','India','Nepal','Bagladash'];
   String? chooseCityValue;
   List<String> cityList=['Abbotabad','Islamabad','lahore','karachi','koita'];
   String? choosestate;
   List<String> StateList=['Male','Female'];
   String? chooseZipCode;
   List<String> ZipcodeList=['1234','987654'];
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
     var width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: CommonIcons.arrowback,
        title: Text('Add New Address',style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold,fontSize: 16)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Full Name', style: Themetext.btextstyle.copyWith(
                fontWeight: FontWeight.bold
              )),
                  SizedBox(height: height * 0.01),
                  Container(
                    height: height*0.07,
                    padding: EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      color: Themecolor.textfield,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                       hintText: 'enter your Full Name',
                        hintStyle: Themetext.btextstyle,
                      ),
                    ),
                  ),
                     SizedBox(height: height * 0.01),
          
                // Date of Birth
                Text('Country', style: Themetext.btextstyle.copyWith(
                fontWeight: FontWeight.bold
              )),
                SizedBox(height: height * 0.01),
                Container(
                      height: height*0.07,
                    padding: EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      color: Themecolor.textfield,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  child: DropdownButton(
                    hint: Text('Select Country',style: Themetext.btextstyle,),
                      underline: Container(),
                    isExpanded: true,
                    iconSize: 35,
                    style: Themetext.btextstyle,
                  
                  
                    value: chooseCountryValue,
                    items: countryList.map((valueitem){
                      return DropdownMenuItem(
                        value: valueitem,
                        child: Text(valueitem),);
                    }).toList(), 
                    onChanged: (newvalue){
                      setState(() {
                        chooseCountryValue=newvalue;
                      });
                  
                  
                    }),
                ),
                SizedBox(height: height * 0.01),
          
                // Date of Birth
                Text('City', style: Themetext.btextstyle.copyWith(
                fontWeight: FontWeight.bold
              )),
                SizedBox(height: height * 0.01),
                Container(
                    height: height*0.07,
                    padding: EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      color: Themecolor.textfield,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  child: DropdownButton(
                    value: chooseCityValue,
                    isExpanded: true,
                    underline: Container(),
                    iconSize: 35,
                    hint: Text('Select City',style: Themetext.btextstyle),
                    style: Themetext.btextstyle,
                    items: cityList.map((valueitem){
                      return DropdownMenuItem(
                        value: valueitem,
                        child: Text(valueitem));
                    }).toList(),
                     onChanged: (newCityValue){
                      setState(() {
                        chooseCityValue=newCityValue;
                      });
                  
                     }),
                ),
                 SizedBox(height: height * 0.01),
          
                // Date of Birth
                Text('State', style: Themetext.btextstyle.copyWith(
                fontWeight: FontWeight.bold
              )),
                SizedBox(height: height * 0.01),
                Container(
                  height: height*0.07,
                    padding: EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      color: Themecolor.textfield,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  child: DropdownButton(
                      value: choosestate,
                    hint: Text('Select State',style: Themetext.btextstyle,),
                         style: Themetext.btextstyle,
                    isExpanded: true,
                    underline: Container(),
                    iconSize: 35,
                    items: StateList.map((valueitem){
                      return DropdownMenuItem(
                        
                        value: valueitem,
                        child: Text(valueitem) );
                    }).toList(), 
                    onChanged: (newStatevalue){
                      setState(() {
                        choosestate=newStatevalue;
                      });
                  
                    }),
                ),
                   SizedBox(height: height * 0.01),
          
                // Date of Birth
                Text('Zip Code', style: Themetext.btextstyle.copyWith(
                fontWeight: FontWeight.bold
              )),
                SizedBox(height: height * 0.01),
                Container(
                  height: height*0.07,
                    padding: EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      color: Themecolor.textfield,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  child: DropdownButton(
                    hint: Text('Enter a Zip code',style: Themetext.btextstyle,),
                         style: Themetext.btextstyle,
                    isExpanded: true,
                    underline: Container(),
                    iconSize: 35,
                    value: chooseZipCode,
                    items: ZipcodeList.map((itemList){
                      return DropdownMenuItem(
                        value: itemList,
                        child: Text(itemList));
                  
                    }).toList(),
                     onChanged: (value){
                      chooseZipCode=value;
                  
                     }),
                ),
                   SizedBox(height: height * 0.01),
          
                // Date of Birth
                Text('Detail Address',style: Themetext.btextstyle.copyWith(
                fontWeight: FontWeight.bold
              )),
                SizedBox(height: height * 0.01),
                Container(
                   height: height*0.2,
                    padding: EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      color: Themecolor.textfield,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))
                    ),
                  child: TextField(
                    style: Themetext.btextstyle,
                    
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      label: Text('Enter Your Address',style: Themetext.btextstyle,)),
                  ),
                ),
                 SizedBox(height: height * 0.02),
                 Center(
                   child: CustomElevatedButton(
                    textColor: Color(0xFF9CA4AB),
                    color: Themecolor.textfield,
                    text: 'Save Address', onPressed: (){}),
                 )
          
            ],
          ),
        ),
      ),
    );
  }
}