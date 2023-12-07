import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String name;
  final IconData icon;
  final String? errorMessage;
  final IconData? passwordIcon;
  final TextEditingController controller;
  bool? hideText;
  CustomTextField({
    super.key,
    required this.name,
    required this.icon,
    this.passwordIcon,
    this.errorMessage,
    required this.controller,
    this.hideText,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: TextField(
        obscureText: (widget.hideText == null) ? false : widget.hideText!,
        controller: widget.controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: widget.name,
          prefixIcon: Icon(widget.icon),
          errorText: widget.errorMessage,
          suffixIcon: widget.passwordIcon != null
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      widget.hideText = !widget.hideText!;
                    });
                  },
                  icon: Icon(widget.passwordIcon),
                )
              : null,
        ),
      ),
    );
  }
}
