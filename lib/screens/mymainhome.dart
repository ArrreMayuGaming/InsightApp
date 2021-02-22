import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:insight/consts/colors.dart';
import 'package:insight/dataModels/dataismac.dart';
import 'package:insight/widgets/cardismac.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List carouselList = [
    'assets/partners/1.jpg',
    'assets/partners/2.jpg',
    'assets/partners/3.jpg',
    'assets/partners/4.jpg',
    'assets/partners/5.jpg',
    'assets/partners/6.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: gradientEndColor,
      appBar: AppBar(
        backgroundColor: gradientStartColor,
        elevation: 0,
      ),
      drawer: Drawer(),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [gradientStartColor, gradientEndColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.3, 0.7],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 35.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Insight India',
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 44,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'We Inspire Lives',
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 22,
                            color: secondaryTextColor,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Image.asset('assets/ismac.png',
                            height: MediaQuery.of(context).size.height * 0.2),
                      ),
                      Text(
                        'A holistic blend of new-age IT solutions',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    padding: EdgeInsets.only(left: 35),
                    child: Swiper(
                      itemCount: ismac.length,
                      itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                      layout: SwiperLayout.STACK,
                      itemBuilder: (builder, index) {
                        return Stack(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.05),
                                Card(
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.1),
                                        //Image.asset(ismac[index].iconimg),
                                        Text(
                                          ismac[index].name,
                                          style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 33,
                                            color: const Color(0xff47455f),
                                            fontWeight: FontWeight.w900,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        Text(
                                          'Solar System',
                                          style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 23,
                                            color: primaryTextColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.03),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              'Know more',
                                              style: TextStyle(
                                                fontFamily: 'Avenir',
                                                fontSize: 18,
                                                color: secondaryTextColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            Icon(
                                              Icons.arrow_forward,
                                              color: secondaryTextColor,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                /* Row(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Card(
                        color: Colors.white,
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Card(
                        color: Colors.white,
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Card(
                        color: Colors.white,
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Card(
                        color: Colors.white,
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    )
                  ],
                ),*/
                Center(
                  child: Text(
                    'OUR PARTNERS',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 25.0),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                GestureDetector(
                  onTap: () {
                    print('Slider clicked');
                  },
                  child: CarouselSlider(
                    items: carouselList.map((i) {
                      return Builder(builder: (BuildContext context) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                              )
                            ],
                          ),
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 2.0),
                          child: Image.asset(i),
                        );
                      });
                    }).toList(),
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      // width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'OUR MAIN MODULES',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 25.0),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'We have sprawling reach across various sectors \nGet access to all of our exclusive case studies',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                CategoriesScroller(),
              ],
            ),
          ),
        ),
      ),
      /*bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(36.0),
          ),
          color: navigationColor,
        ),
        padding: const EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Image.asset('assets/menu_icon.png'),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/search_icon.png'),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/profile_icon.png'),
              onPressed: () {},
            ),
          ],
        ),
      ),*/
    );
  }
}

//clipper widget
class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var roudnessFactor = 50.0;

    path.moveTo(0, size.height * 0.33);
    path.lineTo(0, size.height - roudnessFactor);
    path.quadraticBezierTo(0, size.height, 50, size.height);

    path.lineTo(size.width - roudnessFactor, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - roudnessFactor);

    path.lineTo(size.width, roudnessFactor * 2);
    path.quadraticBezierTo(
        size.width, 0, size.width - roudnessFactor * 3.5, roudnessFactor * 2);

    path.lineTo(roudnessFactor, size.height * 0.33 + 10);
    path.quadraticBezierTo(0, size.height * 0.33 + roudnessFactor, 0,
        size.height * 0.33 + roudnessFactor * 2);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}

class CategoriesScroller extends StatelessWidget {
  const CategoriesScroller();

  @override
  Widget build(BuildContext context) {
    final double categoryHeight =
        MediaQuery.of(context).size.height * 0.30 - 50;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
            children: <Widget>[
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    color: Colors.orange.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "PRIME CLIENTS",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Know more',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    color: Colors.orange.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "CASE STUDIES",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Know more',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    color: Colors.orange.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "INSIGHT CAREERS",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Know more',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    color: Colors.orange.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "OFFICE TOUR",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Know more',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
