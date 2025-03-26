// widgets/misc/src/or.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager_app/constants/constants.dart';

/// Widget to display 'or' separator in column
class Or extends StatelessWidget {
  const Or({super.key, this.padding});

  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.only(top: 20, bottom: 12.5),
      alignment: Alignment.center,
      child: Text(
        Labels.or,
        style: GoogleFonts.nunito(
          textStyle: const TextStyle(color: Colors.amber),
          fontWeight: FontWeight.w700,
          fontSize: 20,
          fontStyle: FontStyle.italic,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
