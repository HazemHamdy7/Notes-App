// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:note_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});

  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: Center(
          child: isLoading
              ? const SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(color: Colors.black))
              : const Text('Add',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}


// to show loading indicator in the button create value named isLoading = frist 'false'
// and chack in the text widget if it is loading then show loading indicator
// go the buttom and make custom butttom isloading = true like this project
//and make custom buttom Wrap with BlocBuilder and check if it is loading then show loading indicator 
// like this  " isLoading: state is AddNoteLoading ? true : false, "