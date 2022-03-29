import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class OnHover extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  const OnHover({Key? key, required this.builder}) : super(key: key);
  @override
  _OnHoverState createState() => _OnHoverState();
}

class _OnHoverState extends State<OnHover> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hovered = Matrix4.identity()..translate(0);
    final transform = isHovered ? hovered : Matrix4.identity();
    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        transform: transform,
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  var index = [0, 1, 2, 3, 4];
  var line1 = ["여성", "남성", "키즈", "리세일", "아울렛"];
  var line1img = ['women.png', 'men.png', 'kids.png', 'bag1.png', 'bag2.png'];
  var line2 = ["하이엔드", "컨템럭셔리", "스니커즈", "홈리빙", "리퍼브"];
  var line2img = [
    'highend.png',
    'fox.png',
    'snickers.png',
    'light.png',
    'sale.png'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: AppBarTheme(
          color: const Color(0xFFffffff),
        )),
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.arrow_drop_up,
              color: Colors.black,
              size: 30,
            ),
            backgroundColor: Colors.white,
          ),
          appBar: AppBar(
            title: Row(
              children: [
                Text('tren',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w900)),
                Text(':',
                    style: TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.w900)),
                Text('be',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w900)),
              ],
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black,
                  ))
            ],
          ),
          body: ListView(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: TextField(
                decoration: InputDecoration(
                    disabledBorder: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromARGB(255, 247, 247, 247),
                    hintText: "블랙프라이데이 초특가 행사",
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
            navbar(),
            CarouselSlider(
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
              ),
              items: [1, 2, 3].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: (Image(
                          image: AssetImage('$i.png'),
                        )));
                  },
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int i in index)
                  Container(
                      child: Column(
                    children: [
                      iconimage(name: line1img[i]),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            line1[i],
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                color: Colors.black),
                          )),
                    ],
                  ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int i in index)
                  Container(
                      child: Column(
                    children: [
                      iconimage(name: line2img[i]),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            line2[i],
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                color: Colors.black),
                          )),
                    ],
                  ))
              ],
            )
          ]),
          bottomNavigationBar: BottomAppBar(),
        ));
  }
}

class iconimage extends StatelessWidget {
  const iconimage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Image(
          image: AssetImage(name),
          width: 30,
          height: 30,
        ));
  }
}

class navbar extends StatelessWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(0, 5, 0, 12),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('홈'),
                style: TextButton.styleFrom(primary: Colors.black),
              ),
              TextButton(
                onPressed: () {},
                child: Text('기획전'),
                style: TextButton.styleFrom(primary: Colors.black),
              ),
              TextButton(
                onPressed: () {},
                child: Text('랭킹'),
                style: TextButton.styleFrom(primary: Colors.black),
              ),
              TextButton(
                onPressed: () {},
                child: Text('브랜드'),
                style: TextButton.styleFrom(primary: Colors.black),
              ),
              TextButton(
                onPressed: () {},
                child: Text('IT:EM'),
                style: TextButton.styleFrom(primary: Colors.black),
              ),
              TextButton(
                onPressed: () {},
                child: Text('매거진'),
                style: TextButton.styleFrom(primary: Colors.black),
              ),
            ],
          ),
        ));
  }
}

class bottomicon extends StatelessWidget {
  const bottomicon({Key? key, this.text, this.iconclass}) : super(key: key);
  final text;
  final iconclass;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 50,
        padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
        child: TextButton(
            style: TextButton.styleFrom(primary: Colors.white),
            onPressed: () {},
            child: Column(
              children: [
                OnHover(builder: ((isHovered) {
                  var color = isHovered ? Colors.purple : Colors.grey;
                  return Icon(
                    iconclass,
                    color: color,
                  );
                })),
                Text(
                  text,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: Colors.grey),
                ),
              ],
            )));
  }
}

class BottomAppBar extends StatelessWidget {
  const BottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(top: BorderSide(width: 0.5, color: Colors.grey))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          bottomicon(text: '카테고리', iconclass: Icons.category),
          bottomicon(
            text: '이벤트',
            iconclass: Icons.event,
          ),
          bottomicon(
            text: '홈',
            iconclass: Icons.home_filled,
          ),
          bottomicon(
            text: '뉴 시즌',
            iconclass: Icons.new_releases,
          ),
          bottomicon(
            text: '마이',
            iconclass: Icons.person,
          ),
        ],
      ),
    );
  }
}
