import 'package:flutter/material.dart';
// ignore: library_prefixes
import 'package:hostpitalmarketing/colors.dart' as baseColor;

class TextFieldInput extends StatefulWidget {
  final TextEditingController controller;
  final String name, errorMessage;
  final bool withIcon, withLabelText;
  final IconData prefixIcon;
  final bool obscureText;
  final TextCapitalization textCapitalization;
  final TextInputType inputType;
  final double marginLeft, marginTop, marginRight, marginBottom;

  const TextFieldInput(
      {Key? key,
      required this.controller,
      required this.name,
      required this.inputType,
      this.prefixIcon = Icons.abc,
      this.obscureText = false,
      this.textCapitalization = TextCapitalization.none,
      this.marginLeft = 0,
      this.marginTop = 0,
      this.marginRight = 0,
      this.marginBottom = 16,
      this.withIcon = false,
      this.withLabelText = true,
      this.errorMessage = ""})
      : super(key: key);

  @override
  State<TextFieldInput> createState() => _TextFieldInputState();
}

class _TextFieldInputState extends State<TextFieldInput> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: widget.marginLeft,
          top: widget.marginTop,
          right: widget.marginRight,
          bottom: widget.marginBottom),
      child: TextFormField(
        enabled: true,
        controller: widget.controller,
        textCapitalization: widget.textCapitalization,
        maxLength: 32,
        maxLines: 1,
        obscureText: widget.obscureText && !_passwordVisible,
        autocorrect: false,
        keyboardType: widget.inputType,
        textAlign: TextAlign.start,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
        decoration: InputDecoration(
          prefixIcon: widget.withIcon ? Icon(widget.prefixIcon) : null,
          suffixIcon: widget.obscureText
              ? IconButton(
                  icon: Icon(
                    // Based on passwordVisible state choose the icon
                    _passwordVisible ? Icons.visibility : Icons.visibility_off,
                    color: baseColor.primary,
                  ),
                  onPressed: () {
                    // Update the state i.e. toogle the state of passwordVisible variable
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                )
              : null,
          isDense: true,
          labelText: widget.withLabelText ? widget.name : null,
          hintText: !widget.withLabelText ? widget.name : null,
          counterText: "",
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: baseColor.smoothGrey),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: baseColor.primary),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: baseColor.smoothGrey),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          floatingLabelStyle: MaterialStateTextStyle.resolveWith(
            (Set<MaterialState> states) {
              final Color color = states.contains(MaterialState.error)
                  ? Theme.of(context).colorScheme.error
                  : baseColor.primary;
              return TextStyle(color: color, letterSpacing: 1.3);
            },
          ),
        ),
        validator: (String? value) {
          if (value == null || value == '') {
            return widget.errorMessage;
          }
          return null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }
}
