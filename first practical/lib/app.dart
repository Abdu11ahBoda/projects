import 'package:boda/edit.dart';
import 'package:flutter/material.dart';

class test_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          selectedLabelStyle:
              TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "saved"),
          ]),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Profile",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Stack(
                children: [
                  CircleAvatar(
                    maxRadius: 50,
                    backgroundImage: AssetImage(
                      "Images/wallpaperflare.com_wallpaper (6).jpg",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 75, left: 30),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 3,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        color: Color.fromARGB(255, 205, 233, 245),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => edit()),
                          );
                        },
                        child: Icon(Icons.edit,
                            color: Color.fromARGB(255, 89, 202, 255)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Nissan_GTR",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "nissan_gtr@gmail.com",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Become an publisher",
                      style: TextStyle(
                          color: Colors.cyan,
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Account settings",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ),
              ListTile(
                title: Text(
                  "Personal information",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text(
                  "Notifications",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text(
                  "Time spent",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text(
                  "Following",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Help & Support",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ),
              ListTile(
                title: Text(
                  "Privacy policy",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text(
                  "Terms & Conditions",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text(
                  "FAQ & HELP",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Log out",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w900,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
