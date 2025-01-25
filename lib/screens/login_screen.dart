import 'package:fiixcondemo/screens/home_screen.dart';
import 'package:fiixcondemo/resources/colors.dart';
import 'package:fiixcondemo/resources/resources.dart' as resources;
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const routeId = '/loginscreen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 25),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(resources.AppAssets.backbtn)),
            ),
          ),
          const Spacer(),
          Image.asset(resources.AppAssets.appIconAsset),
          const Spacer(),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        resources.AppStrings.username,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 8,
                      ),
                    ],
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: colors.btnColor, width: 0.5),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: colors.btnColor, width: 0.5),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        hintText: resources.AppStrings.hint1),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        resources.AppStrings.password,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 8,
                      ),
                    ],
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                        // labelText: '......',
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: colors.btnColor, width: 0.5),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: colors.btnColor, width: 0.5),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        hintText: '.......'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, HomeScreen.routeId);
                    },
                    child: Container(
                      width: 500,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: colors.btnColor,
                      ),
                      child: const Center(
                          child: Text(
                        resources.AppStrings.login,
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    resources.AppStrings.forgot,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: colors.btnColor),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 400,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                //   border: Border.all(color: colors.btnColor, width: 0.5),
                color: Colors.white,
              ),
              child: Center(
                  child: Text(
                'Create new account',
                style: TextStyle(color: colors.btnColor),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
