import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade100,
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Cari pengumuman, materi kuliah",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Menu Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildMenuButton(Icons.favorite, "Mental Health"),
                _buildMenuButton(Icons.school, "Akademik"),
                _buildMenuButton(Icons.account_balance_wallet, "Keuangan"),
                _buildMenuButton(Icons.people, "Medsos"),
              ],
            ),
            const SizedBox(height: 20),
            // Cards
            Row(
              children: [
                Expanded(
                  child: _buildInfoCard(
                    "Jadwal Mata Kuliah",
                    "Pemrograman Visual, 9.30 (C205)\nData Mining 13.00 (C307)",
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _buildInfoCard(
                    "Tugas",
                    "Tubes 1 Provis (besok, 19.00)",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Scholarship Card
            _buildScholarshipCard(),
            const Spacer(),
            // Bottom Navigation
            _buildBottomNavigation(),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuButton(IconData icon, String title) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white,
          child: Icon(icon, color: Colors.blue, size: 30),
        ),
        const SizedBox(height: 5),
        Text(title, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildInfoCard(String title, String content) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue.shade700,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            content,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _buildScholarshipCard() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            color: Colors.grey.shade300,
            child: const Icon(Icons.image, size: 40),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Beasiswa Sempurna",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Beasiswa untuk siswa berprestasi. Minimal mahasiswa semester 5. Tap untuk rincian",
                ),
              ],
            ),
          ),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }

  Widget _buildBottomNavigation() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
        BottomNavigationBarItem(icon: Icon(Icons.computer), label: "Elearning"),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: "Jadwal & Todo",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Pesan & Group"),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "Notifikasi",
        ),
      ],
    );
  }
}
