import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextInput extends StatelessWidget {
  const TextInput(
      {Key? key,
      this.isPassword = false,
      this.hintText = '',
      this.titleText = ''})
      : super(key: key);

  final bool isPassword;
  final String titleText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: GoogleFonts.openSans(
            color: const Color(0xff17171A),
          ),
        ),
        const SizedBox(
          height: 21,
        ),
        TextFormField(
          obscureText: isPassword ? true : false,
          style: GoogleFonts.openSans(
            color: const Color(0xff17171A),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.visibility,
              color: isPassword
                  ? const Color(0xff262A34)
                  : const Color(0xffF3F3F3),
            ),
            hintText: hintText,
            hintStyle: GoogleFonts.openSans(
              color: const Color(0xff6F7075),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: BorderSide.none,
            ),
            fillColor: const Color(0xffF3F3F3),
            filled: true,
          ),
        ),
      ],
    );
  }
}
