
import 'package:liveproject/import_all.dart';

class NoMessages extends StatefulWidget {
  const NoMessages({super.key});

  @override
  State<NoMessages> createState() => _NoMessagesState();
}

class _NoMessagesState extends State<NoMessages> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Chats',
          style: Themetext.atextstyle,
        ),
      ),
      body: Column(
        children: [
          CustomSearchBar(hintText: 'Search Message'),
          SizedBox(
            height: height * 0.2,
          ),
          Column(
            children: [
           const   CircleAvatar(
                backgroundColor: Themecolor.selectedItem,
                maxRadius: 60,
                backgroundImage: AssetImage(AssetPaths.image1),
              ),
              SizedBox(height: height*0.01,),
              Text('No Favorite Message Yet!',style: Themetext.Dtextstyle,),
                SizedBox(height: height*0.01,),
                Text('Dis morbi neqlui elementui quir eget it,facilicis hac nunc',style: Themetext.btextstyle,),
                  SizedBox(
            height: height * 0.03,
          ),
          CustomElevatedButton(text: 'Explore Cars',
          size: Size(width*0.4, height*0.07),
           onPressed: (){

           })
            ],
          )
        ],
      ),
    );
  }
}
