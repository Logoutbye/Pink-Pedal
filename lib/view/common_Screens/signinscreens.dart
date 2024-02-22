import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liveproject/import_all.dart';

class SigninScreen extends ConsumerWidget {
  SigninScreen({
    Key? key,
  }) : super(key: key);

  TextEditingController emailtext = TextEditingController();

  TextEditingController passtext = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authViewModel = ref.watch(loginViewModelProvider);

    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Themecolor.container2,
          ),
        ),
        title: const Text(
          'Sign in',
          style:
              TextStyle(color: Colors.white), // Set text color for AppBar title
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: height * 0.12,
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              color: const Color(0xFF03008B),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, Welcome Back! 👋',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: const Color(0xFFFFFFFF)),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text('Please fill up your information to continue',
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                      controller: emailtext,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
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
                      controller: passtext,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your Password',
                        hintStyle: Themetext.btextstyle,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Row(
                      //   children: [
                      //     Checkbox(
                      //       value: false, // Set the initial value as needed
                      //       onChanged: (bool? value) {
                      //         // Handle the state change
                      //       },
                      //     ),
                      //     Text('Remember Me',
                      //         style:
                      //             Theme.of(context).textTheme.bodyMedium),
                      //   ],
                      // ),
                      const SizedBox(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () => Navigator.pushNamed(
                              context, RoutesName.forgetPasswordWithOptions),
                          child: Text('Forgot Password',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: const Color(0xFF03008B))),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Center(
                    child: authViewModel.status == Status.LOADING
                        ? const CircularProgressIndicator() // Show loading spinner
                        : CustomElevatedButton(
                            text: 'Sign in',
                            onPressed: () {
                              final email = emailtext.text;
                              final password = passtext.text;
                              ref.read(loginViewModelProvider.notifier).loginApi(
                                  email,
                                  password,
                                  GetRole.role.toString(),
                                  context);
                            },
                          ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don’t have an account? '),
                      GestureDetector(
                        onTap: () {},
                        child: InkWell(
                          onTap: () {
                            if (GetRole.role == 'user') {
                              Navigator.pushNamed(
                                  context, RoutesName.signUpforPassenger);
                            } else {
                              Utils.snackBar(
                                  'Please create the driver rigisrtration screen first',
                                  context);
                              // Navigator.pushNamed(
                              //     context, RoutesName.signUpUser);
                            }
                          },
                          child: Text(
                            'Signup',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: const Color(0xFF03008B)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        // width: MediaQuery.of(context).size.width / 2,
        child: Text.rich(TextSpan(children: [
          TextSpan(
              text: 'By signing up you agree to our ',
              style: Themetext.btextstyle),
          TextSpan(
              text: 'Terms ', style: Theme.of(context).textTheme.bodySmall),
          TextSpan(text: 'and ', style: Themetext.btextstyle),
          TextSpan(
              text: 'Conditions of Use',
              style: Theme.of(context).textTheme.bodySmall)
        ])),
      ),
    );
  }

  // void navigatorsignin() {
  //   Navigator.pushNamed(context, RoutesName.addDestination);
  // }
}
