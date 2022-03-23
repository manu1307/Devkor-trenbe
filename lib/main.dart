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
          appBar: AppBar(
              title : Text('잠실동', style: TextStyle(color:Colors.black)),
              actions: [
                IconButton(onPressed: (){}, icon:Icon(Icons.search_sharp, color: Colors.black,)),
                IconButton(onPressed: (){}, icon:Icon(Icons.notes, color: Colors.black)),
                IconButton(onPressed: (){}, icon:Icon(Icons.notifications, color: Colors.black)),
              ],
          ),
          body: SizedBox(
            child: Column(
              children: [
                 Container(
                   padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        border: Border.symmetric(
                            horizontal: BorderSide(color: Colors.grey,width: 0.4)
                        )
                    ),
                    child: Row(
                      children: [
                        Image.asset('1.jfif', width: 160, height: 139,),
                        Flexible(
                          child: Container(
                            height: 140,
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("꼼데가르송 가디건",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                )),
                                Text("강남구 대치4동 끌올 6초 전",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w100,
                                      color: Colors.grey,
                                      fontSize: 8.5)),
                                Text('100,000원',
                                    style: TextStyle(
                                     fontWeight: FontWeight.w900,
                                     fontSize: 18)),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(onPressed: (){}, icon:Icon(Icons.favorite,size: 15, color: Colors.grey)),
                                      Text('4'),
                                      IconButton(onPressed: (){}, icon:Icon(Icons.chat,size: 15, color: Colors.grey)),
                                      Text('2')

                                    ],
                                  ),
                                )
                              ],
                            ),
                          ), flex: 8,
                        ),

                      ],
                    ),
                  ),



              ],
            ),

          ),
          bottomNavigationBar: BottomAppBar(

                child : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        width: 70,
                        height: 50,
                        padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                        child : TextButton(
                            onPressed: (){},
                            child: Column(
                              children: [
                                Icon(Icons.home,color: Colors.black,),
                                Text("홈", style:
                                TextStyle(fontWeight: FontWeight.w800,
                                    fontSize: 9,
                                    color: Colors.black),),
                              ],
                            ))),
                    Container(
                        width: 70,
                        height: 50,
                        padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                        child : TextButton(
                            onPressed: (){},
                            child: Column(
                              children: [
                                Icon(Icons.business, color: Colors.black,),
                                Text("동네생활", style:
                                TextStyle(fontWeight: FontWeight.w800,
                                    fontSize: 9,
                                    color: Colors.black),),
                              ],
                            ))),
                    Container(
                        width: 70,
                        height: 50,
                        padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                        child : TextButton(
                            onPressed: (){},
                            child: Column(
                              children: [
                                Icon(Icons.location_on_rounded, color: Colors.black,),
                                Text("내 근처", style:
                                TextStyle(fontWeight: FontWeight.w800,
                                    fontSize: 9,
                                    color: Colors.black),),
                              ],
                            ))),
                    Container(
                        width: 70,
                        height: 50,
                        padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                        child : TextButton(
                            onPressed: (){},
                            child: Column(
                              children: [
                                Icon(Icons.chat, color: Colors.black,),
                                Text("채팅", style:
                                TextStyle(fontWeight: FontWeight.w800,
                                    fontSize: 9,
                                    color: Colors.black),),
                              ],
                            ))),
                    Container(
                        width: 70,
                        height: 50,
                        padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                        child : TextButton(
                            onPressed: (){},
                            child: Column(
                              children: [
                                Icon(Icons.person, color: Colors.black,),
                                Text("나의 당근", style:
                                TextStyle(fontWeight: FontWeight.w800,
                                    fontSize: 9,
                                    color: Colors.black),),
                              ],
                            ))),


                  ],
                ),
              ),
            )

          );

  }
}
