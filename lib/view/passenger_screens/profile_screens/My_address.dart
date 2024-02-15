import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Routes/routes_name.dart';
import 'package:liveproject/utilis/components/elevatedbutton.dart';
import 'package:liveproject/utilis/theme/theme_text.dart';
import 'package:liveproject/utilis/theme/themecolors.dart';
import 'package:liveproject/utilis/constant/icons.dart';

class MyAddress extends StatefulWidget {
  const MyAddress({Key? key}) : super(key: key);

  @override
  State<MyAddress> createState() => _MyAddressState();
}

class _MyAddressState extends State<MyAddress> {
  List<AddressModel> addressesList = [
    AddressModel(
      icon:const Icon(Icons.location_on_outlined),
      heading: 'Lahore',
      subheading: '03127032001',
      description: '711 Leavenworth Apt. # 47 San Francisco, CA 94109',
    ),
    AddressModel(
      icon:const Icon(Icons.location_on_outlined),
      heading: 'Karachi',
      subheading: '03127032001',
      description: '711 Leavenworth Apt. # 47 San Francisco, CA 94109',
    ),
    AddressModel(
      icon:const Icon(Icons.location_on_outlined),
      heading: 'Karachi',
      subheading: '03127032001',
      description: '711 Leavenworth Apt. # 47 San Francisco, CA 94109',
    ),
    AddressModel(
      icon:const Icon(Icons.location_on_outlined),
      heading: 'Karachi',
      subheading: '03127032001',
      description: '711 Leavenworth Apt. # 47 San Francisco, CA 94109',
    ),
    AddressModel(
      icon:const Icon(Icons.location_on_outlined),
      heading: 'Karachi',
      subheading: '03127032001',
      description: '711 Leavenworth Apt. # 47 San Francisco, CA 94109',
    ),
    AddressModel(
      icon:const Icon(Icons.location_on_outlined),
      heading: 'Karachi',
      subheading: '03127032001',
      description: '711 Leavenworth Apt. # 47 San Francisco, CA 94109',
    ),
    AddressModel(
      icon:const Icon(Icons.location_on_outlined),
      heading: 'Karachi',
      subheading: '03127032001',
      description: '711 Leavenworth Apt. # 47 San Francisco, CA 94109',
    ),
    // ... other AddressModel data
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Themecolor.container2,
        leading: CommonIcons.arrowback,
        title: Text('My Address', style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold,fontSize: 16)),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
              onTap: ()=>Navigator.pushNamed(context, RoutesName.addNewAddress),
              child:const Icon(
                Icons.add,
                size: 35,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: addressesList.length,
              itemBuilder: (context, index) {
                var address = addressesList[index];
                Icon? leadingIcon = address.icon;
                String cityName = address.heading ?? '';
                String contactNum = address.subheading ?? '';
                String description = address.description ?? '';
                Icon? trailingIcon = address.trailings;
                bool isSelected = address.isSelected;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: leadingIcon,
                      ),
                      title: Text(cityName, style: Themetext.Dtextstyle),
                      subtitle: Text(contactNum, style: Themetext.btextstyle),
                      trailing: InkWell(
                        onTap: () {
                          setState(() {
                            // for (var a in addressesList) {
                            //   a.isSelected = false;
                            // }
                            address.isSelected = !address.isSelected;
                          });
                        },
                        child: isSelected
                            ? const Icon(Icons.safety_check)
                            : const Icon(Icons.abc),
                        // child: isSelected ? trailingIcon : null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Text(description, style: Themetext.btextstyle),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70, top: 10),
                      child: CustomElevatedButton(
                        textColor:const Color(0xFF03008B),
                        color: Colors.white,
                        text: 'Change Address',
                        onPressed: () {},
                        size: Size(width * 0.5,
                            height * 0.05), // Adjust the size as needed
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: CustomElevatedButton(
              text: 'Select Address',
              onPressed: () {},
              size:
                  Size(width * 0.5, height * 0.05), // Adjust the size as needed
            ),
          )
        ],
      ),
    );
  }
}

class AddressModel {
  Icon? icon;
  String? heading;
  String? subheading;
  String? description;
  final Icon? trailings;
  bool isSelected;

  AddressModel({
    required this.icon,
    required this.heading,
    required this.subheading,
    required this.description,
    this.trailings,
    this.isSelected = false,
  });
}
