import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  final IconData? iconValue;
  final String displayText;
  final Color? fillColor;
  final TextStyle? style;
  final void Function()? onTap;

  const ContinueButton(
      {required this.displayText, this.iconValue, this.fillColor, this.style, required this.onTap,super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          fillColor ==null? Theme.of(context).primaryColor : fillColor,
        ),
        minimumSize: MaterialStateProperty.all(const Size(400, 50)),
        side: MaterialStateProperty.all(const BorderSide(color: Color.fromRGBO(0, 0, 0, 0.4), width: 0.5)),
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconValue == null ? const SizedBox(height: 0, width: 0,) : Icon(iconValue),
          const SizedBox(
            width: 8,
          ),
          Text(displayText,
          style: style,),
        ],
      ),
    );
  }
}
