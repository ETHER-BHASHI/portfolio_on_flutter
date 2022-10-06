import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Project_page extends StatelessWidget {
  const Project_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
        title: Text(
          'My projects',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
     body: ListView(
       children: [
         ListTile(
           title: Text('Catia V-5 '),
           subtitle:Text('Heres the designs \n I created using the same'),
          leading: Icon(Icons.web_stories,color: Colors.black),
           trailing: Icon(Icons.star),
           onTap: (){
             final Uri _url1 = Uri.parse('');
             _launchUrl(_url1);
           },
           isThreeLine: true,
           contentPadding: EdgeInsets.all(30),
           tileColor: Colors.white,
         ),
         ListTile(
           title: Text('Web Portfolio'),
           subtitle:Text('Heres my portfolio that is created \n using html and css'),
           leading: Icon(Icons.web_stories,color: Colors.black),
           trailing: Icon(Icons.star),
           onTap: (){
             final Uri _url1 = Uri.parse('https://ether-bhashi.github.io/bhashi_portfolio.github.io/');
             _launchUrl(_url1);
           },
           isThreeLine: true,
           contentPadding: EdgeInsets.all(30),
           tileColor: Colors.pink[100],
         ),
         ListTile(
           title: Text('Innerve_Web Timeleine'),
           subtitle:Text('Heres my contribution \n in Innerve , the tech fest of IGDTUW'),
           leading: Icon(Icons.web_stories,color: Colors.black),
           trailing: Icon(Icons.star),
           onTap: (){
             final Uri _url1 = Uri.parse('https://github.com/ETHER-BHASHI/innerve-igdtuw');
             _launchUrl(_url1);
           },
           isThreeLine: true,
           contentPadding: EdgeInsets.all(30),
           tileColor: Colors.white,
         ),
         ListTile(
           title: Text('GITHUB'),
           subtitle:Text('Heres my repositories in github'),
           leading: Icon(Icons.web_stories,color: Colors.black,),
           trailing: Icon(Icons.star),
           onTap: (){
             final Uri _url1 = Uri.parse('https://github.com/ETHER-BHASHI?tab=repositories');
             _launchUrl(_url1);
           },
           isThreeLine: true,
           contentPadding: EdgeInsets.all(30),
           tileColor: Colors.pink[100],
         ),
       ],
     ),


    );
  }
}

      /*Column(children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: GestureDetector(
            onTap: () {
              final Uri _url1 = Uri.parse('https://flutter.dev');
              _launchUrl(_url1);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Project1',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'demonstration  #ProgrammersLab',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          thickness: 5,
        ),
        Padding(
          padding: EdgeInsets.all(20),
            child: GestureDetector(
              onTap: () {
                final Uri _url1 = Uri.parse('https://drive.google.com/file/d/15joCjMuterfvX2zHBDFeYJzzmM3xvccJ/view');
                _launchUrl(_url1);
              },

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Project1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'demonstration  #ProgrammersLab',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        const Divider(
          thickness: 5,
        ),
      ]),*/




Future<void> _launchUrl(_url1) async {
  if (!await launchUrl(_url1)) {
    throw 'Could not launch $_url1';
  }
}


