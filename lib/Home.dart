import 'package:CBE_CLONE/Pages/Accounts.dart';
import 'package:CBE_CLONE/Pages/HomeContent.dart';
import 'package:CBE_CLONE/Pages/QRpages.dart';
import 'package:CBE_CLONE/Pages/Transction.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:CBE_CLONE/Widget/NavBar.dart';
import 'package:CBE_CLONE/constants/App_Colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final items = const [
    Icon(Icons.grid_view, size: 26, color: Colors.white),
    Icon(Icons.monetization_on_outlined, size: 26, color: Colors.white),
    Icon(Icons.account_balance_rounded, size: 26, color: Colors.white),
    Icon(Icons.receipt_long_sharp, size: 26, color: Colors.white),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          height: 70.0,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: AppColors.primary,
          color: AppColors.primary,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 300),
          items: items,
          onTap: (selectedIndex) {
            setState(() {
              index = selectedIndex;
            });
          },
          letIndexChange: (index) => true,
        ),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            bottomOpacity: 20,
            iconTheme: IconThemeData(color: AppColors.primary, size: 27),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'En',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.primary,
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  height: 42,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: const Icon(
                    Icons.refresh,
                    color: AppColors.primary,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          color: Colors.blueAccent[50],
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: getSelectedWidget(index: index),
        ));
  }

  Widget getSelectedWidget({required int index}) {
    late Widget widget;
    switch (index) {
      case 0:
        widget = const HomeContent();
        break;
      case 1:
        widget = const QRpages();
        break;
      case 2:
        widget = const Accounts();
        break;
      case 3:
        widget = const Transcation();
        break;
      default:
        // Handle cases where index is out of range or not expected.
        widget = Container(); // Or any other default widget or null if needed.
    }
    return widget;
  }
}
