import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turath/core/utils/app_colors.dart';
import 'package:turath/core/utils/app_text_style.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int saved = 0;
  int posts = 1;
  int share = 2;
  double spaceBeespaceBetweenButtons = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('My Profile',
                  style: AppTextStyle.headLineW700S32
                      .copyWith(color: AppColors.textColorPrimary)),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('$saved',
                      style: AppTextStyle.bodyTextW400S18
                          .copyWith(color: AppColors.textColorSecondary)),
                  Text('$posts',
                      style: AppTextStyle.bodyTextW400S18
                          .copyWith(color: AppColors.textColorSecondary)),
                  Text('$share',
                      style: AppTextStyle.bodyTextW400S18
                          .copyWith(color: AppColors.textColorSecondary)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Saved',
                    style: AppTextStyle.bodyTextW600S24.copyWith(
                        color: AppColors.textColorPrimary, fontSize: 24),
                  ),
                  Text(
                    'Posts',
                    style: AppTextStyle.bodyTextW600S24.copyWith(
                        color: AppColors.textColorPrimary, fontSize: 24),
                  ),
                  Text(
                    'Share',
                    style: AppTextStyle.bodyTextW600S24.copyWith(
                        color: AppColors.textColorPrimary, fontSize: 24),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),

              // settings button
              TextButton(
                onPressed: () {
                  setState(() {});
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                  side: BorderSide(
                    color: AppColors.primaryColor,
                    width: 1,
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    gradient: AppColors.cardBgColor,
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.settings_outlined,
                              color: AppColors.primaryColor,
                              size: 30,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Settings',
                              style: AppTextStyle.headLineW600S13.copyWith(
                                  color: AppColors.textColorPrimary,
                                  fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: spaceBeespaceBetweenButtons,
              ),
              // about us button
              TextButton(
                onPressed: () {
                  setState(() {});
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                  side: BorderSide(
                    color: AppColors.primaryColor,
                    width: 1,
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    gradient: AppColors.cardBgColor,
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.info_circle,
                              color: AppColors.primaryColor,
                              size: 30,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              'About Us',
                              style: AppTextStyle.headLineW600S13.copyWith(
                                  color: AppColors.textColorPrimary,
                                  fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: spaceBeespaceBetweenButtons,
              ),
              // cardes button
              TextButton(
                onPressed: () {
                  setState(() {});
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                  side: BorderSide(
                    color: AppColors.primaryColor,
                    width: 1,
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    gradient: AppColors.cardBgColor,
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.creditcard,
                              color: AppColors.primaryColor,
                              size: 30,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Saved Cards',
                              style: AppTextStyle.headLineW600S13.copyWith(
                                  color: AppColors.textColorPrimary,
                                  fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: spaceBeespaceBetweenButtons,
              ),
              // cart button
              TextButton(
                onPressed: () {
                  setState(() {});
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                  side: BorderSide(
                    color: AppColors.primaryColor,
                    width: 1,
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    gradient: AppColors.cardBgColor,
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.cart,
                              color: AppColors.primaryColor,
                              size: 30,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Cart',
                              style: AppTextStyle.headLineW600S13.copyWith(
                                  color: AppColors.textColorPrimary,
                                  fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: spaceBeespaceBetweenButtons,
              ),
              // logout button
              TextButton(
                onPressed: () {
                  setState(() {});
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    gradient: AppColors.cardBgColor,
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.logout,
                              color: AppColors.errorColor,
                              size: 30,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Logout',
                              style: AppTextStyle.headLineW600S13.copyWith(
                                  color: AppColors.textColorPrimary,
                                  fontSize: 24),
                            ),
                          ],
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
    );
  }
}
