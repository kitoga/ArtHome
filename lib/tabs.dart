import 'package:flutter/material.dart';


import './dummy_data.dart';

class Tabs extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.grey[300],
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(10, 15, 10, 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: dummyFeed.map((tx) {
                      return  Container( 
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
                                      image: DecorationImage(
                                        image: AssetImage(tx.pImg),
                                        fit: BoxFit.cover,
                                      ),
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 3
                                      )
                                    ),
                                  ),
                                  SizedBox(width: 8,),
                                  Text(
                                    tx.pName,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w800
                                    )
                                  )
                                ],
                              ),
                              Text(tx.pCaption,
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                height: MediaQuery.of(context).size.height/2 - 80,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(tx.feedImg),
                                    fit: BoxFit.cover,
                                  )
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
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/heart.png'),
                                              fit: BoxFit.cover,
                                            )
                                          ),
                                        ),
                                        SizedBox(width: 3,),
                                        Text(tx.loveNum)
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 40,),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text(tx.comments),
                                        SizedBox(width: 20,),
                                        Text(tx.shares),
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
                                   padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                   shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(50),
                                     side: BorderSide(
                                       color: Colors.black,
                                     )
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
                                   padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                   shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(50),
                                     side: BorderSide(
                                       color: Colors.black,
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
                                   padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                   shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(50),
                                     side: BorderSide(
                                       color: Colors.black,
                                       
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
                              ),
                              //SizedBox(height: 5,)
                            ],
                          ),
                        );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(height: 40,)
            ],
          ),
        ),
    );
  }
}