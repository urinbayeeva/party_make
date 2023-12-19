import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ClickAble extends StatefulWidget {
  final String text;
  final String image;
  final String? title;

  const ClickAble({
    required this.text,
    required this.image,
    this.title,
    Key? key,
  }) : super(key: key);

  @override
  State<ClickAble> createState() => _ClickAbleState();
}

class _ClickAbleState extends State<ClickAble> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isPressed = true;
          });
        },
        onDoubleTap: () {
          setState(() {
            isPressed = false;
          });
        },
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: isPressed ? const Color(0xFF251B27) : const Color(0xFF1C1C1C),
            borderRadius: BorderRadius.circular(8),
            border: isPressed
                ? Border.all(width: 1, color: const Color(0xFFD898FF))
                : null,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(widget.image),
              const SizedBox(
                height: 9,
              ),
              Text(
                widget.text,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              if (widget.title != null)
                Text(
                  widget.title!,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
