import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Home2State createState() => Home2State();
}

class Home2State extends State<Home2> {
  bool _isSideNavOpen = false;

  void _toggleSideNav() {
    setState(() {
      _isSideNavOpen = !_isSideNavOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Side Nav test 6'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: _toggleSideNav,
        ),
      ),
      body: Stack(
        children: [
          const Center(
            child: Text('a button will be here'),
          ),
          if (_isSideNavOpen)
            GestureDetector(
              onTap: _toggleSideNav,
              child: Container(
                color: Colors.black26,
              ),
            ),
          if (_isSideNavOpen)
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.7,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    const DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Text(
                        'Header',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text('list 1'),
                      onTap: () {
                        // do something
                        _toggleSideNav();
                      },
                    ),
                    ListTile(
                      title: const Text('list 2'),
                      onTap: () {
                        // do something
                        _toggleSideNav();
                      },
                    ),
                    ListTile(
                      title: const Text('list 3'),
                      onTap: () {
                        // do something
                        _toggleSideNav();
                      },
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Side Nav test 5'),
//         leading: IconButton(
//           icon: const Icon(Icons.menu),
//           onPressed: _toggleSideNav,
//         ),
//       ),
//       body: const Center(
//         child: Text('a button will be here'),
//       ),
//       drawer: SafeArea(
//         top: true,
//         child: Drawer(
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: <Widget>[
//               const DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                 ),
//                 child: Text(
//                   'Header',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 24,
//                   ),
//                 ),
//               ),
//               ListTile(
//                 title: const Text('list 1'),
//                 onTap: () {
//                   // do something
//                   _toggleSideNav();
//                 },
//               ),
//               ListTile(
//                 title: const Text('list 1'),
//                 onTap: () {
//                   // do something
//                   _toggleSideNav();
//                 },
//               ),
//               ListTile(
//                 title: const Text('list 1'),
//                 onTap: () {
//                   // do something
//                   _toggleSideNav();
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

