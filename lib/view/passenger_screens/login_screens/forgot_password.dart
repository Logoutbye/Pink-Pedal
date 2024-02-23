import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liveproject/import_all.dart';

class ForgotPassword extends ConsumerStatefulWidget {
  final String withEmailOrPhoneNo;
  const ForgotPassword({super.key, required this.withEmailOrPhoneNo});

  @override
  ConsumerState<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends ConsumerState<ForgotPassword> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final verifyOtpViewModel = ref.watch(otpViewModelProvider);

    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: CommonIcons.arrowback),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Forgot Password',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const Text('Recover your account password'),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                    widget.withEmailOrPhoneNo == 'email'
                        ? 'Email Address'
                        : 'Phone Number',
                    style: Themetext.btextstyle
                        .copyWith(fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: height * 0.01),
            Container(
              height: height * 0.07,
              padding: const EdgeInsets.only(left: 8),
              decoration: BoxDecoration(
                color: Themecolor.textfield,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                controller: controller,
                keyboardType: widget.withEmailOrPhoneNo == 'email'
                    ? TextInputType.text
                    : TextInputType.number,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: widget.withEmailOrPhoneNo == 'email'
                      ? 'Enter Your Email Address'
                      : 'Enter Your Phone Number',
                  hintStyle: Themetext.btextstyle,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Center(
                child: verifyOtpViewModel.status == Status.LOADING
                    ? const CircularProgressIndicator()
                    : CustomElevatedButton(
                        text: 'Send OTP',
                        onPressed: () => ref
                            .read(otpViewModelProvider.notifier)
                            .resendOtp(
                                controller.text,
                                true,
                                widget.withEmailOrPhoneNo == 'email'
                                    ? true
                                    : false,
                                context),
                      )),
            // onPressed: () => Navigator.pushNamed(
            //     context, RoutesName.otpScreen,
            //     arguments: OtpDetilasArgument(
            //         phoneNo: controller.text,
            //         isCommingFromRegistrationScreen: false)))
          ],
        ),
      ),
    );
  }
}

class ForgetPasswordArguments {
  final String withEmailOrPhoneNo;
  ForgetPasswordArguments({
    required this.withEmailOrPhoneNo,
  });
}
