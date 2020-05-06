import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
                child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                     Container(
                     child: Padding(
                      padding: EdgeInsets.fromLTRB(15, 15, 5, 15),
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                   Container(
                                     height: 80,
                                     width: 80,
                                     decoration: BoxDecoration(
                                     //color: Colors.blue,
                                     borderRadius: BorderRadius.circular(40),
                                     image:  DecorationImage(
                                     image: AssetImage('assets/images/2.jpg'),
                                     fit: BoxFit.cover
                                  ),
                                ),
                              ),SizedBox(height: 5,),
                            Text('Desmond',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                               ),
                            ),
                            Text('(1)',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.amber
                               ),
                            )
                          ],
                        ),
                        SizedBox(width: 30,),

                      Column(
                        children: <Widget>[
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              //color: Colors.blue,
                              borderRadius: BorderRadius.circular(40),
                              image:  DecorationImage(
                                image: AssetImage('assets/images/Screenshot.png'),
                                fit: BoxFit.cover
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text('Chidex K. Drew',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Text('(2)',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.amber
                               ),
                            )
                        ],
                      ),
                        SizedBox(width: 30,),

                      Column(
                        children: <Widget>[
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              //color: Colors.blue,
                              borderRadius: BorderRadius.circular(40),
                              image:  DecorationImage(
                                image: AssetImage('assets/images/jo111.jpg'),
                                fit: BoxFit.cover
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text('Munchee',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                           ),
                           ),
                           Text('(3)',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.amber
                               ),
                            )
                          ],
                         ),
                       ],
                    )
                  ),
               ),
             ],
          ),
        ),
    );
  }
}