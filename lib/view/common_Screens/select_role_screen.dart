import 'package:liveproject/import_all.dart';

class SelectRoleScreen extends StatefulWidget {
  const SelectRoleScreen({super.key});

  @override
  State<SelectRoleScreen> createState() => _SelectRoleScreenState();
}

class _SelectRoleScreenState extends State<SelectRoleScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.zero, child: AppBar()),
      body: Container(
        color: Themecolor.container,
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            children: [
              Center(child: Image.asset(AssetPaths.splashimage)),
              // SizedBox(height: height*0.02,),
              CustomElevatedButton(
                  textColor: Themecolor.unselecteditem,
                  color: Themecolor.container2,
                  text: 'Ride with us',
                  onPressed: () {
                    GetRole.role = 'user';
                    Navigator.pushNamed(context, RoutesName.signInScreen);
                  }),
              SizedBox(
                height: height * 0.02,
              ),
              CustomElevatedButton(
                  textColor: Themecolor.unselecteditem,
                  color: Themecolor.container2,
                  text: 'Join As a Driver',
                  onPressed: () {
                    GetRole.role = 'driver';
                    Navigator.pushNamed(context, RoutesName.signInScreen);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
