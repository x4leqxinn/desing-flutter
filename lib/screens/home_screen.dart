import 'package:flutter/material.dart';

import 'package:mobile_desing/widgets/background.dart';
import 'package:mobile_desing/widgets/card_table.dart';
import 'package:mobile_desing/widgets/custom_bottom_navigation.dart';
import 'package:mobile_desing/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          const Background(),
          // Home Body
          _HomeBody()
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          // Titulos
          PageTitle(),

          // Card Table
          CardTable(),
        ],
      ),
    );
  }
}
