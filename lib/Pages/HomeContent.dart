import 'package:flutter/material.dart';
import 'package:CBE_CLONE/constants/App_Colors.dart';


class ServiceItem extends StatelessWidget {
  final String serviceName;
  final IconData iconData;
  final Function()? onTap;

  const ServiceItem({
    required this.serviceName,
    required this.iconData,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 3,
        color: Color.fromARGB(255, 255, 255, 255),
        shadowColor: Colors.grey[50],
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(iconData, size: 35, color: AppColors.primary,),
              SizedBox(height: 10),
              Text(
                serviceName,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: AppColors.primary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  bool showFullAccountNumber = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    DateTime now = DateTime.now();
    String formattedDateTime =
        "${_getFormattedDate(now)} ${_getFormattedTime(now)}";

    String accountNumber = '1000142402614';
    String Balance = '20000';
    List<Map<String, dynamic>> services = [
      {
        'name': 'Transfer',
        'icon': Icons.screen_rotation_alt_rounded,
        'route': '/',
      },
      {
        'name': 'Utilities',
        'icon': Icons.cabin_sharp,
        'route': '/',
      },
      {
        'name': 'Top up',
        'icon': Icons.mobile_screen_share_sharp,
        'route': '/',
      },
      {
        'name': 'Help',
        'icon': Icons.help_center_rounded,
        'route': '/',
      },
      {
        'name': 'Utility',
        'icon': Icons.mic_external_on_sharp,
        'route': '/',
      },
      {
        'name': 'Government',
        'icon': Icons.screen_rotation_alt_rounded,
        'route': '/',
      },
      {
        'name': 'Banking',
        'icon': Icons.account_balance_rounded,
        'route': '/',
      },
      {
        'name': 'Travel',
        'icon': Icons.mode_of_travel_rounded,
        'route': '/',
      },
      {
        'name': 'Pay For',
        'icon': Icons.payments_outlined,
        'route': '/',
      },
    ];
    return SafeArea(
      
      child: Column(
      
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: size.width * 1,
              height: size.height * 0.29,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 3, 26, 37),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
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
                                    color:
                                        const Color.fromARGB(255, 253, 233, 164),
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            showFullAccountNumber
                                ? Balance
                                : MakeHideNumbers('*****', 0,0),
                            style: TextStyle(
                              fontSize: 26,
                              color: const Color.fromARGB(255, 233, 231, 231),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Br.",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 233, 231, 231),
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: Color.fromARGB(255, 186, 184, 184),
                            ),
                            onPressed: () {
                              setState(() {
                                showFullAccountNumber = !showFullAccountNumber;
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            'Saving - ${showFullAccountNumber ? accountNumber : MakeHideNumbers(accountNumber, 4, 4)}',
                            style: TextStyle(
                                fontSize: 16, color: AppColors.secondary),
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
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Our Services',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primary),
                  ),
                ),
              ],
            ),
          ),
          // Add your GridView here
          Expanded(
            child: Container(
                          color: Colors.white70,

              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  
                  gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemCount: services.length,
                  itemBuilder: (context, index) {
                    return ServiceItem(
                      serviceName: services[index]['name'],
                      iconData: services[index]['icon'],
                      onTap: () {
                        Navigator.pushNamed(context, services[index]['route']);
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _getFormattedDate(DateTime dateTime) {
    return "${dateTime.day.toString().padLeft(2, '0')}/${dateTime.month.toString().padLeft(2, '0')}/${dateTime.year}";
  }

  String _getFormattedTime(DateTime dateTime) {
    return "${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}:${dateTime.second.toString().padLeft(2, '0')}";
  }
String MakeHideNumbers(String label, int visibleStart, int visibleEnd) {
    String MaskedNumber = '*' * (label.length - visibleStart - visibleEnd);
    return label.substring(0, visibleStart) +
        MaskedNumber +
        label.substring(label.length - visibleEnd);
  }
}

