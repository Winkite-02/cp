import 'package:cp/components/button.dart';
import 'package:cp/components/button2.dart';
import 'package:cp/models/course.dart';
import 'package:cp/theme/colors.dart';
import 'package:flutter/material.dart';

import '../components/course_tile.dart';
import 'course_details_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  // date course
  List dateCourse = [

    // 피아크
    Course(name: "\n피아크",
        branch: "카페   ",
        imagePath: "lib/images/coffee.png",
        area: "부산",
    ),

    // 사운즈포레스트
    Course(name: "\n사운즈포레스트",
        branch: "더현대서울  ",
        imagePath: "lib/images/christmas.png",
        area: "서울",
    ),

    // 쿵스게임랜드
    Course(name: "\n쿵스게임랜드",
      branch: "VR게임장   ",
      imagePath: "lib/images/game.png",
      area: "대전",
    ),

    // 슈가파인
    Course(name: "\n슈가파인",
      branch: "애견카페   ",
      imagePath: "lib/images/pet.png",
      area: "대구",
    ),

    // 요기놀자
    Course(name: "\n요기놀자",
      branch: "실내캠핑장   ",
      imagePath: "lib/images/camp.png",
      area: "인천",
    ),
  ];

  // Navigate to course item details page
  void navigateToCourseDetails(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
      builder: (context) => CourseDetailsPage(
        course: dateCourse[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 240, 240),
      appBar: AppBar(
        backgroundColor: Colors. transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text('커픽', style: TextStyle(
          color: Colors.grey[900],
          fontFamily: 'NotoSansKR',
          fontWeight: FontWeight.w400,
          letterSpacing: -2.0,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // promo banner
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
              padding:  const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // promo message
                      const Text(
                        ' 인생샷은 못참지!',
                      style: TextStyle(
                        fontSize: 26,
                        fontFamily: 'NotoSansKR',
                        fontWeight: FontWeight.w800,
                        letterSpacing: -2.0,
                        color: Colors.white
                      ),
                      ),

                      const SizedBox(height: 5),

                      // subtitle
                      Text(
                        "   커픽 데이트코스 후기 남기고 \n" "   커플 프로필 사진 찍자!",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'NotoSansKR',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -1.0,
                          color: Colors.white
                      ),
                    ),

                    const SizedBox(height: 10),

                    // redeem button
                      MyButton2(
                        text: "이벤트 응모",
                        onTap: () {},
                    )
                  ],
                ),

                // image
                  Image.asset(
                    'lib/images/camera.png',
                    height: 130,
                  ),
                ],
              ),
            ),

          const SizedBox(height: 25),

          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ), hintText: "장소, 지역, 분야 등 무엇이든 검색해보세요.",
                hintStyle: TextStyle(
                  fontSize: 15,
                  fontFamily: 'NotoSansKR',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -1.0,
                  color: Colors.grey[600],
                ),
              ),
            ),
          ),

          const SizedBox(height: 19),

          // date course
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text("   커픽!  데이트 장소",
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'NotoSansKR',
              fontWeight: FontWeight.w500,
              letterSpacing: -2.0,
              color: Colors.grey[900]
            ),
            ),
          ),

          const SizedBox(height: 10),

          Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dateCourse.length,
                itemBuilder: (context, index) => CourseTile(
                  course: dateCourse[index],
                  onTap: () => navigateToCourseDetails(index),
                ),
                ),
              ),

          const SizedBox(height: 5),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text("   커픽!  버킷리스트",
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'NotoSansKR',
                fontWeight: FontWeight.w500,
                letterSpacing: -2.0,
                color: Colors.grey[900]
              ),
            ),
          ),

          const SizedBox(height: 10),

          //bucket list
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 35),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Row(
                children: [
                  Image.asset(
                    'lib/images/spa.png',
                    height: 70,
                  ),

                  const SizedBox(width: 20),

                  // name and area
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // name
                      Text(
                          "'온천가기' 잊으신 거 아니죠?",
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'NotoSansKR',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -1.0,
                          color: Colors.grey[900],
                        ),
                      ),

                      const SizedBox(height: 3),

                      // area
                      Text(
                          "딱 맞는 데이트코스 보러가기",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'NotoSansKR',
                        fontWeight: FontWeight.w300,
                        letterSpacing: -1.0,
                        color: Colors.grey[700],
                      ),
                      ),
                    ],
                  ),
                ],
              ),

                  // heart
              const Icon(
                Icons.favorite_outline,
                color: Colors.grey,
                size: 22,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}