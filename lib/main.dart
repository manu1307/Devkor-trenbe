import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme: AppBarTheme(
          color: const Color(0xFFffffff),
        )),
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Text(
              '+',
              style: TextStyle(fontSize: 40),
            ),
            onPressed: () {},
            backgroundColor: Color(0xffe78111),
          ),
          appBar: AppBar(
            title: Text('잠실동', style: TextStyle(color: Colors.black)),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search_sharp,
                    color: Colors.black,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notes, color: Colors.black)),
              Icon(Icons.notifications, color: Colors.black),
            ],
          ),
          body: SizedBox(
            child: ListView(
              children: [
                content(
                  imageSource: '1.jfif',
                  textTitle: '꼼데가르송 가디건',
                  location: '강남구 대치4동',
                  price: '100,000',
                  favorite: '4',
                  chat: '2',
                ),
                content(
                  imageSource: 'zflip.jfif',
                  textTitle: '갤럭시 제트플립 미사용 s급',
                  location: '잠실 3동 1분전',
                  price: '630,000',
                  favorite: '2',
                  chat: '2',
                ),
                content(
                  imageSource: 'tommy.jfif',
                  textTitle: '타미힐피거 남성자켓 급처',
                  location: '강남구 일원1동 , 끌올 39초 전',
                  price: '18,000',
                  favorite: '1',
                  chat: '0',
                ),
                content(
                  imageSource: 'airforce.jfif',
                  textTitle: '에어포스 나이키 정품 255사이즈',
                  location: '서울특별시 강남구 14시간 전',
                  price: '100,000',
                  favorite: '3',
                  chat: '0',
                ),
                content(
                  imageSource: 'blackyak.jfif',
                  textTitle: '블랙야크 롱패딩 급처 (105사이즈)',
                  location: '강남구 일원1동 , 끌올 22초 전',
                  price: '29,000',
                  favorite: '1',
                  chat: '7',
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(),
        ));
  }
}

class content extends StatelessWidget {
  final String imageSource;
  final String textTitle;
  final String location;
  final String price;
  final String favorite;
  final String chat;

  const content({
    Key? key,
    required this.imageSource,
    required this.textTitle,
    required this.location,
    required this.price,
    required this.favorite,
    required this.chat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(color: Colors.grey, width: 0.4))),
      child: Row(
        children: [
          Image.asset(
            imageSource,
            width: 160,
            height: 139,
          ),
          Flexible(
            child: Container(
              height: 140,
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(textTitle,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      )),
                  Text(location,
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          color: Colors.grey,
                          fontSize: 8.5)),
                  Text(price + '원',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 18)),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite,
                                size: 15, color: Colors.grey)),
                        Text(favorite),
                        IconButton(
                            onPressed: () {},
                            icon:
                                Icon(Icons.chat, size: 15, color: Colors.grey)),
                        Text(chat)
                      ],
                    ),
                  )
                ],
              ),
            ),
            flex: 8,
          ),
        ],
      ),
    );
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
          Container(
              width: 70,
              height: 50,
              padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
              child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.black,
                      ),
                      Text(
                        "홈",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 9,
                            color: Colors.black),
                      ),
                    ],
                  ))),
          Container(
              width: 70,
              height: 50,
              padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
              child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(
                        Icons.business,
                        color: Colors.black,
                      ),
                      Text(
                        "동네생활",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 9,
                            color: Colors.black),
                      ),
                    ],
                  ))),
          Container(
              width: 70,
              height: 50,
              padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
              child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        color: Colors.black,
                      ),
                      Text(
                        "내 근처",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 9,
                            color: Colors.black),
                      ),
                    ],
                  ))),
          Container(
              width: 70,
              height: 50,
              padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
              child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(
                        Icons.chat,
                        color: Colors.black,
                      ),
                      Text(
                        "채팅",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 9,
                            color: Colors.black),
                      ),
                    ],
                  ))),
          Container(
              width: 70,
              height: 50,
              padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
              child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      Text(
                        "나의 당근",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 9,
                            color: Colors.black),
                      ),
                    ],
                  ))),
        ],
      ),
    );
  }
}
