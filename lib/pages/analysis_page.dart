import 'package:eclubpy_test/pages/bills_page.dart';
import 'package:flutter/material.dart';

class AnalysisPage extends StatefulWidget {
  const AnalysisPage({Key? key}) : super(key: key);

  @override
  State<AnalysisPage> createState() => _AnalysisPageState();
}

class _AnalysisPageState extends State<AnalysisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF7F0ED),
        title: Column(
          children: [
            SizedBox(height: 10),
            Text(
              'Análisis',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xFFA6A6A6),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFA6A6A6),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.menu,
                  color: Color(0xFFA6A6A6),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Color(0xFFF7F0ED),
                  borderRadius: BorderRadius.circular(75),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFf8dbcf),
                      blurRadius: 40,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.donut_small_outlined,
                  size: 84,
                  color: Color(0xFFFF6720),
                ),
              ),
              SizedBox(height: 30),
              Container(
                child: Text(
                  '¿Qué deseas revisar?',
                  style: TextStyle(
                    color: Color(0xFFF00E51),
                    fontFamily: 'Poppins',
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    height: 1.16,
                    letterSpacing: 0,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.local_atm,
                          color: Color(0xFFFF6720),
                          size: 50,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Ingresos',
                          style: TextStyle(
                            color: Color(0xFFF00E51),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.16,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BillsPage(),
                        ),
                      );
                    },
                    child: Container(
                      width: 130,
                      height: 130,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.credit_card,
                            color: Color(0xFFFF6720),
                            size: 50,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Gastos',
                            style: TextStyle(
                              color: Color(0xFFF00E51),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 1.16,
                              letterSpacing: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
