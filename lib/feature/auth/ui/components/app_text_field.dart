import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    required this.controller,
    required this.labelText,
    this.obscureText = false,
  });

  final TextEditingController controller;
  final String labelText;
  final bool obscureText;

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
        obscureText: _passwordVisible,
        validator: emptyValidator,
        maxLines: 1,
        controller: widget.controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.labelText,
          prefixIcon: const SizedBox(),
          hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
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

  String? emptyValidator(String? value) {
    if (value?.isEmpty == true) {
      return "Обязательное поле";
    }
    return null;
  }
}
