import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laptop_market/views/widgets/buttons/rounded_icon_text_button.dart';
import 'package:laptop_market/views/widgets/custom_header.dart';
import 'package:laptop_market/views/widgets/custom_list_tile.dart';
import '../../../constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      //backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          padding: kPageContentPadding,
          child: Column(
            children: [
              const CustomHeader(title: 'Profile'),
              const SizedBox(height: 20.0),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        //TODO : need to config light/dark theme
                        //backgroundColor: kContenetCardDecoration, in light mode
                        decoration: kContenetCardDecoration.copyWith(
                            color: Theme.of(context).backgroundColor),
                        child: Padding(
                          padding: kContentCardPadding,
                          child: Column(
                            children: [
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  //TODO : need to config light/dark theme
                                  //color: kIconBackgroundColor,in light mode
                                  color: Colors.blueGrey[600],
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/logo.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(kProfilePhotoBorderRadius),
                                  ),
                                  border: kProfilePhotoBorder,
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              Text(
                                'Jelly Grande',
                                style: kNormalTextStyle.copyWith(
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8.0),
                              const Text(
                                '+62 123 456 78',
                                style: kNormalTextStyle,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      Container(
                        height: 240,
                        padding: kListTileContainerPadding,
                        //TODO : need to config light/dark theme
                        //backgroundColor: kContenetCardDecoration, in light mode
                        decoration: kContenetCardDecoration.copyWith(
                            color: Theme.of(context).backgroundColor),
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return CustomListTile(
                              title: kProfileSettignsList[index]['title']
                                  .toString(),
                              leadingExist: true,
                              leading: Icon(
                                kProfileSettignsList[index]['leading']
                                    as IconData,
                                color: Theme.of(context).iconTheme.color,
                              ),
                              trailing: Icon(Icons.arrow_forward_ios,
                                  color: Theme.of(context).iconTheme.color),
                              onTap: () {},
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(height: 7);
                          },
                          itemCount: kProfileSettignsList.length,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: RoundedIconButton(
        radius: 10,
        icon: Icon(
          Icons.logout,
        ),
        text: 'Logout',
        //TODO : need to config light/dark theme
        //backgroundColor: kIconBackgroundColor & delete textColor, in light mode
        backgroundColor: Theme.of(context).backgroundColor,
        //textColor: kWhiteColor,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
