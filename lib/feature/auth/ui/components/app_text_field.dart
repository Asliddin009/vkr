import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  const AppTextField(
      {super.key,
      required this.controller,
      required this.labelText,
      this.obscureText = false,
      this.autofillHints = const [],
      this.autofocus = false});

  final TextEditingController controller;
  final String labelText;
  final bool obscureText;
  final bool autofocus;
  final List<String> autofillHints;
  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(6)),
      child: TextFormField(
        autofocus: widget.autofocus,
        autofillHints: widget.autofillHints,
        obscureText: _passwordVisible,
        maxLines: 1,
        controller: widget.controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.labelText,
          prefixIcon: const SizedBox(),
          suffixIcon: widget.obscureText
              ? IconButton(
                  icon: Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _passwordVisible = widget.obscureText;
  }
}
