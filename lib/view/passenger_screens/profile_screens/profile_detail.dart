import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Routes/routes_name.dart';
import 'package:liveproject/utilis/components/elevatedbutton.dart';
import 'package:liveproject/utilis/theme/theme_text.dart';
import 'package:liveproject/utilis/theme/themecolors.dart';
import 'package:liveproject/utilis/constant/icons.dart';

class ProfileDetail extends StatefulWidget {
  const ProfileDetail({super.key});

  @override
  State<ProfileDetail> createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Themecolor.container2,
        leading: CommonIcons.arrowback,
        title: Text(
          'Profile',
          style: Themetext.atextstyle
              .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Personal Info',
              style: Themetext.btextstyle,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, RoutesName.editProfile),
              child: Row(
                children: [
                const  Icon(Icons.person_2_outlined),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    'Edit Profile',
                    style: Themetext.atextstyle,
                  ),
                ],
              ),
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
              children: [
              const  Icon(Icons.wallet_travel_outlined),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  'Payment Method',
                  style: Themetext.atextstyle,
                )
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
            InkWell(
              onTap: () => Navigator.pushNamed(context, RoutesName.myAddress),
              child: Row(
                children: [
                  const Icon(Icons.location_on_outlined),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    'My Address',
                    style: Themetext.atextstyle,
                  )
                ],
              ),
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
            Text(
              'Security',
              style: Themetext.btextstyle,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                const Icon(Icons.lock_outline),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  'Change Password',
                  style: Themetext.atextstyle,
                )
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
            Text(
              'General',
              style: Themetext.btextstyle,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                const Icon(Icons.notification_important_outlined),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  'Notifocation',
                  style: Themetext.atextstyle,
                )
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
              children: [
                const Icon(Icons.dark_mode_outlined),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  'Dark Mode',
                  style: Themetext.atextstyle,
                )
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
            InkWell(
              onTap: () => Navigator.pushNamed(context, RoutesName.language),
              child: Row(
                children: [
                 const Icon(Icons.language),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    'Language',
                    style: Themetext.atextstyle,
                  )
                ],
              ),
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
            InkWell(
              onTap: ()=>Navigator.pushNamed(context, RoutesName.helpAndSupport),
              child: Row(
                children: [
                  const Icon(Icons.info_outlined),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    'Help and Support',
                    style: Themetext.atextstyle,
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.08,
            ),
            Center(
                child: CustomElevatedButton(
                    size: Size(width * 0.3, height * 0.05),
                    text: 'LogOut',
                    onPressed: () {
                      opendialogbox();
                    }))
          ],
        ),
      ),
    );
  }

  void opendialogbox() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Column(
            children: [
             const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Icon(Icons.close_sharp)],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                'Are you sure you want to Log Out?',
                style: Themetext.Dtextstyle,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ), // Use SizedBox.fromSize for spacing
              CustomElevatedButton(
                  size: const Size(45, 20), text: 'Cancel', onPressed: () {}),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              CustomElevatedButton(
                  size: const Size(30, 15),
                  color: Themecolor.container2,
                  textColor: Themecolor.Warning,
                  text: 'Log Out',
                  onPressed: () {}),
            ],
          ),
        );
      },
    );
  }
}
