import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'
    show FontAwesomeIcons;

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Page')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                // Cover Image
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2015/03/17/02/01/cubes-677092_1280.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 120,
                  left: MediaQuery.of(context).size.width / 2 - 60,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://raw.githubusercontent.com/goutam2597/random/refs/heads/main/f1949808-d225-4c47-9164-3bef11ad1639.jpg',
                    ),
                    backgroundColor: Colors.white,
                  ),
                ),

                Positioned(
                  top: 200,
                  left: MediaQuery.of(context).size.width / 2 + 35,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.edit, color: Colors.white, size: 25),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Text(
              'Goutam Sharma',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Software Developer',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 20),

            // Social Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(FontAwesomeIcons.github),
                  onPressed: () {},
                  iconSize: 30,
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.linkedin),
                  onPressed: () {},
                  iconSize: 30,
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.twitter),
                  onPressed: () {},
                  iconSize: 30,
                ),
              ],
            ),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: [Text('100',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),), Text('Projects',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),]),
                        Column(children: [Text('120',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),), Text('Following',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),]),
                        Column(children: [Text('250',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),), Text('Followers',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),]),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'About Me',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'I am Goutam Sharma, a Flutter developer specializing in building cross-platform mobile applications using the Flutter framework. I use Dart programming language to create responsive and high-performance apps for iOS, Android, and the web. My role involves writing clean, maintainable code, implementing UI components, and integrating with APIs and backend services. I am skilled in using Flutters rich widget library to craft visually appealing user interfaces. I stay updated with the latest Flutter updates and best practices to ensure efficient app development.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: SizedBox(
                width: double.infinity,
                height: 65,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  child: Text(
                    'Logout',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
