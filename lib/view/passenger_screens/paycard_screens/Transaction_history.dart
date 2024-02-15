import 'package:flutter/material.dart';
import 'package:liveproject/utilis/theme/theme_text.dart';
import 'package:liveproject/utilis/constant/assetpath.dart';
import 'package:liveproject/utilis/components/custom_search_bar.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  List<String> months = [
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
  ];
  int selectedMonthIndex = 0;
  String selectedDate = '09 January';
  List<TransactionHistorymodel> transactionHistory=[
    TransactionHistorymodel(image: Image.asset(AssetPaths.image1), senderName: 'malik umer', deascription: 'Account ending in 2183', payments: ' RS. 700'),
        TransactionHistorymodel(image: Image.asset(AssetPaths.image1), senderName: 'Bilal BHI', deascription: 'Account ending in 2183', payments: ' RS. 800'),
            TransactionHistorymodel(image: Image.asset(AssetPaths.image1), senderName: 'MUNNA bhia', deascription: 'Account ending in 2183', payments: ' RS. 400'),
                TransactionHistorymodel(image: Image.asset(AssetPaths.image1), senderName: 'Raju bhia', deascription: 'Account ending in 2183', payments: ' RS. 200'),
                    TransactionHistorymodel(image: Image.asset(AssetPaths.image1), senderName: 'malik umer', deascription: 'Account ending in 2183', payments: ' RS. 500'),
                        TransactionHistorymodel(image: Image.asset(AssetPaths.image1), senderName: 'sharukh', deascription: 'Account ending in 2183', payments: ' RS. 7800'),
                            TransactionHistorymodel(image: Image.asset(AssetPaths.image1), senderName: ' umer', deascription: 'Account ending in 2183', payments: ' RS. 800'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: months.length,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Transaction History',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        body: Column(
          children: [
            CustomSearchBar(hintText: 'Search for payees'),
            TabBar(
              isScrollable: true,
          indicatorSize: TabBarIndicatorSize.tab,
              labelPadding: const EdgeInsets.symmetric(horizontal: 40),
              tabs: months.map((month) {
                return Tab(
                  text: month,
                );
              }).toList(),
            ),
            Expanded(
              child: TabBarView(
                children: months.map((month) {
                  // Replace this with your actual transaction data for each month
                  return ListView.builder(
                    itemCount: transactionHistory.length, // Just a placeholder, replace with actual item count
                    itemBuilder: (BuildContext context, int index) {
                      var transactionHistories=transactionHistory[index];
                      Image? leading=transactionHistories.image;
                      String title=transactionHistories.senderName ?? '';
                      String subtitle=transactionHistories.deascription ?? '';
                      String trailings=transactionHistories.payments ?? '';
                      return ListTile(
                        leading: CircleAvatar(
                          maxRadius: 30,
                          child: leading),
                        title:Text(title,style: Themetext.atextstyle.copyWith(
                          fontWeight: FontWeight.bold
                        ),),
                        subtitle: Text('Transaction $index for $month'),
                        trailing: Text(trailings),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class TransactionHistorymodel{
  Image? image;
  String? senderName;
  String? deascription;
  String? payments;
  TransactionHistorymodel({required this.image,required this.senderName,required this.deascription,required this.payments});
}