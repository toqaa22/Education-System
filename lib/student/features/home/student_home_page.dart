import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:education_system/student/features/payment/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

import '../../../components/locale/applocale.dart';
import '../../../shared/utils/colors.dart';
import '../../widgets/cutom_appbar.dart';
import '../course_details/course_page.dart';

class StudentHomePage extends StatefulWidget {
  const StudentHomePage({super.key});

  @override
  StudentHomePageState createState() => StudentHomePageState();
}

class StudentHomePageState extends State<StudentHomePage> {
  final List<String> homeData = [
    "assets/images/Blue and Yellow University Etiquette Professional Presentation (6).png",
    "assets/images/Blue and Yellow University Etiquette Professional Presentation (6).png",
    "assets/images/Blue and Yellow University Etiquette Professional Presentation (6).png",
    "assets/images/Blue and Yellow University Etiquette Professional Presentation (6).png",
  ];
  String dropdownValue = 'الصف الاول';
  final List<String> dropdownItems = ['الصف الاول', 'الصف الثاني', 'الصف الثالث'];

  int _current = 0;
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: CarouselSlider(
              carouselController: _carouselController,
              items: homeData.map((imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.contain,
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                  height: double.infinity,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CarouselIndicator(
            count: homeData.length,
            index: _current,
            color: Colors.grey,
            activeColor: ColorsAsset.kPrimary,
            height: 3,
            width: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: DropdownButtonFormField<String>(
              value: dropdownValue,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsAsset.kPrimary,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsAsset.kPrimary,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsAsset.kPrimary,
                  ),
                ),
                labelText: '${getLang(context, "Select the academic year")}',
              ),
              items: dropdownItems.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '${getLang(context, "Let's Start Now")}',
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: ColorsAsset.kPrimary),
          ),
          Text(
            '${getLang(context, "A group of the most skilled professors")}',
            style: const TextStyle(fontSize: 15, color: ColorsAsset.kPrimary),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Spacer(),
              MyTextField(
                flex: 2,
                hintText: "Search",
                prefixIcon: const Icon(Icons.search),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CoursePage(),
                      ));
                    },
                    child: Card(
                      elevation: 1,
                      color: ColorsAsset.kLight2,
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Image.asset(
                              'assets/images/teacher.png',
                            ),
                          ),
                          const Text(
                            "Teacher Name",
                            style: TextStyle(color: ColorsAsset.kPrimary, fontWeight: FontWeight.bold, height: 2),
                          ),
                          const Text(
                            "Course Name",
                            style: TextStyle(color: ColorsAsset.kPrimary, fontWeight: FontWeight.bold, height: 2),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
