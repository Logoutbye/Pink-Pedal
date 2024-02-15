import 'package:flutter/material.dart';
import 'package:liveproject/utilis/theme/theme_text.dart';
import 'package:liveproject/utilis/theme/themecolors.dart';
import 'package:liveproject/utilis/constant/icons.dart';

class LegalAndPolicies extends StatefulWidget {
  const LegalAndPolicies({super.key});

  @override
  State<LegalAndPolicies> createState() => _LegalAndPoliciesState();
}

class _LegalAndPoliciesState extends State<LegalAndPolicies> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
      var width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Themecolor.container2,
        leading: CommonIcons.arrowback,
        title: Text('Legal and Policies',style: Themetext.atextstyle.copyWith(
                fontWeight: FontWeight.bold
              ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1. Term',
                  style: Themetext.atextstyle,
                ),
                 SizedBox(height: height * 0.01),
                Wrap(children: [
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.',
                      style: Themetext.btextstyle,)
                ]),
                 SizedBox(height: height * 0.01),
                Text(
                  'Changes to the Service and/or Terms:',
                  style: Themetext.atextstyle,
                ),
                 SizedBox(height: height * 0.01),
                Wrap(
                  children: [
                    Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget ornare quam vel facilisis feugiat amet sagittis arcu, tortor. Sapien, consequat ultrices morbi orci semper sit nulla. Leo auctor ut etiam est, amet aliquet ut vivamus. Odio vulputate est id tincidunt fames.',
                        style: Themetext.btextstyle,),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
