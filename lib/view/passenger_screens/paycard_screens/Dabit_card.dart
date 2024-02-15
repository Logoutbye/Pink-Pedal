import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Routes/Named_Routes.dart';
import 'package:liveproject/utilis/Themesdata/elevatedbutton/elevatedbutton.dart';
import 'package:liveproject/utilis/Themesdata/theme_text.dart';
import 'package:liveproject/utilis/Themesdata/themecolors.dart';

class DebitCard extends StatefulWidget {
  const DebitCard({Key? key}) : super(key: key);

  @override
  State<DebitCard> createState() => _DebitCardState();
}

class _DebitCardState extends State<DebitCard> {
  String cardnum = '2412 - 9311 - 2123 - 8721';
  String cardcvc = '241';
  String expiry = '01/25';

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CARD NUMBER',
              style: Themetext.btextstyle,
            ),
            SizedBox(height: height * 0.01),
            Container(
              width: double.infinity,
              height: height * 0.08,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                  color: Themecolor.border,
                ),
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.call_to_action_rounded,
                  color: Themecolor.selectedItem,
                  size: 30,
                ),
                title: Center(
                  child: Text(
                    cardnum,
                    style: Themetext.atextstyle.copyWith(fontSize: 20),
                  ),
                ),
                trailing: const Icon(
                  Icons.gpp_good_outlined,
                  color: Themecolor.selectedItem,
                  size: 30,
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('CVC', style: Themetext.btextstyle),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      alignment: Alignment.centerLeft,
                      width: width * 0.45,
                      height: height * 0.08,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          color: Themecolor.border,
                        ),
                      ),
                      child: Text(cardcvc, style: Themetext.atextstyle),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('EXPIRY', style: Themetext.btextstyle),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      alignment: Alignment.centerLeft,
                      width: width * 0.45,
                      height: height * 0.08,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          color: Themecolor.border,
                        ),
                      ),
                      child: Text(expiry, style: Themetext.atextstyle),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            Text('Security code', style: Themetext.btextstyle),
            SizedBox(height: height * 0.02),
            TextField(
              decoration: InputDecoration(
                labelText: 'Security Code',
                labelStyle: Themetext.atextstyle,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Themecolor.border,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.05),
            Center(
              child: CustomElevatedButton(
                  text: 'continue',
                  onPressed: () =>
                      Navigator.pushNamed(context, RoutesName.payNow)),
            ),
          ],
        ),
      ),
    );
  }
}
