import 'package:flutter/material.dart';

import './tabs.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 15,
                ),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Art',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text('Home',
                       style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 24,
                        color: Colors.greenAccent,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15,),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 55,
                    padding: EdgeInsets.only(
                      left: 35,
                      right: 35,
                      bottom: 10,
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey[200],
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                border: InputBorder.none,
                                hintText: 'Search for Artist',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    userStory(
                      storyImage: 'assets/images/bigstock-Happy-Black-Woman-12039302.jpg',
                      userImage: 'assets/images/jo111.jpg',
                      userName: 'Therma Peters'
                    ),
                    userStory(
                      storyImage: 'assets/images/bigstock-Happy-Black-Woman-12039302.jpg',
                      userImage: 'assets/images/jo111.jpg',
                      userName: 'Therma Peters'
                    ),
                    userStory(
                      storyImage: 'assets/images/bigstock-Happy-Black-Woman-12039302.jpg',
                      userImage: 'assets/images/jo111.jpg',
                      userName: 'Therma Peters'
                    ),
                    userStory(
                      storyImage: 'assets/images/bigstock-Happy-Black-Woman-12039302.jpg',
                      userImage: 'assets/images/jo111.jpg',
                      userName: 'Therma Peters'
                    ),
                    userStory(
                      storyImage: 'assets/images/bigstock-Happy-Black-Woman-12039302.jpg',
                      userImage: 'assets/images/jo111.jpg',
                      userName: 'Therma Peters'
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                            child: Container(
                            color: Colors.white,
                            child: Container(
                  
                        constraints: BoxConstraints(
                          maxHeight: 400,
                          minHeight: 400,
                          maxWidth: MediaQuery.of(context).size.width,
                          minWidth: 360,
                        ),
                        child: Column(
                          children: <Widget>[
                            DefaultTabController(
                            length: 5,
                            initialIndex: 0,
                            child: Expanded(
                            child: Column(
                                children: [
                                Material(
                                  color: Colors.transparent,
                                  child: TabBar(
                                    indicator: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.blueAccent,
                                    ),
                                    //indicatorColor:Colors.red,
                                    labelColor: Colors.white,
                                    isScrollable: true,
                                    unselectedLabelColor:
                                        Colors.black,
                                    tabs: [
                                      Tab(
                                          child: Text(
                                        'Feature Arts',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15
                                        ),
                                      )),
                                      Tab(
                                          child: Text(
                                        'Craft',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15
                                        ),
                                      )),
                                      Tab(
                                          child: Text(
                                        'Fine Art',
                                        style: TextStyle( 
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15
                                     ),
                                      )),
                                      Tab(
                                          child: Text(
                                        'Photography',
                                        style: TextStyle( 
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15
                                     ),
                                      )),
                                      Tab(
                                          child: Text(
                                        'Home Painting',
                                        style: TextStyle( 
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15
                                     ),
                                      )),
                                    ])),
                                    SizedBox(height: 3, child: Container(decoration: BoxDecoration(color: Colors.white),),),
                                    SizedBox(height: 3, child: Container(decoration: BoxDecoration(color: Colors.grey[300]),),),
                            Expanded(
                              flex: 2,
                              child: TabBarView(
                                children: [
                                  Tabs(),
                                  Tabs(),
                                  Tabs(),
                                  Tabs(),
                                  Tabs(),
                                  
                              ],
                            ),
                           )
                         ],
                       ),
                      )
                     ),
                    ],
                  ),
                 ),
                ), 
               )
              ],
             ),
              
            ],
          ),
        ),
      ),
    );
  }
}




Widget userStory({storyImage, userImage, userName}){
  return AspectRatio(
    aspectRatio: 1.6/2,
    child: Container(
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(storyImage),
          fit: BoxFit.cover
        )
      ),
      child: Container(
        padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.1),
            ],
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                image: DecorationImage(
                  image: AssetImage(userImage),
                  fit: BoxFit.cover,
                )
              ),
            ),
            Text(userName,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    ),
  );
}