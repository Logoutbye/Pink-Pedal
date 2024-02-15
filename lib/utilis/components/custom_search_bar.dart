import 'package:flutter/material.dart';
import 'package:liveproject/utilis/theme/theme_text.dart';

class CustomSearchBar extends StatelessWidget {
  String? hintText;
  // Color? color;
  Icon? icon;
  CustomSearchBar({super.key,  this .hintText,this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: SearchBar(
                  hintText: hintText,
                  hintStyle: MaterialStateProperty.all(Themetext.atextstyle),
                  trailing: const [Icon(Icons.search,
                  size: 35,)],
                ),
              ),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width*0.02,),
          const CircleAvatar(
            backgroundColor: Color(0xFF03008B),
            child: Icon(Icons.notifications_on,color: Colors.white,))
        ],
      ),
    );
  }
}