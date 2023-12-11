import 'package:cp/models/course.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CourseTile extends StatelessWidget {
  final Course course;
  final void Function()? onTap;
  const CourseTile({
    super.key,
    required this.course,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.only(left: 15, bottom: 15),
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          // image
          Image.asset(
            course.imagePath,
            height: 160,
        ),

            // text
            Text(
              course.name,
              style:
              TextStyle(
                fontSize: 18,
                fontFamily: 'NotoSansKR',
                fontWeight: FontWeight.w600,
                letterSpacing: -2.0,
                color: Colors.grey[900],
              ),
            ),

            // branch + area
            SizedBox(
              width: 150,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  // branch
                  Text(course.branch,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w300,
                      letterSpacing: -1.0,
                      color: Colors.grey[900],
                    ),
                  ),

                  // area
                  Row(
                    children: [
                      Icon(
                        Icons.place,
                        color: Color.fromARGB(255, 228, 133, 134),
                      ),
                      Text(course.area,
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'NotoSansKR',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -1.0,
                          color: Colors.grey[900],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
