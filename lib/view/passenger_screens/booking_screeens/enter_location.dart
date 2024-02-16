import 'package:liveproject/import_all.dart';

class EnterLocation extends StatefulWidget {
  const EnterLocation({Key? key}) : super(key: key);

  @override
  State<EnterLocation> createState() => _EnterLocationState();
}

class _EnterLocationState extends State<EnterLocation> {
  int current_Index=0;
  final List<Widget> screens=[
    HomeWidget(),
    const MyBooking(),
    const AllMessages(),
    const DebitCard(),
    const MyProfile()

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor:const Color(0xFFFFFFFF),
      //   leading:const Icon(
      //     Icons.arrow_drop_down,
      //     size: 40,
      //   ),
      // ),
      
      body:  screens[current_Index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Themecolor.selectedItem,
        unselectedItemColor: Themecolor.unselecteditem,
        selectedFontSize: 15,
        unselectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        
        currentIndex: current_Index,
        onTap: (index){
          setState(() {
            current_Index=index;
          });
       
        },
        items:const  [
        BottomNavigationBarItem(
          icon:  Icon(Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon:  Icon(Icons.library_books_outlined,
                   ),
          label: 'Booking',
        ),
        BottomNavigationBarItem(
          icon:  Icon(Icons.message_outlined,
          ),
          label: 'Inbox',
        ),
        BottomNavigationBarItem(
          icon:  Icon(Icons.wallet_travel_outlined,
               ),
          label: 'Wallet',
        ),
        BottomNavigationBarItem(
          icon:  Icon(Icons.perm_identity,
          ),
          label: 'Profile',
        ),
      ]),
    );
  }
}

class HomeWidget extends StatelessWidget {
   HomeWidget({
    super.key,
  });
  List<Locationsuggestion> suggestionlist = [
    Locationsuggestion(
        title: 'Third Wave Coffee',
        subTitle:
            'Sarjapur - Marathahalli Road, Countryside Layout, Rainbow Drive, Bengaluru, Karnataka,…'),
    Locationsuggestion(
        title: 'Third Wave Coffee',
        subTitle:
            'Sarjapur - Marathahalli Road, Countryside Layout, Rainbow Drive, Bengaluru, Karnataka,…'),
    Locationsuggestion(
        title: 'Third Wave Coffee',
        subTitle:
            'Sarjapur - Marathahalli Road, Countryside Layout, Rainbow Drive, Bengaluru, Karnataka,…'),
  ];


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(8),
                labelText: '562/11-A',
                prefixIcon:const Icon(Icons.location_searching),
                labelStyle: Themetext.atextstyle,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          TextField(
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(8),
                labelText: 'Third wave',
                prefixIcon: const Icon(Icons.location_on),
                labelStyle: Themetext.atextstyle,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          ElevatedButton(
            onPressed: () {
              // Your onPressed logic here
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const Icon(
                  Icons.access_time_rounded,
                  color: Colors.white,
                ), // Replace with your desired leading icon
                Text('Leave Now', style: Themetext.ctextstyle),
               const Icon(Icons.arrow_drop_down_outlined,
                    color: Colors
                        .white), // Replace with your desired trailing icon
              ],
            ),
          ),
          SizedBox(height: height*0.02,),
          Expanded(
            child: ListView.builder(
              itemCount: suggestionlist.length,
              itemBuilder: (context, index) {
                var suggestionlists = suggestionlist[index];
                String title = suggestionlists.title ?? '';
                String subTitle = suggestionlists.subTitle ?? '';
                return ListTile(
                  leading: const Icon(Icons.location_on),
                  title: Text(
                    title,
                    style: Themetext.atextstyle,
                  ),
                  subtitle: Text(
                    subTitle,
                    style: Themetext.btextstyle,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Locationsuggestion {
  String? title;
  String? subTitle;
  Locationsuggestion({required this.title, required this.subTitle});
}
