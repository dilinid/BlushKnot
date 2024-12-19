import 'package:flutter/material.dart';
import 'invitation/invitation_page.dart';
import 'makeup/makeup_page.dart';
import 'music/music_page.dart';
import 'mehendi/mehendi_page.dart';
import 'photography/photography_page.dart';
import 'venue/venue_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade100,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/logo.png', 
              height: 50,
            ),
            const SizedBox(width: 10),
            const Text(
              'BlushKnot',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          const Text(
            'Welcome to BlushKnot\nTrusted Wedding services!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(12),
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PhotographyPage(),
                      ),
                    );
                  },
                  child: const ServiceCard(
                    imagePath: 'assets/images/photography.jpg',
                    title: 'Photography',
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VenuePage(),
                      ),
                    );
                  },
                  child: const ServiceCard(
                  imagePath: 'assets/images/venue.jpg',
                  title: 'Venue',
                  ),
                ),
                
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MakeupPage(),
                      ),
                    );
                  },
                  child: const ServiceCard(
                  imagePath: 'assets/images/makeup.jpg',
                  title: 'Bridal Makeup',
                ),
                ),
                
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MehendiPage(),
                      ),
                    );
                  },
                  child: const ServiceCard(
                  imagePath: 'assets/images/mehendi.jpg',
                  title: 'Mehendi',
                ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MusicPage(),
                      ),
                    );
                  },
                  child: const ServiceCard(
                  imagePath: 'assets/images/music.jpg',
                  title: 'Music',
                ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InvitationPage(),
                      ),
                    );
                  },
                  child: const ServiceCard(
                  imagePath: 'assets/images/invitation.jpg',
                  title: 'Invitation',
                ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String imagePath;
  final String title;

  const ServiceCard({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black.withOpacity(0.3),
            ),
          ),
          Center(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
