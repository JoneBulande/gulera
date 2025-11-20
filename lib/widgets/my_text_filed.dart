import 'package:flutter/material.dart';
import 'package:gulera/core/app_colors.dart';

class MyTextFiled extends StatelessWidget {
  //
  final String hitText;
  final bool obscureText;
  const MyTextFiled({
    super.key,
    required this.hitText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      style: TextStyle(color: AppColors.green_500), // Texto branco ao escrever
      decoration: InputDecoration(
        filled: true,
        hintText: hitText,
        hintStyle: TextStyle(fontSize: 15, color: Colors.white54),
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 24),
        fillColor: Colors.black,
        // Borda quando o input está ativo/focado
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: AppColors.green_700, width: 2),
        ),
        // Borda padrão
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide.none,
        ),
        // Borda quando habilitado mas não focado
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
