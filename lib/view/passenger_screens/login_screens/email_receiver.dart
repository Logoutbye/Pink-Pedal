import 'package:flutter/material.dart';
import 'package:liveproject/utilis/routes/routes_name.dart';
import 'package:liveproject/utilis/components/elevatedbutton.dart';

class EmailReciever extends StatefulWidget {
  const EmailReciever({Key? key}) : super(key: key);

  @override
  State<EmailReciever> createState() => _EmailRecieverState();
}

class _EmailRecieverState extends State<EmailReciever> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/emailp.png',
              width: width * 0.5, // Adjust the image width as a fraction of screen width
            ),
          ),
          SizedBox(height: height * 0.02), // Adjust spacing as a fraction of screen height
          Text(
            'Check your mail',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(height: height * 0.01),
         const Wrap(
            alignment: WrapAlignment.center,
            children: [
              Text(
                'We have sent a password recovery instructions to your email',
                textAlign: TextAlign.center,
              )
            ],
          ),
          SizedBox(height: height * 0.02),
          CustomElevatedButton(
            text: 'Open Email App',
            onPressed: () {
             
            },
          ),
          SizedBox(height: height * 0.02),
          InkWell(
            onTap: ()=>Navigator.pushNamed(context, RoutesName.forGotPassword),
            child: Text(
              'Skip, I’ll confirm later',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          SizedBox(height: height * 0.05),
          Padding(
            padding: EdgeInsets.all(width * 0.05),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Did not receive the email?',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text:
                            ' Check your spam filter or try another email address',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
}
