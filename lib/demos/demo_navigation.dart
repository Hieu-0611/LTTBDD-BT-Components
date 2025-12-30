import 'package:flutter/material.dart';

class TabsDemoScreen extends StatelessWidget {
  const TabsDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar'),
          centerTitle: true,
          bottom: const TabBar(tabs: [
            Tab(text: 'Home'),
            Tab(text: 'Chat'),
            Tab(text: 'Profile'),
          ]),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Home tab')),
            Center(child: Text('Chat tab')),
            Center(child: Text('Profile tab')),
          ],
        ),
      ),
    );
  }
}

class DrawerDemoScreen extends StatelessWidget {
  const DrawerDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drawer'), centerTitle: true),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(child: Text('Menu')),
            ListTile(leading: Icon(Icons.home), title: Text('Home')),
            ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
          ],
        ),
      ),
      body: const Center(child: Text('Open drawer from left')),
    );
  }
}

class BottomNavDemoScreen extends StatefulWidget {
  const BottomNavDemoScreen({super.key});

  @override
  State<BottomNavDemoScreen> createState() => _BottomNavDemoScreenState();
}

class _BottomNavDemoScreenState extends State<BottomNavDemoScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final pages = const [
      Center(child: Text('Home')),
      Center(child: Text('Search')),
      Center(child: Text('Profile')),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('BottomNavigationBar'), centerTitle: true),
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) => setState(() => index = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
