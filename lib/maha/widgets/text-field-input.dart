import 'package:flutter/material.dart';
import '../pallete.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    Key? key,
    required this.icon,
    required this.hint,
    this.inputType,
    this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType? inputType;
  final TextInputAction? inputAction;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Expanded(
        child: Container(
          height: size.height * 0.07,
          width: size.width * 0.9,
          decoration: BoxDecoration(
            color: Colors.grey[500]!.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17.0),
                  child: Icon(
                    icon,
                    size: 20,
                    color: kBrown,
                  ),
                ),
                hintText: hint,
                hintStyle: kBodyText,
              ),
              style: kBodyText,
              keyboardType: inputType,
              textInputAction: inputAction,
            ),
          ),
        ),
      ),
    );
  }
}