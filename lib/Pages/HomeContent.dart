import 'package:flutter/material.dart';
import 'package:CBE_CLONE/constants/App_Colors.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    DateTime now = DateTime.now();
    String formattedDateTime =
        "${_getFormattedDate(now)} ${_getFormattedTime(now)}";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: size.width * 0.9,
          height: size.height * 0.282,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 3, 26, 37),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              // Background image
              Positioned.fill(
                child: Image.asset(
                  'assets/worldmap.png',
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Dj6xJ2dX0AADlPv-removebg-preview.png',
                          height: 80,
                          width: 80,
                        ),
                        Column(
                          children: [
                            Text(
                              'Commercial Bank of Ethiopia',
                              style: TextStyle(
                                color: AppColors.secondary,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'The Bank You can always Rely on!',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 253, 233, 164),
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Text(
                    'Balance',
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 233, 231, 231),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          '*****',
                          style: TextStyle(
                            fontSize: 26,
                            color: const Color.fromARGB(255, 233, 231, 231),
                          ),
                        ),
                      ),
                      Text(
                        "Br.",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 233, 231, 231),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.remove_red_eye,
                          color: Color.fromARGB(255, 233, 231, 231),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        'Saving - 1000******2614',
                        style:
                            TextStyle(fontSize: 14, color: AppColors.secondary),
                      ),
                      Text(
                        formattedDateTime,
                        style: TextStyle(
                            fontSize: 11,
                            color: const Color.fromARGB(255, 233, 231, 231)),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  String _getFormattedDate(DateTime dateTime) {
    return "${dateTime.day.toString().padLeft(2, '0')}/${dateTime.month.toString().padLeft(2, '0')}/${dateTime.year}";
  }

  String _getFormattedTime(DateTime dateTime) {
    return "${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}:${dateTime.second.toString().padLeft(2, '0')}";
  }
}
