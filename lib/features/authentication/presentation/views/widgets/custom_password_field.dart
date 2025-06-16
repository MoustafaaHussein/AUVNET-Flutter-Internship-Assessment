import 'package:auvnet_ecommerce/core/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key, required this.onSaved});
  final void Function(String?)? onSaved;
  final String hintText = 'Password';
  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool isPressed = false;

  _CustomPasswordFieldState();
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
              return 'This field cannot be empty';
            } else {
              return null;
            }
          },
          onSaved: widget.onSaved,
          obscureText: !isPressed,

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
}
