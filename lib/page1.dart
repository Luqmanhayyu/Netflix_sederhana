import 'package:flutter/material.dart';
import 'package:praktikumpabflutter/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                const SizedBox(height: 16),
                Image.network(
                  'https://th.bing.com/th/id/OIP.TTCgnTjm3-P-qjGSCmgBCAHaEH?w=241&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                  width: 300,
                  height: 400,
                ),
                const SizedBox(height: 50),
                Text(
                  '@Human 1',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                SizedBox(height: 40),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(_createRoute());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        child: Text('Masuk',
                            style: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          // Handle the action for "Keluar" button
                          Navigator.pop(context); // Close the current screen
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red, // Red color for "Keluar"
                        ),
                        child: Text('Keluar',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
