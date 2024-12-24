import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI_task1.dart';

class task4 extends StatefulWidget {
  const task4({super.key});

  @override
  State<task4> createState() => _task4State();
}

class _task4State extends State<task4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu_outlined),
        actions: [
          Icon(
            Icons.search_rounded,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.shopping_cart_sharp,
            color: Colors.black,
          ),
          Padding(padding: EdgeInsets.only(left: 35))
        ],
      ),

      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 20,),
          Text('#Featured',style: TextStyle(
            fontSize: 15,
            color: Colors.blue,
            fontWeight: FontWeight.normal,
          ),),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Products',style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),),
                Row(
                  children: [
                       SizedBox(width: 30,),
                      Icon(Icons.arrow_back_ios_rounded),
                      Icon(Icons.arrow_forward_ios_rounded),
                  ],
                )
           
            ],
          ),


          SizedBox(height: 20,),
          Container(
            height: 200,
            width:double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              
            ),

             child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('#New arrivals',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                        SizedBox(height: 10),
                        Text('Classis edition',
                            style:
                                TextStyle(color: Colors.white, fontSize: 22)),
                        SizedBox(height: 10),
                        Text(
                            'Classis edition Classis edition \nClassis edition Classis edition',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                        SizedBox(height: 15),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              'BUY NOW',
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/img_1.jpg',height: 200,width: 200, )),
                ],
              ),
            ),


             SizedBox(
              height: 10,
            ),
            Text(
              '#Trending',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            Text(
              '#products',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 220,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 34,
                                width: 34,
                                decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/img_2.jpg',
                                height: 100,
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                    ),
                    Text(
                      '#strap',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    Text(
                      'Navy shoes',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 220,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 34,
                                width: 34,
                                decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/img_2.jpg',
                                height: 100,
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                    ),
                    Text(
                      '#strap',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    Text(
                      'Navy shoes',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),

                     GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Task1(),
                    ));
              },
              child: Container(
                height: 40,
                width: 100,
                child: Center(child: Text('button')),
                decoration: BoxDecoration(color: Colors.amber),
              ),
            )
                  ],
                )
              ],
            )
            
          

          

        ],),
      ),
    );
  }
}