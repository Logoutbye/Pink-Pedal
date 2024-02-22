import 'package:liveproject/import_all.dart';
import 'package:liveproject/view/driver_screens/driver_detail_screens/pickup_detail.dart';
class TripDetailDriver extends StatefulWidget {
  const TripDetailDriver({super.key});

  @override
  State<TripDetailDriver> createState() => _TripDetailDriverState();
}

class _TripDetailDriverState extends State<TripDetailDriver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PickupDetailDriver(elevatedtext: 'GO',onPressed: (){},),
    );
  }
}