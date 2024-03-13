import 'package:flutter/material.dart';

class MovementsPage extends StatelessWidget {
  const MovementsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(278.0),
        child: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0,
          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
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
                      Text(
                        'Movimientos',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 90.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'EL CAFE DE ACA',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'ASUNCPR',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Gs. 57.000',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                height: 1.52,
                                letterSpacing: 0.0,
                              ),
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
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Operaciones',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    height: 1.286,
                    letterSpacing: 0.0,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Restaurantes y Bares',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    height: 1.286,
                    letterSpacing: 0.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fecha:',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        height: 1.167,
                        letterSpacing: 0.0,
                        color: Color(0xFF888787),
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      'Hora:',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        height: 1.167,
                        letterSpacing: 0.0,
                        color: Color(0xFF888787),
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      'Cod. de referencia:',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        height: 1.167,
                        letterSpacing: 0.0,
                        color: Color(0xFF888787),
                      ),
                    ),
                    SizedBox(height: 12.0),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '05/06/2022',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        height: 1.167,
                        letterSpacing: 0.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      '20:06 hs',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        height: 1.167,
                        letterSpacing: 0.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      '215665756903',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        height: 1.167,
                        letterSpacing: 0.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
