import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Themesdata/theme_text.dart';
import 'package:liveproject/utilis/Themesdata/themecolors.dart';
import 'package:liveproject/utilis/constant/icons.dart';
import 'package:liveproject/utilis/searchbar.dart';

class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({super.key});

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: CommonIcons.arrowback,
        backgroundColor: Themecolor.container2,
        title: Text(
          'Help And Support',
          style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            CustomSearchBar(
              hintText: 'Search',
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  FAQItem(
                    question: 'How if I do not have the License?',
                    answer: '''Check if you can change it. 
          On your Android phone or tablet, open your device's Settings app, go to Google, and manage your Google Account. 
          At the top, tap Personal info.''',
                  ),
              
        
                  FAQItem(
                    question: 'How does the billing work?',
                                 answer: '''Check if you can change it. 
          On your Android phone or tablet, open your device's Settings app, go to Google, and manage your Google Account. 
          At the top, tap Personal info.''',
                  ),
                     
                  FAQItem(
                    question: 'How do I change my account email?',
                                               answer: '''Check if you can change it. 
          On your Android phone or tablet, open your device's Settings app, go to Google, and manage your Google Account. 
          At the top, tap Personal info.''',),
          
          FAQItem(
            question: 'What is your cancellation policy?',
             answer: '''Check if you can change it. On your Android phone or tablet, open your device's Settings app Google. Manage your Google Account. At the top, tap Personal info''',),
        
             FAQItem(
        question: 'What are the parking and public transport options?', 
        answer: '''Check if you can change it. On your Android phone or tablet, open your device's Settings app Google. Manage your Google Account. At the top, tap Personal info'''),
                  // Add more FAQItem widgets as needed
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FAQItem extends StatelessWidget {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: EdgeInsets.zero, 
       backgroundColor: Colors.transparent, 
      title: Text(
        question,
        style: Theme.of(context).textTheme.bodySmall
        
        
      ),
      
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(answer,style: Themetext.btextstyle),
        ),
      ],
    );
  }
}
