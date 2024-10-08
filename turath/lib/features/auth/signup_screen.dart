import 'package:flutter/material.dart';
import 'package:turath/core/utils/app_assets.dart';
import 'package:turath/core/utils/app_colors.dart';
import 'package:turath/core/utils/app_text_style.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _obscurePass = true;
  bool _obscureConfirmPass = true;

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
                            child: Text('تُراث',
                                style: AppTextStyle.arabicTextW800S24.copyWith(
                                    color: AppColors.textColorPrimary)),
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
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      labelStyle: AppTextStyle.bodyText
                          .copyWith(color: AppColors.textColorHint),
                      prefixIcon: Icon(Icons.person_outline,
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
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      labelStyle: AppTextStyle.bodyText
                          .copyWith(color: AppColors.textColorHint),
                      prefixIcon: Icon(Icons.phone_outlined,
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
                    obscureText: _obscurePass,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: AppTextStyle.bodyText
                          .copyWith(color: AppColors.textColorHint),
                      prefixIcon: Icon(Icons.lock_outline_rounded,
                          color: AppColors.secondaryColor),
                      suffixIcon: IconButton(
                        icon: Icon(
                            _obscurePass
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AppColors.secondaryColor),
                        onPressed: () {
                          setState(() {
                            _obscurePass = !_obscurePass;
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
                  const SizedBox(height: 20.0),
                  TextFormField(
                    style: AppTextStyle.headLine
                        .copyWith(color: AppColors.textColorSecondary),
                    cursorColor: AppColors.primaryColor,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _obscureConfirmPass,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      labelStyle: AppTextStyle.bodyText
                          .copyWith(color: AppColors.textColorHint),
                      prefixIcon: Icon(Icons.lock_outline_rounded,
                          color: AppColors.secondaryColor),
                      suffixIcon: IconButton(
                        icon: Icon(
                            _obscureConfirmPass
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AppColors.secondaryColor),
                        onPressed: () {
                          setState(() {
                            _obscureConfirmPass = !_obscureConfirmPass;
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
                  const SizedBox(height: 50.0),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'Sign Up',
                        style: AppTextStyle.headLineW600S32.copyWith(
                          color: AppColors.textColorPrimary,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 70.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have account?",
                          style: AppTextStyle.bodyTextW500S24
                              .copyWith(color: AppColors.textColorPrimary)),
                      TextButton(
                        onPressed: () {},
                        child: Text('Sign In',
                            style: AppTextStyle.bodyText.copyWith(
                                fontSize: 20,
                                color: AppColors.textColorSecondary)),
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
