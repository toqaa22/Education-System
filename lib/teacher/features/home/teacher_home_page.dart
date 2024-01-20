import 'package:education_system/teacher/features/home/row_list.dart';
import 'package:flutter/material.dart';

import '../../../shared/utils/colors.dart';
import '../upload_material/view/add_material_page.dart';


class TeacherHomePage extends StatefulWidget {
  const TeacherHomePage({super.key});

  @override
  State<TeacherHomePage> createState() => _TeacherHomePageState();
}

class _TeacherHomePageState extends State<TeacherHomePage> {
  Widget selectedWidget =   const AddMaterialPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/images/profile purple.png"),
                      ),
                      const SizedBox(width: 15,),
                      Column(
                        children: [
                          const Text("Teacher Name"),
                          const SizedBox(height: 5,),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: ColorsAsset.kPrimary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: (){},
                            child: const Text("Logout"),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),

                const Divider(),
                Expanded(
                  child: ListView.builder(
                    itemCount: TeacherRowList.rowList.length,
                    itemBuilder: (context, index) {
                      var item = TeacherRowList.rowList[index];
                      return ListTile(
                        selected: item.isSelected,
                        selectedColor: Colors.white,
                        selectedTileColor: ColorsAsset.kTextcolor,
                        // autofocus: true,
                        leading: Icon(
                          item.icon,
                          color: ColorsAsset.kbackgorund,
                        ),
                        title: Text(
                          item.title,
                          style: const TextStyle(),
                        ),
                        onTap: () {
                          updateSelectedWidget(index);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const VerticalDivider(),
          Expanded(
            flex: 6,
            child: selectedWidget,
          ),
        ],
      ),
    );
  }
  void updateSelectedWidget(int index) {
    setState(() {
      for (var element in TeacherRowList.rowList) {
        element.isSelected = false;
      }
      TeacherRowList.rowList[index].isSelected = true;
      selectedWidget = TeacherRowList.rowList[index].widgetBuilder();
    });
  }
}

