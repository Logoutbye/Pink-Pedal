import 'package:flutter/material.dart';
import 'package:liveproject/utilis/constant/icons.dart';
import 'package:liveproject/utilis/theme/theme_text.dart';
import 'package:liveproject/utilis/theme/themecolors.dart';

class Histories extends StatefulWidget {
  const Histories({super.key});

  @override
  State<Histories> createState() => _HistoriesState();
}

class _HistoriesState extends State<Histories> {
   
  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Themecolor.container2,
          leading: CommonIcons.arrowback,
          title: Text(
            'History',
            style: Themetext.atextstyle,
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(height*0.05),
            child: Container(
              margin: EdgeInsets.all(10),
              height: height*0.06,
              decoration: BoxDecoration(
                color: Themecolor.Divider,
                borderRadius: BorderRadius.circular(15),
               border: Border.all(
                color: Themecolor.container
               ) 
              ),
              child: TabBar(
                tabs: [
                  Text('Current'),
                  Text('Completed'),
                  Text('Cancelled'),
                ],
                 indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Themecolor.container, // Change this color as needed
                ),
                 indicatorSize: TabBarIndicatorSize.tab, // Set the size of the indicator
                indicatorPadding: EdgeInsets.symmetric(horizontal: 16), 
                labelColor: Themecolor.container2,
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(
               margin: EdgeInsets.all(10),
              height: height*0.06,
              decoration: BoxDecoration(
                color: Themecolor.Divider,
                borderRadius: BorderRadius.circular(15),
               border: Border.all(
                color: Themecolor.Divider
               ) 
              ),
              child: ListTile(
                title: Text(
                  'Abbottabad',
                  style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Mustang Shelby GT',
                  style: Themetext.btextstyle,
                ),
                trailing: Text('Today at 09:20 am'),
              ),
            ),
            Container(
               margin: EdgeInsets.all(10),
              height: height*0.06,
              decoration: BoxDecoration(
                color: Themecolor.Divider,
                borderRadius: BorderRadius.circular(15),
               border: Border.all(
                color: Themecolor.Divider
               ) 
              ),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, index) {
                  return ListTile(
                    title: Text(
                      'Abbottabad',
                      style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Mustang Shelby GT',
                      style: Themetext.btextstyle,
                    ),
                    trailing: Text('Done',style: Themetext.atextstyle,),
                  );
                },
              ),
            ),
            Container(
               margin: EdgeInsets.all(10),
              height: height*0.06,
              decoration: BoxDecoration(
                color: Themecolor.Divider,
                borderRadius: BorderRadius.circular(15),
               border: Border.all(
                color: Themecolor.Divider
               ) 
              ),
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (BuildContext context, index) {
                  return ListTile(
                    title: Text(
                      'Abbottabad',
                      style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Mustang Shelby GT',
                      style: Themetext.btextstyle,
                    ),
                    trailing: Text('Cancel'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
