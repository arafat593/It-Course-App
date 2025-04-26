import 'package:flutter/cupertino.dart';
import 'package:it_course/core/color.dart';

class MyCustomButton extends StatefulWidget {
  final void Function()? onTap;
  final String buttonText;
  final Color color;
  final Color textColor;

  const MyCustomButton({super.key, this.onTap, required this.buttonText, required this.color, required this.textColor});

  @override
  State<MyCustomButton> createState() => _MyCustomButtonState();
}

class _MyCustomButtonState extends State<MyCustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 40,
        width: 130,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(widget.buttonText, style: TextStyle(fontSize: 15, color: widget.textColor)),
      ),
    );
  }
}
