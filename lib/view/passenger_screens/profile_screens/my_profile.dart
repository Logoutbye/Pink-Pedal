import 'package:liveproject/import_all.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  String? name = 'Younis Arif';
  String? mail = '@umerishaq7';
  double percentage = 0.6; // Set your profile completion value between 0.0 and 1.0

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Container(
            height: height * 0.3,
            color: Themecolor.container,
            child:const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Color(0xFF6B69b8),
                    child: Icon(Icons.settings, color: Themecolor.darkthemeicon, size: 35),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: height * 0.235,
            left: width * 0.23,
            child: Column(
              children: [
              const  CircleAvatar(
                  maxRadius: 60,
                  foregroundImage: AssetImage(
                    AssetPaths.image1,
                  ),
                ),
                Text(name ?? '', style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold)),
                Text(mail ?? '', style: Themetext.btextstyle),
                SizedBox(height: height * 0.1),
                Container(
                  child: Column(
                    
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Profile Completion',style: Themetext.atextstyle,),
                          SizedBox(width: width*0.05,),
                          Text('${(percentage * 100).toInt()}%',style: Themetext.atextstyle,),
                        ],
                      ),
                      CustomProgressBar(width: 200, height: 20, progress: percentage),
                      SizedBox(height: height * 0.02),
                      CustomElevatedButton(text: 'Complete Profile', onPressed: ()=>Navigator.pushNamed(context, RoutesName.profileDetail))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomProgressBar extends StatelessWidget {
  final double width;
  final double height;
  final double progress;
  const CustomProgressBar({Key? key, required this.width, required this.height, required this.progress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Container(
            width: width * progress,
            height: height,
            decoration: BoxDecoration(
              color: Themecolor.selectedItem,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Center(
            child: Text('${(progress * 100).toInt()}%', style: Themetext.ctextstyle),
          ),
        ],
      ),
    );
  }
}
