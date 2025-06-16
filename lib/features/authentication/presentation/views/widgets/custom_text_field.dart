import 'package:auvnet_ecommerce/core/helpers/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.onSaved,
    this.inputType,
  });
  final String hintText;
  final IconData prefixIcon;
  final void Function(String?)? onSaved;
  final TextInputType? inputType;
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
          keyboardType: inputType,
          onSaved: onSaved,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'This field cannot be empty';
            } else {
              return null;
            }
          },

          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(prefixIcon, color: Colors.grey),
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}

class GenderDropDownList extends StatelessWidget {
  GenderDropDownList({super.key, this.onChanged});
  final void Function(String?)? onChanged;
  final List<DropdownMenuItem<String>> items = [
    DropdownMenuItem(value: 'male', child: Text('Male')),
    DropdownMenuItem(value: 'female', child: Text('Female')),
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton(
        isExpanded: true,
        items: items,
        onChanged: onChanged,
      ),
    );
  }
}

class CustomGenderField extends StatelessWidget {
  const CustomGenderField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.onSaved,
    this.inputType,
  });
  final String hintText;
  final IconData prefixIcon;
  final void Function(String?)? onSaved;
  final TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Color(0xFFA9A9A9),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Row(
          children: [
            TextFormField(
              keyboardType: inputType,
              onSaved: onSaved,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field cannot be empty';
                } else {
                  return null;
                }
              },

              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(prefixIcon, color: Colors.grey),
                hintText: hintText,
                hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
            const SizedBox(width: 10),
            GenderDropDownList(),
          ],
        ),
      ),
    );
  }
} // TODO: Implement Gender Selection
