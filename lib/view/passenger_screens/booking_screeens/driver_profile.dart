import 'package:liveproject/import_all.dart';

class DriverProfile extends StatefulWidget {
  const DriverProfile({Key? key}) : super(key: key);

  @override
  State<DriverProfile> createState() => _DriverProfileState();
}

class _DriverProfileState extends State<DriverProfile> {
  String driverName = 'Younis Arif';
  List<RideReviewsModel> reviews = [
    RideReviewsModel(
      image: Image.asset(AssetPaths.image),
      username: 'umer ishaq',
      noOfStars: '5.0',
      ratings: '281',
      review: 'Lorem ipsum dolor sit amet consectetur. Lectus in neque dolor non. Morbi diam arcu sit iaculis. Nibh fermentum curabitur magna commodo et turpis sagittis bibendum. Feugiat ut quis nec diam elit.',
      time: 2,
    ),
   
    RideReviewsModel(
      image: Image.asset(AssetPaths.image1),
      username: 'qasim',
      noOfStars: '4.0',
      ratings: '281',
      review:
          'Lorem ipsum dolor sit amet consectetur. Lectus in neque dolor non. Morbi diam arcu sit iaculis. Nibh fermentum curabitur magna commodo et turpis sagittis bibendum. Feugiat ut quis nec diam elit.',
      time: 3,
    ),
       RideReviewsModel(
      image: Image.asset(AssetPaths.image),
      username: 'bilal bahi',
      noOfStars: '5.0',
      ratings: '288',
      review:
          'Lorem ipsum dolor sit amet consectetur. Lectus in neque dolor non. Morbi diam arcu sit iaculis. Nibh fermentum curabitur magna commodo et turpis sagittis bibendum. Feugiat ut quis nec diam elit.',
      time: 10,
    ),
      RideReviewsModel(
      image: Image.asset(AssetPaths.image),
      username: 'bilal bahi',
      noOfStars: '5.0',
      ratings: '288',
      review:
          'Lorem ipsum dolor sit amet consectetur. Lectus in neque dolor non. Morbi diam arcu sit iaculis. Nibh fermentum curabitur magna commodo et turpis sagittis bibendum. Feugiat ut quis nec diam elit.',
      time: 10,
    ),
      RideReviewsModel(
      image: Image.asset(AssetPaths.image),
      username: 'bilal bahi',
      noOfStars: '5.0',
      ratings: '288',
      review:
          'Lorem ipsum dolor sit amet consectetur. Lectus in neque dolor non. Morbi diam arcu sit iaculis. Nibh fermentum curabitur magna commodo et turpis sagittis bibendum. Feugiat ut quis nec diam elit.',
      time: 10,
    ),
      RideReviewsModel(
      image: Image.asset(AssetPaths.image),
      username: 'bilal bahi',
      noOfStars: '5.0',
      ratings: '288',
      review:
          'Lorem ipsum dolor sit amet consectetur. Lectus in neque dolor non. Morbi diam arcu sit iaculis. Nibh fermentum curabitur magna commodo et turpis sagittis bibendum. Feugiat ut quis nec diam elit.',
      time: 10,
    ),
      RideReviewsModel(
      image: Image.asset(AssetPaths.image),
      username: 'bilal bahi',
      noOfStars: '5.0',
      ratings: '288',
      review:
          'Lorem ipsum dolor sit amet consectetur. Lectus in neque dolor non. Morbi diam arcu sit iaculis. Nibh fermentum curabitur magna commodo et turpis sagittis bibendum. Feugiat ut quis nec diam elit.',
      time: 10,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                maxRadius: width * 0.08,
                backgroundImage: const AssetImage(AssetPaths.image),
              ),
            ),
            SizedBox(height: height * 0.01),
            Center(
              child: Text(
                driverName,
                style: Themetext.Dtextstyle,
              ),
            ),
            SizedBox(height: height * 0.01),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Text('5.0 (235 ratings)', style: Themetext.btextstyle),
                  ],
                ),
              ],
            ),
            SizedBox(height: height * 0.01),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage(AssetPaths.image1),
                    ),
                    title: Text('2,674 KM', style: Themetext.atextstyle),
                    subtitle:
                        Text('Distance shared', style: Themetext.btextstyle),
                  ),
                ),
                SizedBox(width: width * 0.2),
                Expanded(
                  child: ListTile(
                    leading: const Icon(Icons.car_crash_outlined, size: 30),
                    title: Text('410', style: Themetext.atextstyle),
                    subtitle: Text('Rides Shared', style: Themetext.btextstyle),
                  ),
                ),
              ],
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Reviews',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  TextSpan(text: ' (235 reviews)', style: Themetext.btextstyle)
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: reviews.length,
                itemBuilder: (context, index) {
                  var ridesReviews = reviews[index];
                  Image? leading = ridesReviews.image;
                  String title = ridesReviews.username ?? '';
                  String? title1 = ridesReviews.noOfStars;
                  String? title2= ridesReviews.ratings;
                  String? description=ridesReviews.review;
                  var trailing = ridesReviews.time;

                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: leading?.image,
                      maxRadius: 30,
                      
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,style: Themetext.Etextstyle,),
                         Row(
                      children: [
                        const Icon(Icons.star,color: Colors.amber,),
                        const SizedBox(
                            width:
                                4), // Add some spacing between the icon and text
                        Text('$title1 ($title2 ratings)',style: Themetext.btextstyle,),
                      ],
                    ),
                      ],
                    ),
                    subtitle:Text(description!,style: Themetext.btextstyle.copyWith(color: const Color(0xFF6C6C70)),),
                    
                    trailing: Text('$trailing hours ago'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RideReviewsModel {
  Image? image;
  String? username;
  int? time;
  String? noOfStars;
  String? ratings;
  String? review;

  RideReviewsModel({
    required this.image,
    required this.username,
    required this.noOfStars,
    required this.ratings,
    required this.review,
    required this.time,
  });
}
