import 'package:eclubpy_test/pages/restaurant_page.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BillsPage extends StatefulWidget {
  const BillsPage({Key? key}) : super(key: key);

  @override
  State<BillsPage> createState() => _BillsPageState();
}

class _BillsPageState extends State<BillsPage> {
  int touchedIndex = -1;
  int selectedButton = 4;

  void selectButton(int buttonIndex) {
    setState(() {
      selectedButton = buttonIndex;
    });
  }

  final List<String> titles = [
    'Restaurantes y bares',
    'Compras',
    'Transporte',
  ];

  final List<String> additionalTitles = [
    '412.000 Gs',
    '165.549 Gs.',
    '79.800 Gs.',
  ];

  final List<IconData> icons = [
    Icons.restaurant_menu_outlined,
    Icons.shopping_cart_outlined,
    Icons.directions_bus_filled_outlined,
  ];

  final List<Color> iconColors = [
    Color(0xFFDAB1F8),
    Color(0xFFAAB6FB),
    Color(0xFFFFA9233),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF7F0ED),
        title: Column(
          children: [
            SizedBox(height: 10),
            Text(
              'Gastos',
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
            padding: const EdgeInsets.only(right: 18.0),
            child: Container(
              width: 46,
              height: 46,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomButton(
                    onPressed: () {
                      selectButton(1);
                    },
                    text: 'Marzo 2022',
                    isSelected: selectedButton == 1,
                  ),
                  SizedBox(width: 8),
                  CustomButton(
                    onPressed: () {
                      selectButton(2);
                    },
                    text: 'Abril 2022',
                    isSelected: selectedButton == 2,
                  ),
                  SizedBox(width: 8),
                  CustomButton(
                    onPressed: () {
                      selectButton(3);
                    },
                    text: 'Mayo 2022',
                    isSelected: selectedButton == 3,
                  ),
                  SizedBox(width: 8),
                  CustomButton(
                    onPressed: () {
                      selectButton(4);
                    },
                    text: 'Junio 2022',
                    isSelected: selectedButton == 4,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 100),
          Center(
            child: AspectRatio(
              aspectRatio: 1.3,
              child: Stack(
                children: <Widget>[
                  PieChart(
                    PieChartData(
                      pieTouchData: PieTouchData(
                        touchCallback: (FlTouchEvent event, pieTouchResponse) {
                          setState(() {
                            if (!event.isInterestedForInteractions ||
                                pieTouchResponse == null ||
                                pieTouchResponse.touchedSection == null) {
                              touchedIndex = -1;
                              return;
                            }
                            touchedIndex = pieTouchResponse
                                .touchedSection!.touchedSectionIndex;
                            if (touchedIndex == 6) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RestaurantPage(),
                                ),
                              );
                            }
                          });
                        },
                      ),
                      sections: getSections(),
                    ),
                  ),
                  Positioned.fill(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Junio',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            height: 1.67,
                            letterSpacing: 0,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Gs. 705.133',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            height: 1.25,
                            letterSpacing: 0,
                            color: Color(0xFFFDF0A5D),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Center(
            child: Container(
              width: 315,
              height: 55,
              margin: const EdgeInsets.fromLTRB(24, 24, 24, 24),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFDF0A5D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Ver extracto',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  List<PieChartSectionData> getSections() {
    List<IconData> icons = [
      Icons.home,
      Icons.school_outlined,
      Icons.food_bank,
      Icons.airplane_ticket,
      Icons.shopping_bag,
      Icons.sports_soccer,
      Icons.restaurant_menu_outlined,
    ];

    return List.generate(
      7,
      (i) {
        final isTouched = i == touchedIndex;
        final double fontSize = isTouched ? 25 : 16;
        final double radius = isTouched ? 60 : 50;

        final List<double> porcentajes = [
          10.0,
          20.0,
          10.0,
          10.0,
          10.0,
          10.0,
          30.0
        ];

        final List<Color> colores = [
          Color(0xFFFEFBF3C),
          Color(0xFFFCFE7A5),
          Color(0xFFF57B7DD),
          Color(0xFFFF99233),
          Color(0xFFFA9B6FC),
          Color(0xFFFFFBE0A),
          Color(0xFFFDAB0F8),
        ];

        double value = porcentajes[i];

        return PieChartSectionData(
          color: colores[i % colores.length],
          value: value,
          title: '',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: const Color(0xffffffff),
          ),
          badgeWidget: Icon(
            icons[i],
            color: Colors.white,
          ),
        );
      },
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final bool isSelected;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            border: isSelected
                ? Border(
                    bottom: BorderSide(color: Color(0xFFFDF0A5D), width: 2))
                : null,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isSelected ? Color(0xFFFDF0A5D) : Colors.black,
              height: 1.5,
              letterSpacing: 0,
            ),
          ),
        ),
      ),
    );
  }
}
