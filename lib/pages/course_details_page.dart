import 'package:cp/models/course.dart';
import 'package:cp/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CourseDetailsPage extends StatefulWidget {
  final Course course;

  const CourseDetailsPage({super.key, required this.course});

  @override
  State<CourseDetailsPage> createState() => _CourseDetailsPageState();
}

class _CourseDetailsPageState extends State<CourseDetailsPage> {

  // quantity
  int quantityCount = 0;

  // decrement quantity
  void decrementQuantity() {
    setState(() {
      if (quantityCount > 0) {
        quantityCount--;
      }
    });
  }

  //  increment quanriry
  void incrementQuantity() {
    setState(() {
      setState(() {
        quantityCount++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 240, 240),
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(children: [
        // listview of course details
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: ListView(
              children: [
                // image
                Image.asset(
                  widget.course.imagePath,
                  height: 200,
                ),

                const SizedBox(height: 25),

                // rating
                Row(
                  children: [
                    // star icon
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                    ),

                    const SizedBox(width: 5),

                    // rating number
                    Text('5.0',
                      style: TextStyle(
                       color: Colors.grey[600],
                       fontFamily: 'NotoSansKR',
                       fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),

                const SizedBox(height: 10),

                // area
                Text(widget.course.area,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[900],
                    fontFamily: 'NotoSansKR',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -2.0,
                  ),
                ),

                // branch
                Text(widget.course.branch,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[900],
                    fontFamily: 'NotoSansKR',
                    fontWeight: FontWeight.w300,
                    letterSpacing: -1.0,
                  ),
                ),

                // name
                Text(widget.course.name,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey[900],
                    fontFamily: 'NotoSansKR',
                    fontWeight: FontWeight.w600,
                    letterSpacing: -2.0,
                  ),
                ),

                // description
                Text(" 커픽 추천 데이트 장소!",
                  style: TextStyle(
                   fontSize: 20,
                   color: Colors.grey[900],
                   fontFamily: 'NotoSansKR',
                   fontWeight: FontWeight.w500,
                   letterSpacing: -2.0,
                ),
                ),

                const SizedBox(height: 10),

                Text("  당신에게 애인이 생긴다면 이곳을 꼭 방문하시길 바랍니다. 아닙니다. 사실 혼자서 방문해도 재미있게 놀 수 있으니 걱정말고 다들 놀러가세요. 종강이 다가오고 있습니다. 여러분도 미리미리 과제를 해치우시고 꿀잠에 들 수 있길 함께 기원합니다. 잠은 인생에서 아주 중요합니다. 먹는 것도 중요합니다. 이제 겨울이죠. 여러분 아아를 드십시오. 에그타르트 먹고 싶다. 에그타르트는 사상에 에그머니나가 존맛탱입니다. 다들 꼭 기억해주시길 바랍니다. 이 글을 여기까지 읽으셨다면 더이상 읽지 마십시오. 전혀 도움되지 않는 글입니다. 애인과 특별한 하루를 보내고 싶다면 데이트 장소로 추천!",
                  style: TextStyle(
                   fontSize: 17,
                   color: Colors.grey[800],
                   fontFamily: 'NotoSansKR',
                   fontWeight: FontWeight.w300,
                   letterSpacing: -1.0,
                  ),
                ),
              ],
            ),
          ),
        ),

        // information + quantity + add to cart button
        Container(
          color: primaryColor,
          padding: const EdgeInsets.all(25),
          child: Column(children: [
            // area + quanty
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // area
                Text("   지역정보 :   " + widget.course.area,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: 'NotoSansKR',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -1.0,
                  ),
                ),

                // quantity
                Row(children: [
                  // no button
                  Container(
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.sentiment_very_dissatisfied,
                        color: Colors.white,
                      ),
                      onPressed: decrementQuantity,
                    ),
                  ),

                  // quantity count
                  SizedBox(
                    width: 30,
                    child: Center(
                      child: Text(quantityCount.toString(),
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'NotoSansKR',
                        fontWeight: FontWeight.w600,
                        letterSpacing: -1.0,
                        ),
                      ),
                    ),
                  ),

                  // yes button
                  Container(
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.sentiment_very_satisfied,
                        color: Colors.white,
                      ),
                      onPressed: incrementQuantity,
                    ),
                  ),
                ],
                ),
              ],
            ),
          ],
          ),
        ),
      ],
      ),
    );
  }
}