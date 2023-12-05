import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:praktikumpabflutter/page2.dart';
import 'page1.dart';
import 'page3.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/OIP.hqma7ZkkukrNBULTXhep2QHaHa?pid=ImgDet&w=207&h=207&c=7',
                ),
              ),
            ),
            SizedBox(height: 20),
            buildTextWithUnderline(label: '@Human -1', icon: Icons.person),
            buildTextWithUnderline(
                label: '--------', icon: Icons.padding_sharp),
            buildTextWithUnderline(label: '--------', icon: Icons.lock_clock),
            buildClickableTextWithUnderline(
                label: '--------', icon: Icons.camera_alt),
            buildClickableInstagramIcon(
                label: '--------', icon: Icons.location_city),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page2()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page3()),
            );
          } else if (index == 2) {}
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

  Widget buildTextWithUnderline(
      {required String label, required IconData icon}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 24, color: Colors.white),
              SizedBox(width: 8),
              Text(
                label,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Container(
            height: 1.0,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget buildClickableTextWithUnderline(
      {required String label, required IconData icon}) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 24, color: Colors.white),
                SizedBox(width: 8),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Container(
              height: 1.0,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildClickableInstagramIcon(
      {required String label, required IconData icon}) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 24, color: Colors.white),
                SizedBox(width: 8),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Container(
              height: 1.0,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
