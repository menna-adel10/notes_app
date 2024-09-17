import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorColor: AppColors.kPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        // hintStyle: const TextStyle(
        //   color: AppColors.kPrimaryColor,
        // ),
        border: const OutlineInputBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(AppColors.kPrimaryColor),
      ),
    );
  }


  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.white), // Moved here
      );
  }
}
