import 'package:flutter/material.dart';
import 'package:medical_chatbot/components/custom_button.dart';
import 'package:medical_chatbot/components/input_fields.dart';

void main() {
  runApp(const SignUpScreenExtended());
}

class SignUpScreenExtended extends StatelessWidget {
  const SignUpScreenExtended({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                height: MediaQuery.of(context).size.height *0.08,
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
              const InputFields(
                hintText: 'Password',
                keyBoardLayout: TextInputType.text,
              ),
              const SizedBox(
                height: 10,
              ),
              const InputFields(
                hintText: 'Confirm Password',
                keyBoardLayout: TextInputType.text,
              ),
              const SizedBox(
                height: 10,
              ),
              ContinueButton(displayText: 'Continue', onTap: ()=>{},),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 2,
                thickness: 1,
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
      ),
    );
  }
}
