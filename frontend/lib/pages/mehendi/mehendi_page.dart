import 'package:flutter/material.dart';
import 'mehendi_details_page.dart';

final List<Map<String, String>> mehendiProviders = [
  {
    'name': 'Saman',
    'location': 'Matara',
    'contact': '075 55 66 777',
    'imagePath': 'assets/images/photography4.jpg',
  },
  {
    'name': 'Maha',
    'location': 'Colombo 3',
    'contact': '072 12 45 859',
    'imagePath': 'assets/images/photography.jpg',
  },
  {
    'name': 'Kamal',
    'location': 'Kandy',
    'contact': '077 33 22 111',
    'imagePath': 'assets/images/photography2.jpg',
  },
  {
    'name': 'Nimali',
    'location': 'Galle',
    'contact': '071 44 55 667',
    'imagePath': 'assets/images/photography3.jpg',
  },
  {
    'name': 'Ruwan',
    'location': 'Jaffna',
    'contact': '078 88 99 000',
    'imagePath': 'assets/images/photography5.jpg',
  },
];

class MehendiPage extends StatelessWidget {
  const MehendiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade100,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Mehendi',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Opacity(
              opacity: 0.2,
              child: Image.asset(
                'assets/images/mehendi.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              // Search Bar
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Search',
                    prefixIcon: const Icon(Icons.search),
                    hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              // mehendi Providers List
              Expanded(
                  child: ListView.builder(
                    itemCount: mehendiProviders.length,
                    itemBuilder: (context, index) {
                      final provider = mehendiProviders[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MehendiDetailsPage(
                                name: provider['name']!,
                                location: provider['location']!,
                                contact: provider['contact']!,
                                imagePath: provider['imagePath']!,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                          padding: const EdgeInsets.all(8), 
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 252, 240, 240),
                            borderRadius: BorderRadius.circular(8), 
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                          Expanded(
                            flex: 2, 
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  provider['name']!,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16, 
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  provider['location']!,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14, 
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1, 
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end, 
                              children: [
                                const Icon(Icons.phone, size: 16), 
                                const SizedBox(width: 4),
                                Text(
                                  provider['contact']!,
                                  style: const TextStyle(fontSize: 14), 
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
                // Map
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/map.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ],
              ),
              ]
              )
            );

  }
}

