// pages/login/body.dart

part of 'login.dart';

class _Body extends StatelessWidget {
  const _Body() : super(key: const ValueKey('LoginBody'));

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Title(imageColor: Colors.black, textColor: Colors.white),

            const _Form(),

            //Forgot Password
            Container(
              padding: const EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: const Text(
                Labels.forgot_password,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  decorationColor: Colors.white,
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
