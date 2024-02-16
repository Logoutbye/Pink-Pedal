import 'package:liveproject/import_all.dart';

class VehicleInfo extends StatefulWidget {
  const VehicleInfo({super.key});

  @override
  State<VehicleInfo> createState() => _VehicleInfoState();
}

class _VehicleInfoState extends State<VehicleInfo> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Themecolor.container2,
        leading: CommonIcons.arrowback,
        title: Text(
          'Vehicle info',
          style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.person_2_outlined),
            title: Text('Model Color', style: Themetext.atextstyle),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          const Divider(
            color: Themecolor.Divider,
          ),
          ListTile(
            leading: const Icon(Icons.add_card_rounded),
            title: Text('Deriver License', style: Themetext.atextstyle),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          const Divider(
            color: Themecolor.Divider,
          ),
          ListTile(
            leading: const Icon(Icons.car_crash_outlined),
            title: Text('Photo Of Your Vehicle', style: Themetext.atextstyle),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          const Divider(
            color: Themecolor.Divider,
          ),
          ListTile(
            leading: const Icon(Icons.insert_page_break_outlined),
            title: Text('Certificate of vehicle registration',
                style: Themetext.atextstyle),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          CustomElevatedButton(
              size: Size(width * 0.9, height * 0.04),
              text: 'Done',
              onPressed: () {})
        ],
      ),
    );
  }
}
