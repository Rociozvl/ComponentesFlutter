import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

     final String?labelText;
     final String? hintText;
     final String? helperText;
     final IconData? suffixIcon;
     final IconData? icon ;
     final TextInputType? keyboardType;
     final String formProperty;
     final Map<String ,String>formValues;
      
      
      const CustomInputField({
        Key ?key,
        required this.labelText,
        required this.hintText,
        required this.helperText,
        required this.icon,
         required this.suffixIcon, 
         this.keyboardType, 
         
          required this.formValues, required this.formProperty,
   }) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
    autofocus: true,
    initialValue: '',
    textCapitalization: TextCapitalization.words,
    keyboardType: keyboardType,
    onChanged: (value){
      formValues[formProperty] = value;
    },
      validator: (value){
      if(value == null) return 'Este campo es requerido';
      return value.length < 3 ? 'Minimo 3 letras' : null;
    },
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: InputDecoration(
      labelText: labelText,
      hintText: hintText,
      helperText: helperText,
      suffixIcon: icon == null? null : Icon(suffixIcon),
      icon: icon == null ? null : Icon(icon)
    ),
   );
  }
}