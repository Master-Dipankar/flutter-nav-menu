import 'package:flutter/material.dart';
// import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:navmenu/pages/transaction2.dart';


class Home extends StatefulWidget {
  const Home({super.key, home});

  @override
  HomeState createState() => HomeState();
}
//---------------- Side Navigation bar starts here---------------------------->
class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget> [
          buildHeader(context),
          buildMenuItems(context),
        ],

      ),
    ),
  );

  Widget buildHeader(BuildContext context) {
    return Container(
      color: const Color(0xFF2F1256),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 16.0,
        right: 16.0,
        bottom: 16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CircleAvatar(
            radius: 40.0,
            backgroundImage: AssetImage('assets/dp.png'),
          ),
          SizedBox(height: 8.0),
          Text(
            'Dipankar',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            '123 456 7890',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            'Address',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenuItems(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.home_outlined, color: Color(0xFF2F1256)),
          title: const Text('Home'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.person_outline, color: Color(0xFF2F1256)),
          title: const Text('Profile'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.info_outline_rounded, color: Color(0xFF2F1256)),
          title: const Text('Notification'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.list_alt_outlined, color: Color(0xFF2F1256)),
          title: const Text('DMR History'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.history_outlined, color: Color(0xFF2F1256)),
          title: const Text('Recharge History'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.wallet, color: Color(0xFF2F1256)),
          title: const Text('Payment Request'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.chat_outlined, color: Color(0xFF2F1256)),
          title: const Text('Chat'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.private_connectivity_outlined, color: Color(0xFF2F1256)),
          title: const Text('Privacy'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.headset_mic_outlined, color: Color(0xFF2F1256)),
          title: const Text('Help and Support'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.settings_outlined, color: Color(0xFF2F1256)),
          title: const Text('Settings'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.logout_rounded, color: Color(0xFF2F1256)),
          title: const Text('Logout'),
          onTap: (){},
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: const Text(
            'App Version -v2.00',
            style: TextStyle(fontSize: 12.0),
          ),
        ),
      ],

    );
  }
}

//---------------- Side Navigation bar Ends here---------------------------->

class HomeState extends State<Home> {
//----------------Below edited to support Side Navigation bar---------------------------->
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      //----------------Below Side Navigation drawer is called---------------------------->
      drawer: const NavigationDrawer(),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.lightBlueAccent, Colors.lightGreenAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      _scaffoldKey.currentState!.openDrawer();
                    },
                  ),
                  const Text(
                    'Welcome',
                    style: TextStyle(fontSize: 24.0),
                  ),
                ],
              ),
              const SizedBox(height: 70.0),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.lightBlueAccent, Colors.lightGreenAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
  //----------------Transaction button starts here---------------------------->
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Transaction2(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2F1256),
                          minimumSize: const Size(120, 45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Transactions',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
   //----------------Transaction button Ends here---------------------------->
                    ],
                  ),
                ),
              ),
  //----------------Footer starts here---------------------------->
              const SizedBox(height: 70.0),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: const Text(
                  'Copyright © 2023 [B inc.]. All rights reserved.',
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
  //----------------Footer ends here---------------------------->
            ],
          ),
        ),
      ),
    );
  }
}
