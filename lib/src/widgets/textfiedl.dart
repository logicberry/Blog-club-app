import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/core.dart';

class BCTextField extends StatefulWidget {
  final String? hintText, labeltext;
  final TextEditingController? controller;
  final Widget? icon, prefix;
  final TextInputType? inputType;
  final bool isPassword;

  const BCTextField(
      {super.key,
      this.hintText,
      this.controller,
      this.inputType,
      this.labeltext,
      this.icon,
      this.isPassword = false,
      this.prefix});

  @override
  State<BCTextField> createState() => _BCTextFieldState();
}

class _BCTextFieldState extends State<BCTextField> {
  late bool _obscureText;
  @override
  void initState() {
    _obscureText = widget.isPassword;
    _obscureText = false;
    super.initState();
  }

  void pass() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    const UnderlineInputBorder defaultOutlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(width: 1, color: AppColors.darkGrey),
    );

    const UnderlineInputBorder focusedOutlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(width: 1, color: AppColors.blue),
    );
    return SizedBox(
      height: SizeConfig.height(66),
      child: TextFormField(
        obscureText: (widget.isPassword) ? !_obscureText : _obscureText,
        style: TextStyle(
            fontSize: 16.sp,
            fontFamily: 'Avenir',
            color: AppColors.darkBlue,
            letterSpacing: 1,
            decoration: TextDecoration.none,
            decorationStyle: TextDecorationStyle.dotted,
            decorationColor: AppColors.white),
        controller: widget.controller,
        keyboardType: widget.inputType ?? TextInputType.text,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            labelText: widget.hintText,
            hintText: widget.hintText,
            contentPadding: const EdgeInsets.all(5),
            isDense: true,
            floatingLabelStyle: Theme.of(context).textTheme.bodySmall,
            labelStyle: Theme.of(context).textTheme.bodySmall,
            hintStyle: Theme.of(context).textTheme.bodySmall,
            prefixIcon: widget.prefix,
            suffix: (widget.isPassword)
                ? GestureDetector(
                    onTap: pass,
                    child: Text(
                      _obscureText ? 'Hide' : 'Show',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: AppColors.blue),
                    ),
                  )
                : null,
            border: defaultOutlineInputBorder,
            enabledBorder: defaultOutlineInputBorder,
            focusedBorder: focusedOutlineInputBorder),
        cursorColor: AppColors.blue,
      ),
    );
  }
}
