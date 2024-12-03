import 'package:tes/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  _TicketPageState createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

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
          TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.blue,
            tabs: const [
              Tab(text: "Sedang Tayang"),
              Tab(text: "Akan Datang"),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Tab Sedang Tayang
                ListView(
                  children: const [
                    MovieCard(
                      title: "Moana 2",
                      ageRating: "D 13+",
                      genre: "Action, Adventure",
                      rating: 9.5,
                      imageAsset: 'poster/poster_1.jpg',
                    ),
                    MovieCard(
                      title: "Cinta Dalam Ikhlas",
                      ageRating: "R 17+",
                      genre: "Action, Adventure",
                      rating: 9.3,
                      imageAsset: 'poster/poster_2.jpg',
                    ),
                     MovieCard(
                    title: "Sekawan Limo",
                    ageRating: "R 13+",
                    genre: "Horror, COmedy, Adventure",
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
                  ],
                ),

                // Tab Akan Datang
                ListView(
                  children: const [
                    MovieCard(
                      title: "Pengabdi Setan 2",
                      ageRating: "D 18+",
                      genre: "Sci-Fi, Horror",
                      rating: 8.7,
                      imageAsset: 'poster/ps.jpg',
                    ),
                    MovieCard(
                      title: "Architecture of Love",
                      ageRating: "R 17+",
                      genre: "Romance,  Adventure",
                      rating: 9.0,
                      imageAsset: 'poster/aol.jpg',
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
                    rating: 9,
                    imageAsset: 'poster/kejar.jpg', // Asset Path
                   ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavbar(currentIndex: 2),
    );
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
