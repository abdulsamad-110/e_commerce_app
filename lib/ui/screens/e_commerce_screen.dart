import 'package:e_commerce_app/ui/screens/details_screen.dart';
import 'package:e_commerce_app/ui/widgits/custom_appbar.dart';
import 'package:e_commerce_app/ui/widgits/custom_bottomnavbar.dart';
import 'package:e_commerce_app/ui/widgits/custombutton.dart';
import 'package:e_commerce_app/ui/widgits/mydropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'e_commerce_controller.dart';

class ECommerceScreen extends StatelessWidget {
  const ECommerceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ECommerceController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppBar(
          backgroundColor: Colors.white,
          leftText: 'Back',
          leftTextStyle: const TextStyle(color: Colors.grey),
          centerText: 'KS7',
          centerTextStyle: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black54),
          rightText: 'Share',
          rightTextStyle: const TextStyle(color: Colors.grey),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    text: 'Filter',
                    icon: Icons.filter_list,
                    onPressed: () {
                      print('Filter button pressed');
                    },
                    color: Colors.black,
                  ),
                  MyDropdown()
                ],
              ),
            ),
            SizedBox(
              height: 700,
              width: context.width,
              child: GridView.builder(
                shrinkWrap: false,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                ),
                scrollDirection: Axis.vertical,
                itemCount: controller.hoddieData.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(8),
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                controller.hoddieData[index]['name'],
                                style: const TextStyle(fontSize: 12),
                              ),
                              Text(
                                '${controller.hoddieData[index]['price']} EUR',
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Text(
                            controller.hoddieData[index]['direction'],
                            style: const TextStyle(fontSize: 12),
                          ),
                          Text(
                            controller.hoddieData[index]['color'],
                            style: const TextStyle(fontSize: 12),
                          ),
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                // Get.to(() => const DetailsScreen(index: 0));
                                Get.to(() => DetailsScreen(
                                      item: controller.hoddieData[index],
                                      index: index,
                                    ));
                              },
                              child: Image.asset(
                                controller.hoddieData[index]['img_url'],
                                height: 80,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => CustomBottomNavBar(
          currentIndex: controller.currentIndex.value,
          onTap: (int index) {
            controller.updateIndex(index);
          },
        ),
      ),
    );
  }
}
