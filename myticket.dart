import 'package:tes/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';

class MyTicketPage extends StatefulWidget {
  const MyTicketPage({super.key});

  @override
  _MyTicketPageState createState() => _MyTicketPageState();
}

class _MyTicketPageState extends State<MyTicketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 40,
                margin: const EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Cari bioskop',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.notifications),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.account_circle),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'JAKARTA',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: const [
                  MovieCard(
                    title: "Sekawan Limo",
                    ageRating: "R 13+",
                    genre: "Horror, Comedy, Adventure",
                    rating: 9,
                    imageAsset: 'poster/sl.jpg', // Asset Path
                  ),
                  MovieCard(
                    title: "How To Make Millions Brfore My Grandma Dies",
                    ageRating: "R 15+",
                    genre: "ANGST, Family",
                    rating: 9.8,
                    imageAsset: 'poster/how.jpg', // Asset Path
                  ),
                  MovieCard(
                    title: "Agak Lain",
                    ageRating: "R 17+",
                    genre: "Horror, Comedy",
                    rating: 9.5,
                    imageAsset: 'poster/agak.jpg', // Asset Path
                  ),
                   MovieCard(
                    title: "Kejar Mimpi GASPOL!",
                    ageRating: "R 17+",
                    genre: "Horror, Comedy",
                    rating: 8.2,
                    imageAsset: 'poster/kejar.jpg', // Asset Path
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: const BottomNavbar(currentIndex: 3));
  }
}

class MovieCard extends StatelessWidget {
  final String title;
  final String ageRating;
  final String genre;
  final double rating;
  final String imageAsset;

  const MovieCard({super.key, 
    required this.title,
    required this.ageRating,
    required this.genre,
    required this.rating,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.horizontal(left: Radius.circular(12)),
              child: Image.asset(
                imageAsset,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      ageRating,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 4),
                    Text(genre),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber, size: 16),
                        const SizedBox(width: 4),
                        Text(
                          rating.toString(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
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
