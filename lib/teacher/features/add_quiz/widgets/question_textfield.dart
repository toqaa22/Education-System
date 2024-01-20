import 'package:flutter/material.dart';

import '../../../../shared/utils/colors.dart';

class QuestionTextField extends StatelessWidget {
  const QuestionTextField({super.key, this.onChanged, required this.hintText});
  final void Function(String)? onChanged;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.5,
      child: TextFormField(
        decoration:  InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
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
        onChanged:onChanged
      ),
    );
  }
}
