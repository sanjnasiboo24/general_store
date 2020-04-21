import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10,),
            Container(
              child: Center(
                child: Text('My Order',style: TextStyle(fontSize: 35,color: Colors.black),),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                Container(
                 padding: EdgeInsets.all(10),
                  height: 550,
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                     item(name: 'Lentil Burger',addiItem: 'BBQ sauce',price:'5.50' ),
                      SizedBox(
                        height: 10,
                      ),
                      item(name:'French Fries',price: '3.00',addiItem: ''),
                      SizedBox(
                        height: 10,
                      ),
                      item(name:'French Sauce',addiItem: 'Vegan Mayo',price: '0.50'),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 350,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border(top: BorderSide(color: Colors.black),bottom: BorderSide(color: Colors.black))
                        ),
                         child: Column(
                           children: <Widget>[
                             SizedBox(
                               height: 10,
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: <Widget>[
                                 Container(
                                   padding:EdgeInsets.only(left: 10),
                                     child: Text('Subtotal',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),)),
                                 Container(
                                   padding: EdgeInsets.only(right: 10),
                                     child: Text('9.00/-',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),)),
                               ],
                             ),
                             SizedBox(
                               height: 20,
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: <Widget>[
                                 Container(
                                     padding:EdgeInsets.only(left: 10),
                                     child: Text('Delivery Fee',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),)),
                                 Container(
                                     padding: EdgeInsets.only(right: 10),
                                     child: Text('2.00/-',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),)),
                               ],
                             ),
                           ],
                         ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                              padding:EdgeInsets.only(left: 10),
                              child: Text('Sum',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)),
                          Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Text('11.00/-',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.add,color: Colors.blue,size: 20,),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text('Add a note to order',style: TextStyle(color: Colors.blue,fontSize: 20),)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Drop Location : Hostel Block 6',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding:EdgeInsets.only(left: 10),
                                child: Text('Pay on Delivery',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),)),
                            SizedBox(
                              width: 3,
                            ),
                            IconButton(
                              icon: Icon(Icons.keyboard_arrow_down,color: Colors.black,size: 20,),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 130,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                              ),
                              child: Center(
                                child: Text('Order',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                              ),
                            )

                          ],
                        ),
                      )
                    ],

                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget item({name,addiItem,price}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10),
                child: Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),)),
            SizedBox(
              height: 5,
            ),
            Text(addiItem,style: TextStyle(fontSize: 15,color: Colors.grey[400],fontWeight: FontWeight.w500),)
          ],
        ),
        SizedBox(
          width: 5,
        ),
       IconButton(
         icon: Icon(Icons.add_circle_outline,color: Colors.black,size: 15,),
       ),
        SizedBox(
          width: 2,
        ),
        Text('1',style: TextStyle(fontSize: 25,color: Colors.black),),
        SizedBox(
          width: 2,
        ),
        IconButton(
          icon: Icon(Icons.remove_circle_outline,color: Colors.black,size: 15,),
        ),
        SizedBox(
          width: 5,
        ),
        Text(price,style: TextStyle(color: Colors.grey[400],fontSize: 25,fontWeight: FontWeight.bold),)
      ],
    );
  }
}
