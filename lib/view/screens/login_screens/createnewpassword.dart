import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Themesdata/elevatedbutton/elevatedbutton.dart';


class newpassword extends StatefulWidget {
  const newpassword({super.key});

  @override
  State<newpassword> createState() => _newpasswordState();
}

class _newpasswordState extends State<newpassword> {
  TextEditingController newpasswordcontroller=TextEditingController();
    TextEditingController confirmpasswordcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFEFEFE),
        leading: Icon(Icons.arrow_back),
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
              Text('Enter your new password'),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              TextField(
                controller: newpasswordcontroller,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: 'New Password',
                  labelStyle: Theme.of(context).textTheme.bodySmall,
                  hintText: 'Enter  a New Password',
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                   contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 8), 
                  border: OutlineInputBorder(
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
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  labelStyle: Theme.of(context).textTheme.bodySmall,
                  hintText: 'Confirm Your Password',
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                   contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 8), 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(
                        10)), // Use Radius.circular to specify the border radius
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              CustomElevatedButton(
                buttonText: 'Next', 
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
         SizedBox(
           height: 15,
         ),
         Wrap(
           children: [
             Text(
               'Your password is successfully created',
               textAlign: TextAlign.center,
             ),
           ],
         ),
         SizedBox(
           height: 15,
         ),
         Padding(
           padding: const EdgeInsets.only(left: 30, right: 30),
           child: ElevatedButton(
             onPressed: () {},
             child: Text(
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
