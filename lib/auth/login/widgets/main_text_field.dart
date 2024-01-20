import 'package:flutter/material.dart';

import '../../../shared/utils/colors.dart';

class MainTextField extends StatelessWidget {
  MainTextField({super.key,  this.labeltext, this.controller,this.prefixIcon,this.suffixIcon,this.hintText,this.onSubmitted,this.onChanged});
  final String? labeltext;
  final String? hintText;
  final TextEditingController? controller;
  void Function(String)? onSubmitted;
  void Function(String)? onChanged;
  Widget? prefixIcon;
  Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return  Flexible(
      child: SizedBox(
        height: 70,
        child: TextField(
          onChanged: onChanged,
          controller: controller,
          onSubmitted:onSubmitted ,
          decoration: InputDecoration(
            labelText: labeltext,
            hintText:hintText ,
            hintStyle: const TextStyle(fontSize: 12),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: ColorsAsset.kPrimary
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: ColorsAsset.kPrimary
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: ColorsAsset.kPrimary
              ),
            ),
          ),
        ),
      ),
    );
  }
}
