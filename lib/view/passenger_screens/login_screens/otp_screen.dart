// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:liveproject/import_all.dart';
import 'package:liveproject/view_model/otp_view_model.dart';

class OtpScreen extends ConsumerStatefulWidget {
  final String phoneNumber;
  final bool verifyWithEmail;
  final bool isCommingFromRegistrationScreen;

  const OtpScreen(
      {Key? key,
      required this.phoneNumber,
      required this.verifyWithEmail,
      required this.isCommingFromRegistrationScreen})
      : super(key: key);

  @override
  ConsumerState<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends ConsumerState<OtpScreen> {
  TextEditingController firstBoxController = TextEditingController();
  TextEditingController secondBoxController = TextEditingController();
  TextEditingController thirdBoxController = TextEditingController();
  TextEditingController fourthBoxController = TextEditingController();
  FocusNode firstBoxNode = FocusNode();
  FocusNode secondBoxNode = FocusNode();
  FocusNode thirdBoxNode = FocusNode();
  FocusNode fourthBoxNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    final verifyOtpViewModel = ref.watch(otpViewModelProvider);

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
                        'We have just sent you 4 digit code via ${widget.phoneNumber} ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Color(0xFF9CA4AB),
                        ),
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
                    OtpCodeContainer(
                      number: firstBoxController,
                      currentNode: firstBoxNode,
                      nextNode: secondBoxNode,
                    ),
                    SizedBox(width: 10),
                    OtpCodeContainer(
                      number: secondBoxController,
                      currentNode: secondBoxNode,
                      nextNode: thirdBoxNode,
                    ),
                    SizedBox(width: 10),
                    OtpCodeContainer(
                      number: thirdBoxController,
                      currentNode: thirdBoxNode,
                      nextNode: fourthBoxNode,
                    ),
                    SizedBox(width: 10),
                    OtpCodeContainer(
                      number: fourthBoxController,
                      currentNode: fourthBoxNode,
                      nextNode: fourthBoxNode,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: verifyOtpViewModel.status == Status.LOADING
                  ? const CircularProgressIndicator() // Show loading spinner
                  : CustomElevatedButton(
                      text: 'Continue',
                      onPressed: () {
                        // Navigator.pushNamed(context, RoutesName.signInScreen);
                        var otp =
                            '${firstBoxController.text}${secondBoxController.text}${thirdBoxController.text}${fourthBoxController.text}';
                        print(otp);
                        ref.read(otpViewModelProvider.notifier).verifyOtp(
                            widget.phoneNumber,
                            otp,
                            widget.verifyWithEmail,
                            widget.isCommingFromRegistrationScreen,
                            context);
                      },
                    ),
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
                        // alertbox();
                        ref.read(otpViewModelProvider.notifier).resendOtp(
                            widget.phoneNumber, false, false, context);
                      },
                  )
                ],
              ),
            ),
            // SizedBox(height: height * 0.01),
            // Text.rich(
            //   TextSpan(
            //     children: [
            // TextSpan(
            //   text: 'Wrong Email Address? ',
            //   style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            //         color: Color(0xFF9CA4AB),
            //       ),
            // ),
            // TextSpan(
            //   text: 'Change Email',
            //   style: Theme.of(context).textTheme.bodySmall,
            //   recognizer: TapGestureRecognizer()
            //     ..onTap = () {
            //       Navigator.pushNamed(context, RoutesName.forGotPassword);
            //     },
            // )
            //     ],
            //   ),
            // )
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

class OtpCodeContainer extends StatefulWidget {
  TextEditingController number;
  FocusNode currentNode;
  FocusNode nextNode;
  OtpCodeContainer({
    Key? key,
    required this.number,
    required this.currentNode,
    required this.nextNode,
  }) : super(key: key);

  @override
  State<OtpCodeContainer> createState() => _OtpCodeContainerState();
}

class _OtpCodeContainerState extends State<OtpCodeContainer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 64,
          height: 68,
          child: TextFormField(
            onChanged: (value) {
              Utils.fieldFocusChange(
                  context, widget.currentNode, widget.nextNode);
            },
            controller: widget.number,
            focusNode: widget.currentNode,
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
        ),
      ],
    );
  }
}

class OtpDetilasArgument {
  final String phoneNo;
  final bool isCommingFromRegistrationScreen;
  final bool verifyWithEmail;
  OtpDetilasArgument({
    required this.phoneNo,
    required this.isCommingFromRegistrationScreen,
    required this.verifyWithEmail,
  });
}
