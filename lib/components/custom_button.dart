import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String buttonName;

  const CustomButton({
    Key? key,
    required this.buttonName,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;
  Color containerColor = Colors.white;
  bool isHovered = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _animation = Tween<double>(begin: 0, end: 220).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      onHover: (bool value) {
        if (value) {
          _animationController.forward();
          setState(() {
            containerColor = const Color(0xFF009688);
            isHovered = true;
          });
        } else {
          _animationController.reverse();
          setState(() {
            containerColor = const Color(0xFF009688);
            isHovered = false;
          });
        }
      },
      child: Stack(
        children: [
          Container(
            width: 220,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 1.5,
                color: const Color(0xFF009688),
              ),
            ),
            child: Center(
              child: Text(
                widget.buttonName,
                style: TextStyle(
                  color: isHovered ? Colors.transparent : Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Container(
            width: _animation.value,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: containerColor,
            ),
            child: Center(
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 300),
                style: const TextStyle(color: Colors.black, fontSize: 20),
                child: isHovered
                    ? FittedBox(child: Text(widget.buttonName))
                    : const Text(''),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
