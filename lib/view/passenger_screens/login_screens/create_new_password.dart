// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liveproject/import_all.dart';


class CreateNewPassword extends ConsumerStatefulWidget {
  final String token;
  final String phoneOrEmail;
  final bool verifyWithEmail;
  const CreateNewPassword({
    Key? key,
    required this.token,
    required this.phoneOrEmail,
    required this.verifyWithEmail,
  }) : super(key: key);

  @override
  ConsumerState<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends ConsumerState<CreateNewPassword> {
  TextEditingController newpasswordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final createViewModel = ref.watch(createNewPasswordViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFEFEFE),
        leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Center(
                  child: Text(
                'Create a',
                style: Theme.of(context).textTheme.bodyLarge,
              )),
              Center(
                  child: Text(
                'New Password',
                style: Theme.of(context).textTheme.bodyLarge,
              )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text('Enter your new password'),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              TextField(
                controller: newpasswordcontroller,
                keyboardType: TextInputType.text,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: 'New Password',
                  labelStyle: Theme.of(context).textTheme.bodySmall,
                  hintText: 'Enter  a New Password',
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(
                        10)), // Use Radius.circular to specify the border radius
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              TextField(
                controller: confirmpasswordcontroller,
                keyboardType: TextInputType.text,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  labelStyle: Theme.of(context).textTheme.bodySmall,
                  hintText: 'Confirm Your Password',
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(
                        10)), // Use Radius.circular to specify the border radius
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Center(
                child: createViewModel.status == Status.LOADING
                    ? const CircularProgressIndicator()
                    : CustomElevatedButton(
                        text: 'Next',
                        onPressed: () {
                          if (newpasswordcontroller.text ==
                              confirmpasswordcontroller.text) {
                            // opendialog();
                            ref
                                .read(
                                    createNewPasswordViewModelProvider.notifier)
                                .createNewPasswordApi(
                                    widget.phoneOrEmail,
                                    newpasswordcontroller.text,
                                    widget.token,
                                    context);
                          } else {
                            Utils.snackBar('Passwords doesnot match', context);
                          }
                        }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CreateNewPasswordArugments {
  final String token;
  final String phoneOrEmail;
  final bool verifyWithEmail;
  CreateNewPasswordArugments(
      {required this.token,
      required this.phoneOrEmail,
      required this.verifyWithEmail});
}
