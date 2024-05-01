// second_screen.dart
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        body: TabBarView(
          children: <Widget>[
            Center(child: Text('Contenu pour Tab 1')),
            Center(child: Text('Contenu pour Tab 2')),
          ],
        ),
        bottomNavigationBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: TabBar(
            tabs: <Widget>[
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
            ],
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
          ),
        ),
      ),
    );
  }
}
