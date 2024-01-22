import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  

  CustomElevatedButton({
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
       style: ElevatedButton.styleFrom(
        // backgroundColor: Colors.deepPurple, // Set the background color to purple
    
      ),
      child: Text(buttonText,
      style: Theme.of(context).textTheme.bodyMedium,),
      
    );
  }
}
