// widgets/buttons/src/google_signin_button.dart

import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

/// Widget dedicated to handle Google authentication

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SignInButton(
        Buttons.google,
        onPressed: () async {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(020),
        ),
        padding: const EdgeInsets.only(left: 12),
      ),
    );
  }
}
