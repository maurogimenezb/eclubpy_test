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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xFFf8dbcf),
              blurRadius: 20,
              spreadRadius: 10,
              offset: Offset(0, -10),
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: const Color(0xFF888787),
          unselectedItemColor: const Color(0xFFCACACA),
          backgroundColor: const Color(0xFFF7F0ED),
          onTap: (index) {
            setState(() {
              paginaActual = index;
            });
          },
          currentIndex: paginaActual,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Inicio",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.swap_horiz),
              label: "Transferencias",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.donut_small_outlined),
              label: "Analisis",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: "Cuenta",
            ),
          ],
        ),
      ),
    );
  }
}
