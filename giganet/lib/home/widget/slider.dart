import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:giganet/webview/my_web_view.dart';

class HomeSlider extends StatelessWidget {
  final List<Map<String, String>> itemList;
  HomeSlider(this.itemList);
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 900,
      // width: 900,
      child: Column(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            // items: imageSliders,
            items: itemList
                .map((item) => Container(
                      child: GestureDetector(
                        onTap: () {
                          print('${item['url']}');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MyWebView(item['url'], item['title'])));
                        },
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              child: Stack(
                                children: <Widget>[
                                  Image.asset(item['img'],
                                      fit: BoxFit.cover, width: 1000.0),
                                  Positioned(
                                    bottom: 0.0,
                                    left: 0.0,
                                    right: 0.0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color.fromARGB(200, 0, 0, 0),
                                            Color.fromARGB(0, 0, 0, 0)
                                          ],
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                        ),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 20.0),
                                      child: Text(
                                        '${item['title']}',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
