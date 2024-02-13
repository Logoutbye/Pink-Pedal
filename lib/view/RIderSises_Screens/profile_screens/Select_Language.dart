import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Themesdata/theme_text.dart';
import 'package:liveproject/utilis/Themesdata/themecolors.dart';
import 'package:liveproject/utilis/icons/icons.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  List<countriesListModel> LanguageList = [
    countriesListModel(Countries: 'pakistanies',),
    countriesListModel(Countries: 'chinese'),
    countriesListModel(Countries: 'croatian'),
    countriesListModel(Countries: 'Czech'),
    countriesListModel(Countries: 'Filipino'),
    countriesListModel(Countries: 'bhanghali'),
    countriesListModel(Countries: 'Arabic'),
    countriesListModel(Countries: 'Hinko'),
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Themecolor.container2,
        leading: IconButton(
          icon: CommonIcons.arrowback,
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Text(
          'Language',
          style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Suggested Languages',
              style: Themetext.btextstyle,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'English (UK)',
                  style: Themetext.atextstyle,
                ),
                Icon(Icons.check_circle_outlined),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const Divider(
              color: Themecolor.Divider,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'English ',
                  style: Themetext.atextstyle,
                ),
                Icon(Icons.check_circle_outlined),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const Divider(
              color: Themecolor.Divider,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Bahasa Indonesia',
                  style: Themetext.atextstyle,
                ),
                Icon(Icons.check_circle_outlined),
              ],
            ),
            // Existing code remains unchanged
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              'Other Languages',
              style: Themetext.btextstyle,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: LanguageList.length,
                itemBuilder: (context, index) {
                  var listLanguage = LanguageList[index];
                  String languageName = listLanguage.Countries ?? '';
                  Icon? trailingIcon = listLanguage.trailings;
                  return Column(
                    children: [
                      ListTile(
                        title: Text(
                          languageName,
                          style: Themetext.atextstyle,
                        ),
                        trailing: trailingIcon != null ? Icon(trailingIcon.icon) : null,
                      ),
                      const Divider(
                        color: Themecolor.Divider,
                      ),
                    ],
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

class countriesListModel {
  String? Countries;
  Icon? trailings;
  countriesListModel({required this.Countries, this.trailings});
}
