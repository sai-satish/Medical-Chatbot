import 'package:flutter/material.dart';
import 'package:medical_chatbot/components/custom_button.dart';
import 'package:medical_chatbot/components/input_fields.dart';
import 'package:medical_chatbot/password_confirmation_page.dart';

void main() {
  runApp(const SignUpScreen());
}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              'App Name',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.12, // 20% of screen height
            ),
            Text(
              'Create an Account',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Enter your email to sign up for this app',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: 10,
            ),
            const InputFields(
              hintText: 'email@domain.com',
              keyBoardLayout: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 10,
            ),
        ContinueButton(displayText: 'Continue', onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpScreenExtended(),),)),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: <Widget>[
                Expanded(
                  child: Divider(
                    color: Colors.grey, // Divider color
                    thickness: 1, // Divider thickness
                    height: 2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'or',
                    style: TextStyle(color: Colors.black), // Text style
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey, // Divider color
                    thickness: 1, // Divider thickness
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            ContinueButton(
              iconValue: Icons.import_contacts,
              displayText: 'Continue with Google',
              fillColor: Colors.white12,
              style: const TextStyle(color: Colors.black),
              onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpScreenExtended(),)),
            ),

            const SizedBox(
              height: 5,
            ),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.labelSmall,
                children: const <TextSpan>[
                  TextSpan(
                    text: 'By clicking continue, you agree to our ',
                  ),
                  TextSpan(
                    text: 'Terms of Service ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'and ',
                  ),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
