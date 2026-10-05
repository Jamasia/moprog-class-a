import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // UC Brand Colors & Eye-Friendly Palette
  static const Color ucGreen = Color.fromARGB(255, 44, 65, 30);
  static const Color ucGold = Color.fromARGB(255, 204, 194, 155);
  static const Color eyeFriendlyBg = Color.fromARGB(255, 193, 202, 193); // Soft light green-tinted off-white
  static const Color cardBg = Color(0xFFFFFFFF);
  static const Color textDark = Color.fromARGB(255, 20, 22, 21);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UC Baguio Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: ucGreen,
          primary: ucGreen,
          secondary: ucGold,
          surface: eyeFriendlyBg,
        ),
        scaffoldBackgroundColor: eyeFriendlyBg,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'University of the Cordilleras'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _currentIndex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar with UC Green branding and gold highlights
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: MyApp.ucGreen,
        elevation: 2,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search Portal',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            tooltip: 'Notifications',
            onPressed: () {},
          ),
        ],
      ),

      // Side Navigation Menu
      drawer: Drawer(
        backgroundColor: MyApp.cardBg,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: MyApp.ucGreen),
              accountName: Text(
                'UC Jaguars Portal',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              accountEmail: Text('student@uc-bcf.edu.ph'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: MyApp.ucGold,
                child: Icon(Icons.school, size: 36, color: MyApp.ucGreen),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.dashboard_outlined, color: MyApp.ucGreen),
              title: Text('Dashboard', style: TextStyle(color: MyApp.textDark)),
            ),
            const ListTile(
              leading: Icon(Icons.book_outlined, color: MyApp.ucGreen),
              title: Text('My Courses', style: TextStyle(color: MyApp.textDark)),
            ),
            const ListTile(
              leading: Icon(Icons.person_outline, color: MyApp.ucGreen),
              title: Text('Student Profile', style: TextStyle(color: MyApp.textDark)),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Header banner image with rounded border using requested image URL
              Container(
                margin: const EdgeInsets.only(bottom: 24),
                decoration: BoxDecoration(
                  color: MyApp.cardBg,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.08),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  border: Border.all(color: MyApp.ucGreen, width: 2),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.network(
                    'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiHQBlFFco-hbG-zMAILye9tSH97x0DEsrkwKV5EZi1CG0bo2IWyu_oqD2pisUhNgFlSH-nLkrwH4Gra0GwLLi3LDHhbD1psaihFDqLAV1JIoVx8DOiT2fbX3zND3ggaZ7DjA9vRiEkYk8/w1200-h630-p-k-no-nu/university+of+cordilleras.jpg',
                    height: 160,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // UC Emblem / Icon Container
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: MyApp.ucGold,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.school,
                  size: 40,
                  color: MyApp.ucGreen,
                ),
              ),
              const SizedBox(height: 16),

              // Primary Text Content
              const Text(
                'Interactive Activity Counter',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: MyApp.ucGreen,
                ),
              ),
              const SizedBox(height: 8),

              Text(
                '$_counter',
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: MyApp.textDark,
                ),
              ),

              const SizedBox(height: 24),

              // Embedded information card
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: MyApp.cardBg,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: MyApp.ucGreen.withValues(alpha: 0.3)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.04),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.info_outline, size: 20, color: MyApp.ucGreen),
                        SizedBox(width: 8),
                        Text(
                          'UC Baguio Notice',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: MyApp.ucGreen,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Test',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 13,
                        color: MyApp.textDark,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // Extended FAB styled with UC Gold and Green
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _incrementCounter,
        backgroundColor: MyApp.ucGold,
        foregroundColor: MyApp.ucGreen,
        tooltip: 'Tap to increase count',
        icon: const Icon(Icons.add, size: 24),
        label: const Text(
          'INCREMENT',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: MyApp.ucGreen,
        unselectedItemColor: MyApp.ucGreen.withValues(alpha: 0.6),
        backgroundColor: MyApp.cardBg,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.class_outlined),
            activeIcon: Icon(Icons.class_),
            label: 'Classes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}