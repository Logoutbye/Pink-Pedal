import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:liveproject/utilis/Routes/routes_name.dart';
import 'package:liveproject/utilis/components/elevatedbutton.dart';
import 'package:liveproject/utilis/theme/theme_text.dart';
import 'package:liveproject/utilis/constant/assetpath.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  String deriverName = 'Younis Arif';
  String rideName = 'civic';
  double  ratings=0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'You Arrived',
          style: Themetext.Dtextstyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: CircleAvatar(
                      maxRadius: width * 0.05,
                      backgroundImage: const AssetImage(AssetPaths.image),
                    ),
                    title: Text(
                      deriverName,
                      style: Themetext.Dtextstyle,
                    ),
                    subtitle:const Row(
                      children: [
                        Icon(
                          Icons.star_border_purple500_outlined,
                          color: Colors.yellow,
                        ),
                        Text('5.0 (235 ratings)')
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    CustomElevatedButton(
                      textStyle: const TextStyle(color: Color(0xFF6C6C70)),
                      color: Colors.white,
                      text: 'Profile',
                      onPressed: () =>Navigator.pushNamed(context, RoutesName.deriverProfile),
                      size: const Size(80.0, 20.0),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            const Divider(
              color: Color(0xFFEBEBEB),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Center(
              child: Text('How was your trip?',
                  style: Theme.of(context).textTheme.bodyLarge),
            ),
            Center(
              child: Text(
                'Your feedback will help us improve driving experience better.',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: const Color(0xFF6C6C70)),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
           Center(
             child: RatingBar.builder(
              minRating: 1,
              itemBuilder: (BuildContext context,_){
                return const Icon(Icons.star,color: Colors.amber,);
              }, 
              onRatingUpdate: (_){
             
              }),
           ),
              SizedBox(
              height: height * 0.02,
            ),
            Text('feedback',style: Themetext.Etextstyle,),
              SizedBox(
              height: height * 0.01,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text('Write Hare.....',style: Themetext.atextstyle,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
            ),
               SizedBox(
              height: height * 0.05,
            ),
            Center(
              child: CustomElevatedButton(
                size: Size(width*0.8, height*0.06),
                text: 'SUBMIT',
                 onPressed: (){
                  
                 }),
            )
          ],
        ),
      ),
    );
  }
}
