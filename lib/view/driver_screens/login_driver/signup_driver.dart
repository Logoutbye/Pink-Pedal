import 'package:liveproject/import_all.dart';

class SignupDriver extends StatefulWidget {
  const SignupDriver({super.key});

  @override
  State<SignupDriver> createState() => _SignupDriverState();
}

class _SignupDriverState extends State<SignupDriver> {
  TextEditingController emailtext = TextEditingController();
  TextEditingController passtext = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Themecolor.container,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Themecolor.container2,
          ),
        ),
        title: Text('Sign up', style: Theme.of(context).textTheme.bodyMedium
            // Set text color for AppBar title
            ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Themecolor.container2,
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
                        controller: emailtext,
                        keyboardType: TextInputType.text,
                        style: const TextStyle(color: Colors.black),
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
                        controller: passtext,
                        keyboardType: TextInputType.text,
                        style: const TextStyle(color: Colors.black),
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
                        controller: passtext,
                        keyboardType: TextInputType.text,
                        style: const TextStyle(color: Colors.black),
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
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      'Car Details',
                      style: Themetext.atextstyle,
                    ),
                    //  SizedBox(height: height*0.01,),
                    Text(
                      'Select Vehicle',
                      style: Themetext.btextstyle,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Themecolor
                                      .container, // Change the color to your desired color
                                  width:
                                      2, // Adjust the width of the border as needed
                                ),
                              ),
                              child: CircleAvatar(
                                maxRadius: 30,
                                child: Image.asset(AssetPaths.bike),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text('Bike',
                                style: Themetext.atextstyle
                                    .copyWith(fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Icon(Icons.circle_outlined),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(AssetPaths.car),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text('car',
                                style: Themetext.atextstyle
                                    .copyWith(fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Icon(
                              Icons.circle,
                              color: Themecolor.container,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(AssetPaths.carry),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text('Carry',
                                style: Themetext.atextstyle
                                    .copyWith(fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Icon(Icons.circle_outlined),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(AssetPaths.PremierCar),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text('Premier car',
                                style: Themetext.atextstyle
                                    .copyWith(fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Icon(Icons.circle_outlined),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text('Enter Car Name',
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
                          hintText: 'Select a catagory',
                          hintStyle: Themetext.btextstyle,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text('Enter Car Number ',
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
                          hintText: 'Enter Your car numbers',
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
                height: height * 0.02,
              ),
              CustomElevatedButton(
                  text: 'Create An Account',
                  onPressed: () {
                    navigatorsignup();
                  }),
              SizedBox(
                height: height * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigatorsignup() {
    // Navigator.pushNamed(context, RoutesName.otpCode);
  }
}
