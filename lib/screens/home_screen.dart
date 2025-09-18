import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _taskRow(String text, {Color dot = Colors.green}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(Icons.circle, size: 12, color: dot),
          const SizedBox(width: 10),
          Text(text, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }

  Widget _listTileRow(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text('View task', style: TextStyle(color: Colors.blue[700])),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Calendar'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notif'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(radius: 20, backgroundImage: AssetImage('assets/images/avatar.png')),
                      const SizedBox(width: 12),
                      const Text('Hi, Good Morning 👋', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
                ],
              ),

              const SizedBox(height: 16),

              // Search
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search task...',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
                ),
              ),

              const SizedBox(height: 18),

              // Recent
              Align(alignment: Alignment.centerLeft, child: const Text('Recent', style: TextStyle(fontWeight: FontWeight.bold))),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.grey[100]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _taskRow('Practice Figma', dot: Colors.green),
                    _taskRow('Create login page', dot: Colors.blue),
                    _taskRow('Complete task of dart', dot: Colors.orange),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              // My Tasks
              Align(alignment: Alignment.centerLeft, child: const Text('My Tasks', style: TextStyle(fontWeight: FontWeight.bold))),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.grey[100]),
                child: Column(
                  children: [
                    _listTileRow('Recently assigned'),
                    _listTileRow('Recently assigned'),
                    _listTileRow('Recently assigned'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
