import 'package:flutter/material.dart';

class PesanGroupScreen extends StatelessWidget {
  const PesanGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Pesan & Group UPI',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                hintText: 'Cari',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildFilterChip('Semua'),
              _buildFilterChip('Belum dibaca'),
              _buildFilterChip('Favorit'),
              _buildFilterChip('Grup'),
              IconButton(
                icon: const Icon(Icons.add_circle_outline, color: Colors.grey),
                onPressed: () {},
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                _buildChatItem('Pa Yudi Provis', '...', 0),
                _buildChatItem('Bayu', 'Jadi nggak?', 10),
                _buildChatItem('Haniel', 'gmn tugas provis kalian bg?', 10),
                _buildChatItem('Abil', 'Kumaha res?', 1),
                _buildChatItem('Jovan', 'Programnya udah jadi nggak re?', 1),
                _buildChatItem('Igin', '...', 0),
                _buildChatItem('Pa Yaya', '...', 0),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 184, 7, 170),
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.teal,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam),
            label: 'Pembuatan',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.groups), label: 'Komunitas'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Panggilan'),
        ],
      ),
    );
  }

  Widget _buildChatItem(String name, String message, int count) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey[400],
        child: const Icon(Icons.person, color: Colors.white),
      ),
      title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(message),
      trailing:
          count > 0
              ? CircleAvatar(
                backgroundColor: Colors.teal,
                radius: 12,
                child: Text(
                  '$count',
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              )
              : null,
    );
  }

  Widget _buildFilterChip(String label) {
    return Chip(
      label: Text(label, style: const TextStyle(color: Colors.black54)),
      backgroundColor: Colors.grey[300],
    );
  }
}

void main() {
  runApp(const MaterialApp(home: PesanGroupScreen()));
}
