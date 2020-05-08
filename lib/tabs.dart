import 'package:flutter/material.dart';


import './dummy_data.dart';

class Tabs extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.grey[300],
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: dummyFeed.map((tx){
                return Container(
              margin: EdgeInsets.fromLTRB(18, 10, 18, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                      Container( 
                        margin: EdgeInsets.fromLTRB(8, 10, 8, 10),      /// add some contriants here
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.green,
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  tx.pName,
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w800,
                                  )
                                ),
                                
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 5),
                              child: Text(tx.pCaption,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: MediaQuery.of(context).size.height/2 - 80,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          //color: Colors.red,
                                          image: DecorationImage(
                                            image: AssetImage('assets/images/heart.png'),
                                            fit: BoxFit.cover
                                          )
                                        ),
                                      ),
                                      SizedBox(width: 3,),
                                      Text(tx.loveNum,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 40,),
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        tx.comments,
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Montserrat'
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Text(
                                        tx.shares,
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Montserrat'
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                               FlatButton(
                                 padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(50),
                                   side: BorderSide(
                                     color: Colors.black,
                                     width: 3,
                                   ),
                                 ),
                                 onPressed: (){},
                                 child: Row(
                                   children: <Widget>[
                                     Icon(Icons.account_box),
                                     Text('love')
                                   ],
                                 ),
                               ),
                               FlatButton(
                                 padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(50),
                                   side: BorderSide(
                                     color: Colors.black,
                                     width: 3
                                   )
                                 ),
                                 onPressed: (){},
                                 child: Row(
                                   children: <Widget>[
                                     Icon(Icons.comment),
                                     Text('Comment')
                                   ],
                                 ),
                               ),
                               FlatButton(
                                 padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(50),
                                   side: BorderSide(
                                     color: Colors.black,
                                     width: 3
                                   )
                                 ),
                                 onPressed: (){},
                                 child: Row(
                                   children: <Widget>[
                                     Icon(Icons.share),
                                     Text('Share')
                                   ],
                                 ),
                               )
                              ],
                            )
                          ],
                        ),
                      )
                  ],
                ),
              )
            );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}