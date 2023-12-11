import 'package:flutter/material.dart';

class MyButton2 extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const MyButton2({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // text
            Text(text,
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'NotoSansKR',
                  fontWeight: FontWeight.w600,
                  letterSpacing: -2.0,
                  color: Color.fromARGB(255, 228, 133, 134)
              ),
            ),

            const SizedBox(width: 8),

            // icon
            Icon(
                Icons.arrow_forward,
                color: Color.fromARGB(255, 228, 133, 134)
            ),
          ],
        ),
      ),
    );
  }
}