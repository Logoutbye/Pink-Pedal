import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:liveproject/utilis/Themesdata/elevatedbutton/elevatedbutton.dart';
import 'package:liveproject/view/screens/login_screens/emailreceiver.dart';

class Otpscreen extends StatefulWidget {
  const Otpscreen({super.key});

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Center(
              child: Text('Enter OTP',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Color(0xFF1E1E1E),
                      )),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text:
                          'We have just sent you 4 digit code via your email ',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Color(0xFF9CA4AB),
                          )),
                  TextSpan(
                      text: 'example@gmail.com',
                      style: Theme.of(context).textTheme.bodySmall
                          // Set the color to blue
                      ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Form(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                             otpcode(),
                             SizedBox(width: 10,),
                             otpcode(),
                             SizedBox(width: 10,),
                             otpcode(),
                SizedBox(width: 10,),
                   otpcode(),
                    
                  ],
                ),
              )),
              SizedBox(height: 20,),
              CustomElevatedButton(
                buttonText: 'continue', 
                onPressed: (){
navigatorotp();
                }),
                SizedBox(height: 20,),
                Text.rich(
               TextSpan(
                children: [
                  TextSpan(
                    text: 'Didn’t receive code?',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Color(0xFF9CA4AB)
                    ),
                    
                  ),
                  TextSpan(
                    text: 'Resend Code',
                    style: Theme.of(context).textTheme.bodySmall
                  )
                ]
               )
                  )
          ],
        ),
      ),
    );
  }
    void navigatorotp(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Email_recieve()));
  }
}
class otpcode extends StatefulWidget {
  const otpcode({super.key});

  @override
  State<otpcode> createState() => _otpcodeState();
}

class _otpcodeState extends State<otpcode> {

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                    width: 64,
                    height: 68,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                      ],
                      style:TextStyle(color: Colors.black,
                      fontSize: 15),
                      decoration: InputDecoration(
                        fillColor: Color(0xFF9CA4AB),
                        filled: true
                      ),
                    ),
                  ) ;
  }
  
}
