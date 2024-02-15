import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:liveproject/utilis/components/elevatedbutton.dart';
import 'package:liveproject/utilis/theme/theme_text.dart';
import 'package:liveproject/utilis/theme/themecolors.dart';
import 'package:liveproject/utilis/constant/icons.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  bool isEditable = true;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Themecolor.container2,
        leading: CommonIcons.arrowback,
        title: Text(
          'Edit Profile',
          style: Themetext.atextstyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Full Name
              Text('Full Name', style: Themetext.btextstyle),
              SizedBox(height: height * 0.01),
              Container(
                padding: const EdgeInsets.only(left: 8),
                decoration: BoxDecoration(
                  color: Themecolor.textfield,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  controller: _nameController,
                  enabled: isEditable,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Umer Ishaq',
                    labelStyle: Themetext.btextstyle,
                  ),
                ),
              ),
              SizedBox(height: height * 0.01),

              // Date of Birth
              Text('Date of Birth', style: Themetext.btextstyle),
              SizedBox(height: height * 0.01),
              Container(
                padding: const EdgeInsets.only(left: 8),
                decoration: BoxDecoration(
                  color: Themecolor.textfield,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  controller: _dobController,
                  enabled: isEditable,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'June 14, 1996',
                    labelStyle: Themetext.btextstyle,
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.calendar_today, size: 30),
                      onPressed: () {
                        _selectDate(context, _dobController);
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.01),

              // Phone Number
              Text('Phone Number', style: Themetext.btextstyle),
              SizedBox(height: height * 0.01),
              Container(
                padding: const EdgeInsets.only(left: 8),
                decoration: BoxDecoration(
                  color: Themecolor.textfield,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  controller: _phoneNumberController,
                  enabled: isEditable,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: '+92 3169913414',
                    labelStyle: Themetext.btextstyle,
                  ),
                ),
              ),
              SizedBox(height: height * 0.01),

              // Email
              Text('Email', style: Themetext.btextstyle),
              SizedBox(height: height * 0.01),
              Container(
                padding: const EdgeInsets.only(left: 8),
                decoration: BoxDecoration(
                  color: Themecolor.textfield,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  controller: _emailController,
                  enabled: isEditable,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'younas7@gmail.com',
                    labelStyle: Themetext.btextstyle,
                  ),
                ),
              ),
              SizedBox(height: height * 0.15),

              // Edit Button
              Center(
                child: CustomElevatedButton(
                  text: 'Edit',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context, TextEditingController controller) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != DateTime.tryParse(controller.text ?? "")) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Selected Date"),
            content: Text(picked.toLocal().toString()),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );

      setState(() {
       controller.text = DateFormat('MMMM dd, yyyy').format(picked);
      });
    }
  }
}
