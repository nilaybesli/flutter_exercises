import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  color: Colors.pink.shade100,
                ),
                const Positioned(
                  bottom: 10,
                  left: 10,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://static.vecteezy.com/system/resources/thumbnails/008/442/086/small_2x/illustration-of-human-icon-user-symbol-icon-modern-design-on-blank-background-free-vector.jpg'),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nilay Beşli',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('Flutter Developer'),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Icon(Icons.location_on),
                            SizedBox(height: 4),
                            Text('Location'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Icon(Icons.phone),
                            SizedBox(height: 4),
                            Text('Phone'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Icon(Icons.email),
                            SizedBox(height: 4),
                            Text('Email'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
