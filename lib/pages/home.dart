import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:navmenu/pages/transaction2.dart';


class Home extends StatefulWidget {
  const Home({super.key, home});

  @override
  HomeState createState() => HomeState();
}

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
     padding: EdgeInsets.only(
       top: MediaQuery.of(context).padding.top,
     ),
    );
  }

  Widget buildMenuItems(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.home_outlined),
      title: const Text('Home'),
      onTap: (){},
    );
  }
}


class HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const Text(
                'Welcome',
                style: TextStyle(fontSize: 24.0),
              ),
              const SizedBox(height: 70.0),
              Expanded(
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 1.0,
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
                                builder: (context) => const Transaction2()),
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
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.withOpacity(0.3),
                  //     blurRadius: 5,
                  //     spreadRadius: 2,
                  //     offset: const Offset(0, -2),
                  //   ),
                  // ],
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