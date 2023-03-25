import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key, required this.onClick});

  final VoidCallback onClick;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onHover: (b) {
        setState(() {
          isHover = b;
        });
      },
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          backgroundColor:
              isHover ? const Color(0xFF633BBC) : const Color(0xFF8257E6)),
      //0xFF633BBC
      child: SizedBox(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "EMBARCAR NO FOGUETE",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                  color: Color(0xFF633BBC),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: const Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
  }
}
