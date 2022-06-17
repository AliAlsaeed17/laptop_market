import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laptop_market/constants.dart';
import 'package:laptop_market/views/widgets/custom_header.dart';
import 'package:laptop_market/views/widgets/custom_list_tile.dart';
import 'package:laptop_market/themes.dart';
import '../../controllers/controller.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({Key? key}) : super(key: key);
  final _controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          padding: kPageContentPadding,
          child: Column(
            children: [
              const CustomHeader(title: 'Setting'),
              const SizedBox(height: 30.0),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Theme.of(context).backgroundColor,
                    ),
                    child: Column(
                      children: [
                        CustomListTile(
                          title: 'Night Mode',
                          rightPadding: 0,
                          trailing: Obx(() {
                            return Switch(
                              value: _controller.isDarkMode.value,
                              onChanged: (value) {
                                _controller.toggleSwitch();
                              },
                              activeColor: Colors.blue,
                            );
                          }),
                          onTap: () {},
                        ),
                        const Padding(
                          padding: kDividerPadding,
                          child: Divider(
                            color: Colors.black,
                          ),
                        ),
                        CustomListTile(
                          title: 'Notifications',
                          trailing: Icon(Icons.arrow_forward_ios,
                              color: Theme.of(context).iconTheme.color),
                          onTap: () {},
                        ),
                        const Padding(
                          padding: kDividerPadding,
                          child: Divider(
                            color: Colors.black,
                          ),
                        ),
                        CustomListTile(
                          title: 'About',
                          trailing: Icon(Icons.arrow_forward_ios,
                              color: Theme.of(context).iconTheme.color),
                          onTap: () {},
                        ),
                        const SizedBox(
                          height: 15.0,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
