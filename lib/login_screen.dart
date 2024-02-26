import 'package:flutter/material.dart';
import 'package:CBE_CLONE/Home.dart';
import 'package:CBE_CLONE/constants/App_Colors.dart';
import 'package:neumorphic_button/neumorphic_button.dart';

import 'clipper.dart';
import 'clipper2.dart';

class GreetingWidget extends StatelessWidget {
  final DateTime currentTime = DateTime.now();

  String getGreeting() {
    final hour = currentTime.hour;
    if (hour < 12) {
      return 'Good Morning';
    } else if (hour < 18) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final _setPIN = GlobalKey<FormState>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/Dj6xJ2dX0AADlPv-removebg-preview.png',
          height: 120,
          alignment: Alignment.center,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 10),
        Text(
          'Welcome !',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: AppColors.primary,
          ),
        ),
        Text(
          'Commercial Bank of Ethiopia !',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: AppColors.primary,
          ),
        ),
        Text(
          getGreeting(),
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14,
            color: AppColors.primary,
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Center(
                child: Form(
                  key: _setPIN,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    cursorColor: AppColors.primary,
                    cursorOpacityAnimates: FutureBuilder.debugRethrowError,
                    obscureText: true,
                    textAlign: TextAlign.center, // Center align the input text
                    decoration: InputDecoration(
                      hintText: 'PIN',
                      hintStyle: TextStyle(
                          color: AppColors.graylight,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
                              .hasMatch(value)) {
                        return "Enter Correct PIN Code.";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: NeumorphicButton(
                      onTap: () {
                        if (_setPIN.currentState!.validate()) {
                        } else {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (_) => HomeScreen()),
                              (route) => false);
                        }
                      },
                      borderRadius: 100,
                      bottomRightShadowBlurRadius: 15,
                      bottomRightShadowSpreadRadius: 1,
                      borderWidth: 5,
                      backgroundColor: AppColors.secondary,
                      topLeftShadowBlurRadius: 15,
                      topLeftShadowSpreadRadius: 1,
                      topLeftShadowColor: Colors.white,
                      bottomRightShadowColor: Colors.grey.shade500,
                      height: size.width * 0.15,
                      width: size.width * 0.15,
                      // padding: const EdgeInsets.all(50),
                      bottomRightOffset: const Offset(4, 4),
                      topLeftOffset: const Offset(-4, -4),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 16,
                      ),
                      // alignment: Alignment.center
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  CustomPaint(
                    size: Size(MediaQuery.of(context).size.width, 200),
                    painter: RPSCustomPainter(),
                  ),
                  Positioned(
                    top: 16,
                    right: -5,
                    child: CustomPaint(
                      size: Size(MediaQuery.of(context).size.width, 200),
                      painter: PSCustomPainter(),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.zero,
                child: Column(
                  children: [
                    GreetingWidget(),
                    SizedBox(
                      height: 70,
                    ),
                    NeumorphicButton(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (_) => HomeScreen()),
                              (route) => false);
                        },
                        borderRadius: 30,
                        bottomRightShadowBlurRadius: 15,
                        bottomRightShadowSpreadRadius: 1,
                        // borderWidth: 5,
                        backgroundColor: AppColors.secondary,
                        topLeftShadowBlurRadius: 15,
                        topLeftShadowSpreadRadius: 1,
                        topLeftShadowColor: Colors.white,
                        bottomRightShadowColor: Colors.grey.shade500,
                        height: size.width * 0.14,
                        width: size.width * 0.7,
                        // padding: const EdgeInsets.all(50),
                        bottomRightOffset: const Offset(4, 4),
                        topLeftOffset: const Offset(-4, -4),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.safety_check_rounded,
                                  color: Colors.black,
                                  size: 28,
                                ),
                              ),
                              Text(
                                "NON-FINANCIAL SERVICES",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        )

                        // alignment: Alignment.center
                        ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Copyright © Commercial Bank of Ethiopia',
                      style: TextStyle(color: AppColors.primary),
                    ),
                    Text(
                      'Develop By Amanuel',
                      style: TextStyle(color: AppColors.primary, fontSize: 10),
                    )
                  ], // If you need another GreetingWidget in this Column
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
