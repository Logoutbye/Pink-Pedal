
import 'package:liveproject/import_all.dart';


class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  TextEditingController newpasswordcontroller=TextEditingController();
    TextEditingController confirmpasswordcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
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
                   contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8), 
                  border:const OutlineInputBorder(
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
                   contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8), 
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(
                        10)), // Use Radius.circular to specify the border radius
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              CustomElevatedButton(
                text: 'Next', 
                onPressed: (){
        opendialog();
                })
            ],
          ),
        ),
      ),
    );
  }
 void  opendialog(){
    showDialog(
      context: context,
       builder: (context){
return AlertDialog(
     title: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Image.asset(
           'assets/images/illusterate.png',
           width: MediaQuery.of(context).size.width * 0.5,
           height: MediaQuery.of(context).size.height *0.2,
         ),
       
         Text(
           'Success',
           style: Theme.of(context).textTheme.bodySmall,
         ),
         const SizedBox(
           height: 15,
         ),
         const Wrap(
           children: [
             Text(
               'Your password is successfully created',
               textAlign: TextAlign.center,
             ),
           ],
         ),
         const SizedBox(
           height: 15,
         ),
         Padding(
           padding: const EdgeInsets.only(left: 30, right: 30),
           child: ElevatedButton(
             onPressed: () {
              Navigator.pushNamed(context, RoutesName.signInUser);
             },
             child: const Text(
               'Continue',
               style: TextStyle(color: Colors.white),
             ),
           ),
         ),
       ],
     ),

);
       });
  }
}
