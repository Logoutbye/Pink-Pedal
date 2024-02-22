import 'package:liveproject/import_all.dart';

class ForgetPasswordWithOptions extends StatefulWidget {
  const ForgetPasswordWithOptions({super.key});

  @override
  State<ForgetPasswordWithOptions> createState() =>
      _ForgetPasswordWithOptionsState();
}

class _ForgetPasswordWithOptionsState extends State<ForgetPasswordWithOptions> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Themecolor.container2,
        leading: IconButton(
          icon: CommonIcons.arrowback,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text('Account Recovery Option',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontWeight: FontWeight.bold)),
                Text(
                  'Continue with email or Continue with ',
                  style: Themetext.btextstyle,
                ),
                Text(
                  'phone to retrieve your account access',
                  style: Themetext.btextstyle,
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                CustomElevatedButton(
                    text: 'Continue With Email',
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesName.forgotPassword,arguments: ForgetPasswordArguments(withEmailOrPhoneNo: 'email'));
                    }),
                SizedBox(
                  height: height * 0.02,
                ),
                CustomElevatedButton(
                    text: 'Continue With Phone',
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesName.forgotPassword,arguments: ForgetPasswordArguments(withEmailOrPhoneNo: 'phoneNo'));
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
