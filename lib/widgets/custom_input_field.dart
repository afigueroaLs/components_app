import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {


  final String?  hintText;
  final String?  labelText;
  final String?  helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;


  const CustomInputField({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.icon, 
    this.suffixIcon, 
    this.keyboardType, 
    this.obscureText = false, 
    required this.formProperty, 
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) =>  formValues[formProperty] = value,
      
      validator: (value) {
        if(value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Minímo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText, //placeholder
        labelText: labelText,
        helperText: helperText,
        // counterText: '3 chars',
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        // prefixIcon: Icon(Icons.verified_user_sharp)
        icon: icon == null ? null : Icon(icon),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(

        //     color: Colors.green)
        // ),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),
        //   topLeft: Radius.circular(20)
        //   )
        // )
      ),
    );
  }
}