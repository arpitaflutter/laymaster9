import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  List items = [
    "Item 10",
    "Item 11",
    "Item 12",
    "Item 13",
    "Item 14",
    "Item 15",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: false,
          leading: Icon(Icons.arrow_back,color: Colors.white),
          title: Text("My cart",style: TextStyle(color: Colors.white)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              theme(items[0]),
              theme(items[1]),
              theme(items[2]),
              theme(items[3]),
              theme(items[4]),
              theme(items[5]),
            ],
          ),
        ),
      ),
    );
  }

  Widget theme(String items)
  {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 179,width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: double.infinity,width: 170,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
              ),
              child: Image.asset("assets/images/images.png",fit: BoxFit.fill),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 15,bottom: 20,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("${items}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                      SizedBox(width: 20,),
                      Icon(Icons.delete,color: Colors.red,)
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text("Price: ",style: TextStyle(color: Colors.black,fontSize: 17)),
                      SizedBox(width: 10,),
                      Text("\$200",style: TextStyle(color: Colors.black,fontSize: 20)),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Sub Total: ",style: TextStyle(color: Colors.black,fontSize: 17)),
                      SizedBox(width: 10,),
                      Text("\$400",style: TextStyle(color: Colors.amber,fontSize: 20)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Ships Free",style: TextStyle(color: Colors.amber.shade700,fontSize: 16),),
                      SizedBox(width: 80,),
                      Text("-",style: TextStyle(fontSize: 35,color: Colors.red,)),
                      SizedBox(width: 20,),
                      Container(
                        height: 30,width: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 0.5,
                                spreadRadius: 1
                            )
                          ],
                        ),
                        child: Center(child: Text("2",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                      ),
                      SizedBox(width: 20,),
                      Text("+",style: TextStyle(fontSize: 25,color: Colors.green,)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}