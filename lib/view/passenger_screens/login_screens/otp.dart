import 'package:liveproject/import_all.dart';

class Otpscreen extends StatefulWidget {
  final bool isCreateAccount;

  const Otpscreen({Key? key, required this.isCreateAccount}) : super(key: key);

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Center(
              child: Text(
                'Enter OTP',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Color(0xFF1E1E1E),
                    ),
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        'We have just sent you 4 digit code via your email ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Color(0xFF9CA4AB),
                        ),
                  ),
                  TextSpan(
                    text: 'example@gmail.com',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Form(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    otpcode(),
                    SizedBox(width: 10),
                    otpcode(),
                    SizedBox(width: 10),
                    otpcode(),
                    SizedBox(width: 10),
                    otpcode(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
         CustomElevatedButton(
  text: 'Continue',
  onPressed: () {
    Navigator.pushNamed(
      context, 
      widget.isCreateAccount ? RoutesName.createNewPassword : RoutesName.signInUser
    );
  },
),
            SizedBox(height: 20),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Didn’t receive code? ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Color(0xFF9CA4AB),
                        ),
                  ),
                  TextSpan(
                    text: 'Resend Code',
                    style: Theme.of(context).textTheme.bodySmall,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        alertbox();
                      },
                  )
                ],
              ),
            ),
            SizedBox(height: height * 0.01),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Wrong Email Address? ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Color(0xFF9CA4AB),
                        ),
                  ),
                  TextSpan(
                    text: 'Change Email',
                    style: Theme.of(context).textTheme.bodySmall,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, RoutesName.forGotPassword);
                      },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void alertbox() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'OTP sent successfully',
            style: Themetext.atextstyle,
          ),
        );
      },
    );
  }
}

class otpcode extends StatefulWidget {
  const otpcode({Key? key}) : super(key: key);

  @override
  State<otpcode> createState() => _otpcodeState();
}

class _otpcodeState extends State<otpcode> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64,
      height: 68,
      child: TextFormField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ],
        style: TextStyle(color: Colors.black, fontSize: 15),
        decoration: InputDecoration(
          fillColor: Color(0xFF9CA4AB),
          filled: true,
        ),
      ),
    );
  }
}
