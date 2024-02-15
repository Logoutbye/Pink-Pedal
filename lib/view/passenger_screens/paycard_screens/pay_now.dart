import 'package:flutter/material.dart';
import 'package:liveproject/utilis/components/elevatedbutton.dart';
import 'package:liveproject/utilis/theme/theme_text.dart';
import 'package:liveproject/utilis/theme/themecolors.dart';
import 'package:liveproject/utilis/constant/assetpath.dart';

class PayNow extends StatefulWidget {
  const PayNow({Key? key}) : super(key: key);

  @override
  State<PayNow> createState() => _PayNowState();
}

class _PayNowState extends State<PayNow> {
  List<prevoiusCardsModel> cardslist = [
    prevoiusCardsModel(
      leading: const Icon(Icons.card_giftcard),
      title: 'Visa',
      subtitle: '•••• 2183',
      icon: const Icon(Icons.more_horiz_outlined),
    ),
    prevoiusCardsModel(
      leading: const Icon(Icons.flag_circle),
      title: 'Visa',
      subtitle: '•••• 2183',
      icon: const Icon(Icons.more_horiz_outlined),
    ),
    prevoiusCardsModel(
      leading: const Icon(Icons.credit_card_rounded),
      title: 'Visa',
      subtitle: '•••• 2183',
      icon: const Icon(Icons.more_horiz_outlined),
    ),
  ];
  String Amount = '1000';

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Image.asset(AssetPaths.image),
              title: Text('Sarah Jones', style: Themetext.Dtextstyle),
              subtitle: Text(
                'Account ending in 2183',
                style: Themetext.btextstyle,
              ),
              trailing: const Icon(Icons.more_horiz),
            ),
            SizedBox(height: height * 0.02),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Saved card', style: Themetext.Dtextstyle),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      '+Add New Card',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: height * 0.02),
            SizedBox(
              height: height * 0.3, // Set the height as needed
              child: ListView.builder(
                itemCount: cardslist.length,
                itemBuilder: (context, index) {
                  var cardslists = cardslist[index];
                  Icon? leadings = cardslists.leading;
                  String titles = cardslists.title ?? '';
                  String subtitles = cardslists.subtitle ?? "";
                  // Icon trailing = cardslists.icon ?? '';
                  return ListTile(
                    leading: Container(
                        width: width * 0.15,
                        height: height * 0.15,
                        decoration: BoxDecoration(
                            color: const Color(0xFFEBEBEB),
                            border: Border.all(color: Themecolor.border)),
                        child: leadings),
                    title: Text(titles, style: Themetext.Dtextstyle),
                    subtitle: Text(
                      subtitles,
                      style: Themetext.btextstyle,
                    ),
                    trailing:const Icon(Icons.more_horiz_outlined),
                  );
                },
              ),
            ),
            SizedBox(height: height * 0.02),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Amount',
                style: Themetext.Dtextstyle,
              ),
            ),
            SizedBox(height: height * 0.01),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(Amount),
            ),
            SizedBox(height: height * 0.02),
            Center(
                child:
                    CustomElevatedButton(text: 'Pay Rs:1000', onPressed: () {}))
          ],
        ),
      ),
    );
  }
}

class prevoiusCardsModel {
  Icon? leading;
  String? title;
  String? subtitle;
  Icon? icon;
  prevoiusCardsModel({
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.icon,
  });
}
