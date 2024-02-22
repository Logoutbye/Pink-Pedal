import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liveproject/import_all.dart';

class SignUpForPassenger extends ConsumerStatefulWidget {
  const SignUpForPassenger({super.key});

  @override
  ConsumerState<SignUpForPassenger> createState() => _SignUpForPassengerState();
}

class _SignUpForPassengerState extends ConsumerState<SignUpForPassenger> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authViewModel = ref.watch(signUpViewModelProvider);

    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Themecolor.container2,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text('Sign up', style: Theme.of(context).textTheme.bodyMedium
            // Set text color for AppBar title
            ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              color: const Color(0xFF03008B),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create Account',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: const Color(0xFFFFFFFF)),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text('Please to fill up the data to create your account',
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Full Name',
                      style: Themetext.btextstyle
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: height * 0.01),
                  Container(
                    height: height * 0.07,
                    padding: const EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      color: Themecolor.textfield,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      controller: nameController,
                      keyboardType: TextInputType.text,
                      style: Themetext.atextstyle,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your Full Name',
                        hintStyle: Themetext.btextstyle,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text('Phone Number',
                      style: Themetext.btextstyle
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: height * 0.01),
                  Container(
                    height: height * 0.07,
                    padding: const EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      color: Themecolor.textfield,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      controller: phoneController,
                      keyboardType: TextInputType.text,
                      style: Themetext.atextstyle,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your phone Number',
                        hintStyle: Themetext.btextstyle,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text('Email Address',
                      style: Themetext.btextstyle
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: height * 0.01),
                  Container(
                    height: height * 0.07,
                    padding: const EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      color: Themecolor.textfield,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      controller: emailController,
                      keyboardType: TextInputType.text,
                      style: Themetext.atextstyle,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your Email Address',
                        hintStyle: Themetext.btextstyle,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text('Password',
                      style: Themetext.btextstyle
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: height * 0.01),
                  Container(
                    height: height * 0.07,
                    padding: const EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      color: Themecolor.textfield,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      controller: passwordController,
                      keyboardType: TextInputType.text,
                      style: Themetext.atextstyle,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your Password',
                        hintStyle: Themetext.btextstyle,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            authViewModel.status == Status.LOADING
                ? const CircularProgressIndicator() // Show loading spinner
                : CustomElevatedButton(
                    text: 'Create An Account',
                    onPressed: () {
                      final email = emailController.text;
                      final password = passwordController.text;
                      final name = nameController.text;
                      final phone = phoneController.text;
                      if (email.isEmpty) {
                        Utils.toastMessage('Please Enter Email');
                      } else if (password.isEmpty) {
                        Utils.toastMessage('Please Enter Password');
                      } else if (name.isEmpty) {
                        Utils.toastMessage('Please Enter Name');
                      } else if (phone.isEmpty) {
                        Utils.toastMessage('Please Enter Phone Number');
                      } else {
                        ref
                            .read(signUpViewModelProvider.notifier)
                            .signUpApi(email, password, name, phone, context);
                      }

                      // navigatorsignup();
                    }),
            // CustomElevatedButton(
            //     text: 'Verfy otp',
            //     onPressed: () {
            //       Navigator.pushNamed(context, RoutesName.otpScreen,
            //           arguments: OtpDetilasArgument(
            //               phoneNo: phoneController.text,
            //               isCommingFromRegistrationScreen: true,
            //               verifyWithEmail: false));
            //     })
          ],
        ),
      ),
    );
  }

  // @override
  // void dispose() {
  //   nameController.clear();
  //   phoneController.clear();
  //   emailController.clear();
  //   passwordController.clear();
  //   super.dispose();
  // }
}
