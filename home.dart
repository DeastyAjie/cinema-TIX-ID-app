import 'package:tes/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(255, 93, 103, 138),
          elevation: 0,
          flexibleSpace: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Search Bar
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(Icons.search, color: Colors.grey),
                        hintText: 'Cari di TIX ID',
                        hintStyle: const TextStyle(
                            fontSize: 14.0), // Ukuran teks hint lebih kecil
                            contentPadding: const EdgeInsets.symmetric(
                            vertical: 6.0,
                            horizontal: 15.0), // Padding yang lebih kecil untuk memperpendek tinggi
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0), 
                            borderSide: BorderSide.none,
                        ),
                      ),
                      style: const TextStyle(
                          fontSize:
                              15.0), // Ukuran teks yang diketik lebih kecil
                    )),
                    const SizedBox(width: 10),
                    // Icon Lonceng
                    IconButton(
                      icon: const Icon(Icons.notifications, color: Colors.white),
                      onPressed: () {
                        // Tambahkan fungsi untuk lonceng
                      },
                    ),
                    // Icon Profil
                    IconButton(
                      icon: const Icon(Icons.account_circle,
                          color: Colors.white, size: 28),
                      onPressed: () {
                        // Tambahkan fungsi untuk profil
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Dropdown Kota
          const Row(
            children: [
              Icon(Icons.location_on),
              Text(
                'JAKARTA',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_drop_down),
            ],
          ),

          // Banner
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 150,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
              ),
              items: [
                'poster/banner1.jpg',
                'poster/poster_2.jpg',
                'poster/banner3.jpg',
                'poster/banner4.jpg',
                'poster/banner5.jpg',
                'poster/banner1.jpg',
                'poster/poster_2.jpg',
                'poster/banner3.jpg',
                'poster/banner4.jpg',
                'poster/banner5.jpg',
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Image.asset(
                          i,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),

          const SizedBox(height: 8.0),

          // Promo TIX VIP
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 232, 196),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                const Icon(Icons.star, color: Colors.red),
                const SizedBox(width: 8.0),
                const Expanded(
                  child: Text(
                    'Jadilah TIX VIP - Dapatkan untung lebih!',
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Fungsi untuk tombol TIX VIP
                  },
                  child: const Text('Join'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Sedang Tayang',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  // Aksi untuk tombol "Semua"
                },
                child: Row(
                  children: const [
                    Text(
                      'Semua',
                      style: TextStyle(color: Colors.blue, fontSize: 14.0),
                    ),
                    Icon(Icons.chevron_right, color: Colors.blue, size: 18.0),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),

          // Kolom Kategori
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // Kategori 1
                Container(
                  margin: const EdgeInsets.only(right: 8.0),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: const Text(
                    'Semua Film',
                    style: TextStyle(color: Colors.blue, fontSize: 14.0),
                  ),
                ),
                // Kategori 2
                Container(
                  margin: const EdgeInsets.only(right: 8.0),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: const Text(
                    'XXI',
                    style: TextStyle(color: Colors.black, fontSize: 14.0),
                  ),
                ),
                // Kategori 3
                Container(
                  margin: const EdgeInsets.only(right: 8.0),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: const Text(
                    'CGV',
                    style: TextStyle(color: Colors.black, fontSize: 14.0),
                  ),
                ),
                // Kategori 4
                Container(
                  margin: const EdgeInsets.only(right: 8.0),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: const Text(
                    'Cinépolis',
                    style: TextStyle(color: Colors.black, fontSize: 14.0),
                  ),
                ),
                // Kategori 5
                Container(
                  margin: const EdgeInsets.only(right: 8.0),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.favorite, size: 14.0, color: Colors.red),
                      SizedBox(width: 4.0),
                      Text(
                        'Watchlist',
                        style: TextStyle(color: Colors.black, fontSize: 14.0),
                      ),
                    ],
                  ),
                ),
                 Container(
                  margin: const EdgeInsets.only(right: 8.0),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Row(
                    children: const [
                      SizedBox(width: 4.0),
                      Text(
                        'Waiting list!',
                        style: TextStyle(color: Colors.black, fontSize: 14.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),

          //film
          const SizedBox(height: 8.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // Item pertama
                Container(
                  margin: const EdgeInsets.only(right: 12.0),
                  width: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage(
                                'poster/how.jpg'), // Gambar pertama
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        'Film Pertama', // Judul pertama
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.0),
                      ),
                      const SizedBox(height: 4.0),
                      const Text(
                        'Beli Tiket', // Tombol Beli Tiket pertama
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                // Item kedua
                Container(
                  margin: const EdgeInsets.only(right: 12.0),
                  width: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage(
                                'poster/agak.jpg'), // Gambar kedua
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        'Film Kedua', // Judul kedua
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.0),
                      ),
                      const SizedBox(height: 4.0),
                      const Text(
                        'Beli Tiket', // Tombol Beli Tiket kedua
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                // Item ketiga
                Container(
                  margin: const EdgeInsets.only(right: 12.0),
                  width: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage(
                                'poster/moana.jpg'), // Gambar ketiga
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        'Film Ketiga', // Judul ketiga
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.0),
                      ),
                      const SizedBox(height: 4.0),
                      const Text(
                        'Beli Tiket', // Tombol Beli Tiket ketiga
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                // Item keempat
                Container(
                  margin: const EdgeInsets.only(right: 12.0),
                  width: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage(
                                'poster/keluarga.jpg'), // Gambar keempat
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        'Film Keempat', // Judul keempat
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.0),
                      ),
                      const SizedBox(height: 4.0),
                      const Text(
                        'Beli Tiket', // Tombol Beli Tiket keempat
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                // Item kelima
                Container(
                  margin: const EdgeInsets.only(right: 12.0),
                  width: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage(
                                'poster/bila.jpg'), // Gambar kelima
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        'Film Kelima', // Judul kelima
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.0),
                      ),
                      const SizedBox(height: 4.0),
                      const Text(
                        'Beli Tiket', // Tombol Beli Tiket kelima
                        style: TextStyle(color: Colors.blue),
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16.0),

          // Spotlight
          const Text(
            'Spotlight',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // Item Spotlight 1
                Container(
                  width: 300,
                  height: 150,
                  margin: const EdgeInsets.only(right: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: AssetImage('poster/ps.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      // Gradasi hitam
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.black.withOpacity(0.7),
                              Colors.transparent
                            ],
                          ),
                        ),
                      ),
                      // Teks dan Ikon
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'TIX ID Box Office\n10 Film Terlaris di Bioskop Indonesia',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Row(
                              children: [
                                Icon(Icons.remove_red_eye,
                                    color: Colors.white, size: 20),
                                SizedBox(width: 4.0),
                                Text('217',
                                    style: TextStyle(color: Colors.white)),
                                SizedBox(width: 16.0),
                                Icon(Icons.thumb_up,
                                    color: Colors.white, size: 20),
                                SizedBox(width: 4.0),
                                Text('115',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Item Spotlight 2
                Container(
                  width: 300,
                  height: 150,
                  margin: const EdgeInsets.only(right: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: AssetImage('poster/sekawan.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.black.withOpacity(0.7),
                              Colors.transparent
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rekomendasi Film\nBikin Merinding Wajib Tonton Minggu Ini!!',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Row(
                              children: [
                                Icon(Icons.remove_red_eye,
                                    color: Colors.white, size: 20),
                                SizedBox(width: 4.0),
                                Text('132',
                                    style: TextStyle(color: Colors.white)),
                                SizedBox(width: 16.0),
                                Icon(Icons.thumb_up,
                                    color: Colors.white, size: 20),
                                SizedBox(width: 4.0),
                                Text('85',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Item Spotlight 3
                Container(
                  width: 300,
                  height: 150,
                  margin: const EdgeInsets.only(right: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: AssetImage('poster/banner1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.black.withOpacity(0.7),
                              Colors.transparent
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Film Terbaik\nFestival Internasional 2024',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Row(
                              children: [
                                Icon(Icons.remove_red_eye,
                                    color: Colors.white, size: 20),
                                SizedBox(width: 4.0),
                                Text('98',
                                    style: TextStyle(color: Colors.white)),
                                SizedBox(width: 16.0),
                                Icon(Icons.thumb_up,
                                    color: Colors.white, size: 20),
                                SizedBox(width: 4.0),
                                Text('56',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16.0),

          // TIX Now
          const Text(
            'TIX Now',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          SizedBox(
            height: 300, // Tinggi maksimum untuk scrollable area
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: AssetImage('poster/agak.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: const Text('Film Baru Rilis Minggu Ini'),
                    subtitle: const Text('1 jam lalu'),
                  ),
                  ListTile(
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: AssetImage('poster/rumah.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: const Text('Habis jadi ipar langsung jadi hantu?!?!'),
                    subtitle: const Text('2 jam lalu'),
                  ),
                  ListTile(
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: AssetImage('poster/aktor.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: const Text('Daftar Aktor yang Mendapatkan Award'),
                    subtitle: const Text('3 jam lalu'),
                  ),
                  ListTile(
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: AssetImage('poster/sl.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: const Text('Kilas Balik Film Terbaik Tahun Ini'),
                    subtitle: const Text('5 jam lalu'),
                  ),
                  ListTile(
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: AssetImage('poster/aol.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: const Text('Trailer Baru yang Wajib Ditonton'),
                    subtitle: const Text('6 jam lalu'),
                  ),
                  ListTile(
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: AssetImage('poster/how.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: const Text('Rekomendasi film buat family time bulan ini!'),
                    subtitle: const Text('8 jam lalu'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavbar(currentIndex: 0),
    );
  }
}
