import 'package:auvnet_ecommerce/core/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomPasswordTextFieldChecking extends StatefulWidget {
  const CustomPasswordTextFieldChecking({
    super.key,
    required this.onSaved,
    required this.hintText,
  });
  final void Function(String?)? onSaved;
  final String hintText;
  @override
  State<CustomPasswordTextFieldChecking> createState() =>
      _CustomPasswordTextFieldCheckingState();
}

class _CustomPasswordTextFieldCheckingState
    extends State<CustomPasswordTextFieldChecking> {
  bool isPressed = false;

  _CustomPasswordTextFieldCheckingState();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: AppColors.kTextFormFieldColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'This field is required.';
            } else if (!isPasswordValid(value)) {
              return 'Password must be at least 8 characters,\ninclude upper & lower case, number, and special char.';
            } else {
              return null;
            }
          },
          onSaved: widget.onSaved,
          obscureText: !isPressed,
          obscuringCharacter: '*',
          decoration: InputDecoration(
            border: InputBorder.none,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPressed = !isPressed;
                });
              },
              child:
                  isPressed == false
                      ? const Icon(FontAwesomeIcons.eye)
                      : const Icon(FontAwesomeIcons.eyeSlash),
            ),
            hintText: widget.hintText,
            hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
          ),
        ),
      ),
    );
  }

  bool isPasswordValid(String password) {
    final regex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#\$&*~]).{8,}$',
    );
    return regex.hasMatch(password);
  }
}
