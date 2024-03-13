import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> titles = [
    'PlayStation Network',
    'Banco Regional',
    'Punto Farma',
    'Uber',
    'Feria Asunción',
    'Uber',
  ];

  final List<String> subtitles = [
    'Entretenimiento',
    'Retiros',
    'Salud',
    'Transporte',
    'Compras',
    'Transporte',
  ];

  final List<String> additionalTitles = [
    '1.000 Gs',
    '150.000 Gs.',
    '+1.000.0000 Gs.',
    '150.000 Gs.',
    '+1.000.0000 Gs.',
    '150.000 Gs.',
  ];

  final List<String> additionalSubtitles = [
    '08/06/2022',
    '07/06/2022',
    '08/06/2022',
    '07/06/2022',
    '08/06/2022',
    '07/06/2022',
  ];

  final List<IconData> icons = [
    Icons.sports_esports_outlined,
    Icons.account_balance_outlined,
    Icons.health_and_safety_outlined,
    Icons.directions_bus_filled_outlined,
    Icons.shopping_cart_outlined,
    Icons.directions_bus_filled_outlined,
  ];

  final List<Color> iconColors = [
    Color(0xFFC9E265),
    Color(0xFFFC3EDD8),
    Color(0xFFFFF9190),
    Color(0xFFFFA9233),
    Color(0xFFFAAB6FB),
    Color(0xFFFFA9233),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(300.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-1.0, -1.0),
                  end: Alignment(1.0, 1.0),
                  colors: [
                    Color(0xFFF00E51),
                    Color(0xFFFF6720),
                    Color(0xFFFF9E1B),
                  ],
                ),
              ),
              height: 300.0,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top: 33.0,
                    right: 18.0,
                    child: Container(
                      width: 46,
                      height: 46,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 50.0),
                      Container(
                        width: 62,
                        height: 17,
                        child: Image.asset(
                          'assets/logoeClub.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(height: 120.0),
                      Text(
                        'Disponible',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 1.53,
                          letterSpacing: 0.0,
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Gs. 2.000.080',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                height: 1.52,
                                letterSpacing: 0.0,
                              ),
                            ),
                            SizedBox(width: 8.0),
                            Icon(
                              Icons.visibility_outlined,
                              color: Colors.white,
                              size: 25.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
            padding: EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Movimientos',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  height: 1.286,
                  letterSpacing: 0.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16.0),
              Expanded(
                  child: ListView.builder(
                      itemCount: titles.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: ListTile(
                              leading: Container(
                                width: 46,
                                height: 46,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Icon(
                                    icons[index],
                                    color: iconColors[index],
                                  ),
                                ),
                              ),
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        titles[index],
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w600,
                                          height: 1.167,
                                          letterSpacing: 0.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        subtitles[index],
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w600,
                                          height: 1.167,
                                          letterSpacing: 0.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        additionalTitles[index],
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w600,
                                          height: 1.167,
                                          letterSpacing: 0.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        additionalSubtitles[index],
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w600,
                                          height: 1.167,
                                          letterSpacing: 0.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ));
                      }))
            ])));
  }
}
