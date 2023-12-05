import 'package:flutter/material.dart';
import 'page2.dart';
import 'page1.dart';
import 'page4.dart'; // Import Page4.dart

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  bool isButtonClicked = false;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(),
              ),
              Center(
                child: Column(
                  children: [
                    Image.network(
                      'https://th.bing.com/th/id/OIP.TTCgnTjm3-P-qjGSCmgBCAHaEH?w=241&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', // netflix
                      height: 100,
                      width: 200,
                    ),
                    Image.network(
                      'https://th.bing.com/th/id/OIP.W70QtaHNZUZhDHHzpoOUIQHaGP?w=253&h=213&c=7&r=0&o=5&pid=1.7', // eren yeager
                      width: 200,
                      height: 200,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isButtonClicked = !isButtonClicked;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: isButtonClicked
                            ? Colors.grey
                            : Colors.white, //ganti warna button
                        onPrimary: Colors.black,
                      ),
                      child: Text('PLAY'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.network(
                      'https://th.bing.com/th/id/OIP.7HFfiCgaJHJ4Tqy-buk1cgHaGP?w=220&h=185&c=7&r=0&o=5&pid=1.7', // su jing wo
                      width: 200,
                      height: 200,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, //button putih
                        onPrimary: Colors.black, //text hitam
                      ),
                      child: Text('PLAY'),
                    ),
                    Image.network(
                      'https://th.bing.com/th/id/OIP.v2HXwVOOYMBGzTWbyPVh0gHaGP?w=220&h=185&c=7&r=0&o=5&pid=1.7', //guren incinose
                      width: 200,
                      height: 200,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, //button putih
                        onPrimary: Colors.black, //text hitam
                      ),
                      child: Text('PLAY'),
                    ),
                    Image.network(
                      'https://th.bing.com/th/id/OIP.2NDHV35eXlqipkGBfENenAHaGP?w=254&h=213&c=7&r=0&o=5&pid=1.7', //rintarou okabe
                      width: 200,
                      height: 200,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, //button putih
                        onPrimary: Colors.black, //text hitam
                      ),
                      child: Text('PLAY'),
                    ),
                    Image.network(
                      'https://th.bing.com/th/id/OIP.WGe_q0iiRBjFZRpfFXRRSAHaGP?w=253&h=213&c=7&r=0&o=5&pid=1.7', //monkey grap
                      width: 200,
                      height: 200,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, //button putih
                        onPrimary: Colors.black, //text hitam
                      ),
                      child: Text('PLAY'),
                    ),
                    Image.network(
                      'https://th.bing.com/th/id/OIP.EpRWn2sI_cZQrNWYsvzVfAHaGP?w=241&h=204&c=7&r=0&o=5&pid=1.7', //kano tsyuri
                      width: 200,
                      height: 200,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, //button putih
                        onPrimary: Colors.black, //text hitam
                      ),
                      child: Text('PLAY'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            if (index == 0) {
              //pindah page1
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2()),
              );
            } else if (index == 1) {
              //pindah ke icon movie
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
