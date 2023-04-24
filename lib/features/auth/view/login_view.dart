//
// Import LIBRARIES#
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// Import FILES
import '../../../common/common.dart';
import '../../../constants/constants.dart';
import '../../../widgets/auth_field.dart';
import '../../../theme/pallete.dart';
import '../../../features/auth/view/signup_view.dart';
// Import PARTS
// PROVIDERS

class LoginView extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const LoginView(),
      );
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final appbar = UiConstants.appBar();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // TO#DO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: <Widget>[
                // space - added with Centre()
                // textfield 1
                AuthField(
                  controller: emailController,
                  hintText: 'Email address',
                ),
                const SizedBox(height: 25.0),
                // textfield 2
                AuthField(
                  controller: passwordController,
                  hintText: 'PassWord',
                ),
                // some space
                const SizedBox(height: 20.0),
                // button
                Align(
                  alignment: Alignment.topRight,
                  child: RoundedSmallButton(
                    onTap: () {},
                    label: 'Done',
                  ),
                ),
                // some space
                const SizedBox(height: 40.0),
                // RichText
                RichText(
                  text: TextSpan(
                      text: 'Don\'t have an account?',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                            text: '  Sign Up',
                            style: const TextStyle(
                              color: Pallete.blueColor,
                              fontSize: 16,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  // MaterialPageRoute(
                                  //   builder: (context) => const SignUpView(),
                                  // ),
                                  SignUpView.route(),
                                );
                              }),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
