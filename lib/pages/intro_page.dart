import 'package:cp/components/button.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 228, 133, 134),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const SizedBox(height: 35),
            // shop name
            Text(
              "© 커픽",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'NotoSansKR',
                fontWeight: FontWeight.w400,
                letterSpacing: -2.0,
                color: Colors.white
              ),
            ),

            const SizedBox(height: 60),

            // icon
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Image.asset('lib/images/coupick_logo.png'),
            ),

            const SizedBox(height: 30),

            // title
            Text(
              "  커플들의 선택",
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'NotoSansKr',
                fontWeight: FontWeight.w800,
                letterSpacing: -2.0,
                color: Colors.white
              ),
            ),

            const SizedBox(height: 7),

            // subtitle
            Text(
              "      손쉽게 정하는 취향저격 데이트 코스 \n" "      사랑하는 사람과의 뜻깊은 버킷리스트 \n" "      모두 커픽에서 만나볼 수 있어요!",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'NotoSansKR',
                fontWeight: FontWeight.w400,
                letterSpacing: -2.0,
                color: Colors.white
              ),
            ),

            const SizedBox(height: 40),

            // get started button
            MyButton(text: "커픽 시작하기",
              onTap: () {
                // go to menu page
                Navigator.pushNamed(context, '/menupage');
              },
            )
          ],
        ),
      ),
    );
  }
}