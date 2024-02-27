import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/transfers_page.dart';
import 'pages/analysis_page.dart';
import 'pages/account_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  int paginaActual = 0;

  final List<Widget> _paginas = [
    HomePage(),
    TransfersPage(),
    AnalysisPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _paginas[paginaActual],
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            paginaActual = index;
          });
        },
        currentIndex: paginaActual,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz),
            label: "Transferencias",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_outlined),
            label: "Analisis",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Cuenta",
          ),
        ],
      ),
    );
  }
}
