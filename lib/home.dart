import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}


class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.purple[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(color:Colors.white,
              shape:BoxShape.circle),
              child:CircleAvatar(
              radius: 100,
              backgroundColor: Colors.amber,
              backgroundImage: AssetImage('images/b.jpg'),
            ),),
            SizedBox(
              //Use of SizedBox
              height: 20,
            ),
            const Text(
              'BHASHI',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              //Use of SizedBox
              height: 5,
            ),
            const Text(
              'Mechanical and Automation Enginner',
              style: TextStyle(
                fontFamily: 'Libre Bodoni',
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(
              //Use of SizedBox
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.email_outlined),
                  SizedBox(
                    width: 15,
                  ),
                  Text('bhashi.b0001@gmail.com')
                ],
              ),
            ),
            GestureDetector(
              onTap:(){
                Navigator.pushNamed(context, 'Project_page');},
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: Colors.pink[100],
                ),
                child: Row(
                  children: [
                    Icon(Icons.file_copy),
                    SizedBox(
                      width: 15,
                    ),
                    Text('My projects')
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap:(){
                final Uri _url = Uri.parse('https://www.linkedin.com/in/bhashi-62117222a/');
                _launchUrl(_url);},
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Icon(Icons.connect_without_contact),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Connect on linkedIn')
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap:(){
                final Uri _url = Uri.parse('https://www.canva.com/design/DAFF5BVFdQY/cpiq5bhwpCyp77VP0As8qg/view?utm_content=DAFF5BVFdQY&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton');
                _launchUrl(_url);},
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: Colors.pink[100],
                ),
                child: Row(
                  children: [
                    Icon(Icons.thermostat_auto_rounded),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Resume')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
