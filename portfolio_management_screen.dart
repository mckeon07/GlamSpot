import 'package:flutter/material.dart';
import 'package:flutter_project/portfolio_screen.dart';
import 'package:flutter_project/profile_screen.dart';
import 'package:flutter_project/setting_screen.dart';
import 'booking_screen.dart';
import 'home_screen.dart';

class PortfolioManagementScreen extends StatefulWidget {
  const PortfolioManagementScreen({Key? key}) : super(key: key);

  @override
  _PortfolioManagementScreenState createState() =>
      _PortfolioManagementScreenState();
}

class _PortfolioManagementScreenState extends State<PortfolioManagementScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = <Widget>[
    // Add your screens here
    const HomeScreen(),
    const ProfileScreen(),
    const PortfolioScreen(),
    const BookingsScreen(),
    const SettingsScreen(),
  ];

  Widget _buildCategoryCard(String category) {
    return Card(
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          category,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: const Text('Portfolio Management'),
        titleTextStyle: const TextStyle(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
            tooltip: 'Share',
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit),
            tooltip: 'Edit',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search portfolio',
                prefixIcon: const Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildCategoryCard('Hairstyling'),
                  _buildCategoryCard('Makeup'),
                  _buildCategoryCard('Pedicure'),
                  _buildCategoryCard('Manicure'),
                  _buildCategoryCard('Fashion Designer'),
                  _buildCategoryCard('Photographer'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Recent Portfolio Items',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: List.generate(
                  10,
                  (index) => Container(
                    color: Colors.grey[200],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.grey[400],
                            child: Icon(Icons.photo, size: 48),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Title $index',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.edit),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.delete),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
