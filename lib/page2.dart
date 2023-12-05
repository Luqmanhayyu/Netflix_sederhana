import 'package:flutter/material.dart';
import 'package:praktikumpabflutter/page3.dart';
import 'page1.dart'; // Import Page1.dart
import 'page4.dart'; // Import Page4.dart

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  'https://th.bing.com/th/id/OIP.TTCgnTjm3-P-qjGSCmgBCAHaEH?w=241&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', // netflix
                  height: 100,
                  width: 200,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Page3(),
                          ),
                        );
                      },
                      child: Image.network(
                        'https://th.bing.com/th/id/OIP.W70QtaHNZUZhDHHzpoOUIQHaGP?w=253&h=213&c=7&r=0&o=5&pid=1.7', //eren yeagar
                        width: 150,
                        height: 150,
                      ),
                    ),
                    SizedBox(width: 10),
                    Image.network(
                      'https://th.bing.com/th/id/OIP.7HFfiCgaJHJ4Tqy-buk1cgHaGP?w=220&h=185&c=7&r=0&o=5&pid=1.7', //sung jing wo
                      width: 150,
                      height: 150,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://th.bing.com/th/id/OIP.v2HXwVOOYMBGzTWbyPVh0gHaGP?w=220&h=185&c=7&r=0&o=5&pid=1.7', //guren incinose
                      width: 150,
                      height: 150,
                    ),
                    SizedBox(width: 10),
                    Image.network(
                      'https://th.bing.com/th/id/OIP.2NDHV35eXlqipkGBfENenAHaGP?w=254&h=213&c=7&r=0&o=5&pid=1.7', //rintarou okabe
                      width: 150,
                      height: 150,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://th.bing.com/th/id/OIP.WGe_q0iiRBjFZRpfFXRRSAHaGP?w=253&h=213&c=7&r=0&o=5&pid=1.7', //monkey grap
                      width: 150,
                      height: 150,
                    ),
                    SizedBox(width: 10),
                    Image.network(
                      'https://th.bing.com/th/id/OIP.EpRWn2sI_cZQrNWYsvzVfAHaGP?w=241&h=204&c=7&r=0&o=5&pid=1.7', //kano tsyuri
                      width: 150,
                      height: 150,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            if (index == 0) {
              // Navigate to Page1
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page1()),
              );
            } else if (index == 1) {
              //pindah page3
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page3()),
              );
            } else if (index == 2) {
              //pindah page4
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page4()),
              );
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Movies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
