import 'package:flutter/material.dart';
import 'package:generalstoreyozznet/my_order.dart';

void main(){
  runApp(MaterialApp(
    title: 'Grocery Store',
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  final List<String> _listItem=[
    'images/papaya1.jpg',
        'images/papaya1.jpg',
        'images/papaya1.jpg',
        'images/papaya1.jpg'
  ];

  _showModalBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child:Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text('ITEM DETAILS',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),),
              ],
            ),
          ),
        );
      },
    );
  }
  final count=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text('General Store'),
//        backgroundColor: Colors.green,
//      ),
      backgroundColor: Colors.white,
      body:
              CustomScrollView(
//                    shrinkWrap: true,
//                    scrollDirection: Axis.vertical,
                    slivers: <Widget>[
                     SliverAppBar(
                       title: Text('General Store',style: TextStyle(fontWeight: FontWeight.bold),),
                       backgroundColor: Colors.green,
                       expandedHeight: 200,
                       pinned: true,
                       flexibleSpace: FlexibleSpaceBar(
//                          title: Text('General Store'),
                         background: Image(
                           image: AssetImage('images/grocery.jpg'),
                           fit: BoxFit.cover,
                         )
                       ),
                     ),
                      SliverFillRemaining(
                        child:  Card(
                                      child:Column(
                                      children: <Widget>[
                                      SizedBox(
                                      height: 10,
                                        ),
                               Center(
                                 child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width-50,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)),
                                       child: TextField(
                                         decoration: InputDecoration(
                                             border: InputBorder.none,
                                             prefixIcon: Icon(Icons.search,color: Colors.grey[600],),
                                             hintText:'Search items...',
                                             hintStyle: TextStyle(fontSize: 20,color: Colors.grey[600])
                                         ),
                                       ),
                                      ),
                               ),
                                SizedBox(
                                      height: 5,
                                ),
                                Container(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: <Widget>[
                                          Text('ITEMS',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.keyboard_arrow_down,color: Colors.black,size: 20,),
                                            onPressed: (){
                                           _showModalBottomSheet(context);
                                            },
                                          )
                                        ],
                                      ),
                                ),
                                      Expanded(
                                        child: GridView.count(
                                          scrollDirection: Axis.vertical,
                                          shrinkWrap: true,
                                            childAspectRatio: 0.75/1,
                                            crossAxisCount: 2,
                                          mainAxisSpacing: 25,
                                         crossAxisSpacing: 7.3,
                                          children: <Widget>[
                                            Container(
                                              height: 270,
                                              width: 200,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(30),
                                                color: Colors.orange[300]
                                              ),
                                              child: foodTemplate(image:'images/papaya1.jpg',name: 'Papaya'),
                                            ),
                                            Container(
                                              height: 270,
                                              width: 200,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(30),
                                                  color: Colors.green[200]
                                              ),
                                              child: foodTemplate(image:'images/cucumber.jpg',name: 'Cucumber'),
                                            ),
                                            Container(
                                              height: 270,
                                              width: 200,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(30),
                                                  color: Colors.yellow[200]
                                              ),
                                              child: foodTemplate(image:'images/culiflower.jpg',name: 'Cauliflower'),
                                            ),
                                            Container(
                                              height: 270,
                                              width: 200,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(30),
                                                  color: Colors.blue[200]
                                              ),
                                              child: foodTemplate(image:'images/carrot.jpg',name: 'Carrot'),
                                            ),
                                            Container(
                                              height: 270,
                                              width: 200,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(30),
                                                  color: Colors.teal[200]
                                              ),
                                              child: foodTemplate(image:'images/lays.jpg',name: 'Chips'),
                                            ),
                                            Container(
                                              height: 270,
                                              width: 200,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(30),
                                                  color: Colors.red[100]
                                              ),
                                              child: foodTemplate(image:'images/cookiw.jpg',name: 'Cookiw'),
                                            ),
                                          ],
                                  ),
                                      ),


                              ],
                              ),
                              )
                      ),
                    ],
                  ),

    );
  }

 Widget foodTemplate({image,name}) {
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                height:50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topRight: Radius.circular(30))
                ),
                child: IconButton(
                  icon: Icon(Icons.add,color: Colors.black,size: 20,),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Order()
                    ));
                  },
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover
                  )
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                Text(name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                Text('Gurugram Mandi',style: TextStyle(fontSize: 15,color: Colors.grey[700],fontWeight: FontWeight.w500),),
                Text('Haryana',style: TextStyle(fontSize: 15,color: Colors.grey[700],fontWeight: FontWeight.w500),)
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Text('50/-',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                      Text('Per Quantity',style: TextStyle(fontSize: 10,color: Colors.grey[600],fontWeight: FontWeight.w500),),
                    ]),
              ),
              SizedBox(
                width: 30,
              ),
              Text('View Prices',style: TextStyle(color: Colors.grey[800],fontSize: 15,fontWeight: FontWeight.w500),)
            ],
          )
        ],
      );

  }

}
