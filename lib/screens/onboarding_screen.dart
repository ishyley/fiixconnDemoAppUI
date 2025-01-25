import 'package:fiixcondemo/screens/login_screen.dart';
import 'package:fiixcondemo/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:fiixcondemo/resources/resources.dart' as resources;

class OnboardingScreen extends StatefulWidget {
  static const routeId = '/onboardingScreen';
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreen();
}

class _OnboardingScreen extends State<OnboardingScreen> {
  String? _dropdownSelectedValue = 'English';
  final _langdropdown = [
    'English',
    'Spanish',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            resources.AppAssets.onboardingbac,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topRight,
            child: ConstrainedBox(
              constraints: const BoxConstraints.expand(height: 50, width: 100),
              child: DropdownButtonFormField(
                // focusColor: Colors.white,

                value: _dropdownSelectedValue,
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
                decoration: const InputDecoration(border: InputBorder.none),
                items: _langdropdown.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    alignment: Alignment.centerLeft,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _dropdownSelectedValue = newValue!;
                  });
                },
              ),
            ),
          ),
        ),
        Align(
            alignment: Alignment.center,
            child: Image.asset(resources.AppAssets.appIconAsset)),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, LoginScreen.routeId);
                  },
                  child: Container(
                    height: 48,
                    width: 153.5,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(10)),
                    child: Center(
                        child: Text(
                      resources.AppStrings.login,
                      style: TextStyle(color: colors.btnColor, fontSize: 18),
                    )),
                  ),
                ),
                Container(
                  height: 48,
                  width: 153.5,
                  decoration: BoxDecoration(
                      color: colors.btnColor,
                      borderRadius: BorderRadiusDirectional.circular(10)),
                  child: const Center(
                      child: Text(
                    resources.AppStrings.signup,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
