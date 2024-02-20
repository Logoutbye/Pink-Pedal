import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:liveproject/utilis/components/elevatedbutton.dart';
import 'package:liveproject/utilis/constant/icons.dart';
import 'package:liveproject/utilis/theme/theme_text.dart';
import 'package:liveproject/utilis/theme/themecolors.dart';

class DriverEarningsDetails extends StatefulWidget {
  const DriverEarningsDetails({super.key});

  @override
  State<DriverEarningsDetails> createState() => _DriverEarningsDetailsState();
}

class _DriverEarningsDetailsState extends State<DriverEarningsDetails> {
  String amounts = '7000';
  String numberOfRides = '244 Rides';
  String totalTime = '25D 34H';
  String walletBalance='33,00000';
  String totalTrip='73';
  String onlineTime='6d 23h';
  String totalDistance='299 km';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Themecolor.container2,
        leading: CommonIcons.arrowback,
        title: Text(
          'Earnings',
          style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Themecolor.Divider,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Themecolor.container2),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Last 1 Month',
                      style: Themetext.atextstyle.copyWith(fontWeight: FontWeight.bold),
                    ),
                    //  SizedBox(height: height*0.01,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rs: $amounts',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        CustomElevatedButton(
                            size: Size(width * 0.2, height * 0.01),
                            text: 'Withdraw',
                            onPressed: () {})
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Divider(
                      color: Themecolor.Divider,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        Icon(Icons.repeat),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Text(
                          numberOfRides,
                          style: Themetext.atextstyle,
                        ),
                        SizedBox(
                          width: width * 0.58,
                        ),
                        Icon(Icons.av_timer_sharp),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Text(
                          totalTime,
                          style: Themetext.atextstyle,
                        )
                      ],
                    )
                  ]),
            ),
            // SizedBox(height: height*0.02,),
            Container(
              width: width*double.infinity,
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Themecolor.container2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Wallet Balance',style: Themetext.atextstyle.copyWith(
               fontWeight: FontWeight.bold
                  ),

                  ),
                  Text('Rs: $walletBalance',
                         style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  fontSize: 24, fontWeight: FontWeight.bold),),
                                  AspectRatio(aspectRatio: 2,
                                  child: BarChart(
                                    BarChartData(
                                      borderData: FlBorderData(
                                        border: Border(
                                          top: BorderSide.none,
                                          right: BorderSide.none,
                                          left: BorderSide(width: 1),
                                          bottom: BorderSide(width: 1)
                                        )
                                      ),
                                      groupsSpace: 10,
                                      barGroups: [
                                        BarChartGroupData(
                                          x: 1,
                                          barRods: [
                                            BarChartRodData(fromY: 0,toY: 10,color: Themecolor.container)
                                          ]),
                                            BarChartGroupData(
                                          x: 2,
                                          barRods: [
                                            BarChartRodData(fromY: 0,toY: 7,color: Themecolor.container)
                                          ]),
                                            BarChartGroupData(
                                          x: 3,
                                          barRods: [
                                            BarChartRodData(fromY: 0,toY: 5,color: Themecolor.container)
                                          ]),
                                            BarChartGroupData(
                                          x: 1,
                                          barRods: [
                                            BarChartRodData(fromY: 0,toY: 9,color: Themecolor.container)
                                          ]),
                                            BarChartGroupData(
                                          x: 5,
                                          barRods: [
                                            BarChartRodData(fromY: 0,toY: 6,color: Themecolor.container)
                                          ]),
                                            BarChartGroupData(
                                          x: 6,
                                          barRods: [
                                            BarChartRodData(fromY: 0,toY: 9,color: Themecolor.container)
                                          ]),
                                      ],
                                      titlesData: FlTitlesData(
                                        show: true,
                                        bottomTitles: AxisTitles(
                                          sideTitles: SideTitles(
                                            showTitles: true,
                                            
                                          )
                                        )
                                      )
                                    )
                                  ),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(15),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Themecolor.container2,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Trips',style: Themetext.atextstyle,),
                      Text('Time Online',style: Themetext.atextstyle,),
                      Text('Total Distance',style: Themetext.atextstyle,)
                    ],
                  ),
                  SizedBox(height: height*0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(totalTrip,style: Themetext.atextstyle.copyWith(
                        fontWeight: FontWeight.bold
                      ),),
                      Text(onlineTime,style: Themetext.atextstyle.copyWith(
                        fontWeight: FontWeight.bold
                      ),),
                      Text(totalDistance,style: Themetext.atextstyle.copyWith(
                        fontWeight: FontWeight.bold
                      ),)],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  
}
