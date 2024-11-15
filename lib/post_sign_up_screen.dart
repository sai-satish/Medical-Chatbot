import 'package:flutter/material.dart';
import 'package:medical_chatbot/components/input_fields.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(21, 119, 112, 1)),
        primaryColor: const Color.fromRGBO(21, 119, 112, 1),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black), // Primary heading
          displayMedium: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: Colors.black87), // Secondary heading
          bodyMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.black54), // Body text
          bodySmall: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: Colors.black45), // Smaller body text
          labelSmall: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w300,
              color: Colors.black45), // Smaller body text
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const PostSignUpScreen(),
    ),
  );
}

class PostSignUpScreen extends StatefulWidget {
  const PostSignUpScreen({super.key});

  @override
  State<PostSignUpScreen> createState() => _PostSignUpScreenState();
}

class _PostSignUpScreenState extends State<PostSignUpScreen> {
  TextEditingController date = TextEditingController();
  TextEditingController month = TextEditingController();
  TextEditingController year = TextEditingController();

  void dobInput() async {
    final dob = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // Default selected date
      firstDate: DateTime(2000), // Earliest selectable date
      lastDate: DateTime.now(), // Latest selectable date
    );
    setState(() {
      date.text = '${dob?.day}';
      month.text = '${dob?.month}';
      year.text = '${dob?.year}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 400,
          ),
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const InputFields(
                hintText: "Username",
                keyBoardLayout: TextInputType.text,
              ),
              const SizedBox(
                height: 8,
              ),
              const InputFields(
                hintText: "Weight",
                keyBoardLayout: TextInputType.numberWithOptions(decimal: true),
              ),
              const SizedBox(
                height: 8,
              ),
              //InputFields(hintText: "Dob", keyBoardLayout: TextInputType.datetime,),
              Row(
                children: [
                  Container(
                      constraints: const BoxConstraints(
                        maxWidth: 20,
                      ),
                      padding: const EdgeInsets.only(right: 4),
                      child: TextField(
                        controller: date,
                      )),
                  Container(
                      constraints: const BoxConstraints(
                        maxWidth: 20,
                      ),
                      padding: const EdgeInsets.only(right: 4),
                      child: TextField(
                        controller: month,
                      )),
                  Container(
                      constraints: const BoxConstraints(
                        maxWidth: 40,
                      ),
                      padding: const EdgeInsets.only(right: 4),
                      child: TextField(
                        controller: year,
                      )),
                  IconButton(
                      onPressed: dobInput,
                      icon: const Icon(Icons.calendar_month_outlined)),
                ],
              ),
              const DropdownMenu(
                dropdownMenuEntries: <DropdownMenuEntry>[
                  DropdownMenuEntry(value: 'male', label: 'male'),
                  DropdownMenuEntry(value: 'female', label: 'female'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
