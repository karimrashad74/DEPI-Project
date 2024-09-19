import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:turath/core/utils/app_assets.dart';
import 'package:turath/core/utils/app_colors.dart';
import 'package:turath/core/utils/app_text_style.dart';
import 'package:turath/features/home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // logo turath
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(
                          color: AppColors.primaryColor,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              Assets.imagesLogo,
                              color: AppColors.primaryColor,
                              width: 80,
                              height: 70,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'تُراث',
                              style: AppTextStyle.arabicTextW800S24
                                  .copyWith(color: AppColors.textColorPrimary),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 80.0),
                  TextFormField(
                    style: AppTextStyle.headLine
                        .copyWith(color: AppColors.textColorSecondary),
                    cursorColor: AppColors.primaryColor,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                      labelStyle: AppTextStyle.bodyText
                          .copyWith(color: AppColors.textColorHint),
                      prefixIcon: Icon(Icons.email_outlined,
                          color: AppColors.secondaryColor),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.borderColor),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primaryColor),
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  TextFormField(
                    style: AppTextStyle.headLine
                        .copyWith(color: AppColors.textColorSecondary),
                    cursorColor: AppColors.primaryColor,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: AppTextStyle.bodyText
                          .copyWith(color: AppColors.textColorHint),
                      prefixIcon: Icon(Icons.lock_outline_rounded,
                          color: AppColors.secondaryColor),
                      suffixIcon: IconButton(
                        icon: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AppColors.secondaryColor),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.borderColor),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primaryColor),
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Forget Password?',
                          style: AppTextStyle.bodyText
                              .copyWith(color: AppColors.textColorPrimary)),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign in',
                        style: AppTextStyle.headLineW600S32.copyWith(
                          color: AppColors.textColorPrimary,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: TextButton(
                      onPressed: () {},
                      child: Text('OR',
                          style: AppTextStyle.bodyText.copyWith(
                              color: AppColors.textColorPrimary,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: AppColors.borderColor,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Assets.imagesGoogle,
                            width: 25.0,
                            height: 25.0,
                          ),
                          const SizedBox(width: 10.0),
                          Text('Sign in with Gmail',
                              style: AppTextStyle.headLineW500S24
                                  .copyWith(color: AppColors.textColorPrimary)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't you have an account?",
                          style: AppTextStyle.bodyText
                              .copyWith(color: AppColors.textColorPrimary)),
                      TextButton(
                        onPressed: () {},
                        child: Text('Sign Up',
                            style: AppTextStyle.bodyText.copyWith(
                                color: AppColors.textColorSecondary,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
