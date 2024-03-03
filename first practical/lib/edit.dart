import 'package:boda/app.dart';
import 'package:flutter/material.dart';

class edit extends StatelessWidget {
  const edit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Edit profile",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
        ),
        leading: InkWell(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => test_app()),
              );
            },
            child: Icon(
              Icons.arrow_back,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 50,
                    backgroundImage: AssetImage(
                      "Images/wallpaperflare.com_wallpaper (6).jpg",
                    ),
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
                      "Edit image",
                      style: TextStyle(
                          color: Colors.cyan,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "nissan_gtr@gmail.com",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w800, color: Colors.black),
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  suffixIcon: Icon(
                    Icons.highlight_remove_outlined,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Nissan GTR",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w800, color: Colors.black),
                  prefixIcon: Icon(
                    Icons.person,
                  ),
                  suffixIcon: Icon(
                    Icons.highlight_remove_outlined,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Change password",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
              SizedBox(height: 25),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter old password",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w800, color: Colors.grey),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter new password",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w800, color: Colors.grey),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Save",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w700),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
