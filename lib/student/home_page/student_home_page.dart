import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_indicator/carousel_indicator.dart';

import '../../shared/utils/colors.dart';
import '../course_page/course_page.dart';

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
  final List<String> dropdownItems = [
    'الصف الاول',
    'الصف الثاني',
    'الصف الثالث'
  ];

  int _current = 0;
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsAsset.kLight2,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile purple.png"),
            ),
            const SizedBox(width: 10),
            const Text(
              "اسم الطالب",
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(width: 50),
            TextButton(
              onPressed: () {},
              child: const Text(
                "كورساتي",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: ColorsAsset.kPrimary),
              ),
            ),
            const SizedBox(width: 5),
            TextButton(
              onPressed: () {},
              child: const Text(
                "درجاتي",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: ColorsAsset.kPrimary),
              ),
            ),
            const SizedBox(width: 5),
            TextButton(
              onPressed: () {},
              child: const Text(
                "واجباتي",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: ColorsAsset.kPrimary),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset("assets/images/logo2.png"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CarouselSlider(
                      carouselController: _carouselController,
                      items: homeData.map((imagePath) {
                        return Builder(
                          builder: (BuildContext context) {
                            return SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Image.asset(
                                imagePath,
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        );
                      }).toList(),
                      options: CarouselOptions(
                          viewportFraction: 1,
                          height: MediaQuery.of(context).size.height * .78,
                          autoPlay: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                    ),
                  ],
                ),
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
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorsAsset.kPrimary,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorsAsset.kPrimary,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorsAsset.kPrimary,
                    ),
                  ),
                  labelText: "اختر السنة الدراسية",
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
            const Text(
              "هيا بنا نبدا",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: ColorsAsset.kPrimary),
            ),
            const Text(
              "مجموعة من امهر الاساتذة الموجودين حاليا",
              style: TextStyle(fontSize: 15, color: ColorsAsset.kPrimary),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
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
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Image.asset('assets/images/teacher.png'),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
