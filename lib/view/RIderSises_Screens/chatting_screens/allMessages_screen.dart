import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Themesdata/theme_text.dart';
import 'package:liveproject/utilis/constant/assetpath.dart';
import 'package:liveproject/utilis/searchbar.dart';

class AllMessages extends StatefulWidget {
  const AllMessages({Key? key}) : super(key: key);

  @override
  State<AllMessages> createState() => _AllMessagesState();
}

class _AllMessagesState extends State<AllMessages> {
  List<ListMessagesModel> inboxMessages = [
    ListMessagesModel(image: Image.asset(AssetPaths.image1), title1: 'Guguseradeal', subtitles: 'You Sent a Sticker'),
        ListMessagesModel(image: Image.asset(AssetPaths.image1), title1: 'bilal bahi', subtitles: 'hello'),
    ListMessagesModel(image: Image.asset(AssetPaths.image1), title1: 'munna bhia', subtitles: 'hello monday'),
          ListMessagesModel(image: Image.asset(AssetPaths.image1), title1: 'jani', subtitles: 'Nasi Sereal Sent Gift'),
                ListMessagesModel(image: Image.asset(AssetPaths.image1), title1: 'shona', subtitles: 'imran khan zindabad long live alive'),
                      ListMessagesModel(image: Image.asset(AssetPaths.image1), title1: 'babu', subtitles: 'maryum k papa chor hain'),
                            ListMessagesModel(image: Image.asset(AssetPaths.image1), title1: 'sir rameez', subtitles: 'beautiful abbottabad'),
                                  ListMessagesModel(image: Image.asset(AssetPaths.image1), title1: 'sir kashif', subtitles: 'hello'),

  ];

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
          CustomSearchBar(hintText: 'Search Messages'),
          SizedBox(height: height * 0.02),
          Expanded(
            child: ListView.builder(
              itemCount: inboxMessages.length,
              itemBuilder: (context, index) {
                var inboxMessagesall = inboxMessages[index];
                Image leading = inboxMessagesall.image;
                String title = inboxMessagesall.title1 ?? '';
                String subtitle = inboxMessagesall.subtitles ?? '';

                return Expanded(
                  child: ListTile(
                    leading: leading, // Fix: Use inboxMessagesall.image instead of inboxMessages.image
                    title: Text(title,style: Themetext.atextstyle,),
                    subtitle: Text(subtitle,
                    style:  Themetext.btextstyle,),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ListMessagesModel {
  Image image;
  String title1;
  String? subtitles;
  ListMessagesModel({required this.image, required this.title1, this.subtitles});
}
