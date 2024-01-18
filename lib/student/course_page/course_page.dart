import 'package:flutter/material.dart';

import '../../shared/utils/colors.dart';
import '../payment/payment_page.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

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
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                padding: const EdgeInsets.all(12),
                color: ColorsAsset.kLight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      width: 230,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/On the Spot (1).png"))),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "نبذة عامة ",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: ColorsAsset.kPrimary),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "اسم الاستاذ بالكامل",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: ColorsAsset.kTextcolor),
                              ),
                              Text(
                                " : الاسم",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: ColorsAsset.kPrimary),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "بكالوريوس في تعليم اللغة الإنجليزية",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: ColorsAsset.kTextcolor),
                              ),
                              Text(
                                " : الشهادة",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: ColorsAsset.kPrimary),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                " لديه خبرة تدريسية تزيد عن 5 سنوات في تدريس اللغة الانجليزية",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: ColorsAsset.kTextcolor),
                              ),
                              Text(
                                " : الخبرة",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: ColorsAsset.kPrimary),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            const Text(
              "اطلع علي الخطة الدراسية",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: ColorsAsset.kPrimary),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: const ExpansionTile(
                shape: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorsAsset.kPrimary,
                    )),
                backgroundColor: ColorsAsset.kLight,
                expandedAlignment: Alignment.topLeft,
                title: Text('الشهر الاول',style: TextStyle(fontWeight: FontWeight.bold,color:ColorsAsset.kPrimary),),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('الوحدة الاولي'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('اسالة عاملة'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('امتحان شامل'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: const ExpansionTile(
                shape: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorsAsset.kPrimary,
                    )),
                backgroundColor: ColorsAsset.kLight,
                expandedAlignment: Alignment.topLeft,
                title: Text('الشهر الثاني',style: TextStyle(fontWeight: FontWeight.bold,color:ColorsAsset.kPrimary),),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('الوحدة الاولي'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('اسالة عاملة'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('امتحان شامل'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: const ExpansionTile(
                shape: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorsAsset.kPrimary,
                    )),
                backgroundColor: ColorsAsset.kLight,
                expandedAlignment: Alignment.topLeft,
                title: Text('الشهر الثالث',style: TextStyle(fontWeight: FontWeight.bold,color:ColorsAsset.kPrimary),),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('الوحدة الاولي'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('اسالة عاملة'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('امتحان شامل'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PaymentPage(),));
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: ColorsAsset.kPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 8),
                child: Text('اشترك الان'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
