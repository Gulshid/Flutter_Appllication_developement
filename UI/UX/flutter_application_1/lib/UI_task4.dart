import 'package:flutter/material.dart';

class task4 extends StatefulWidget {
  const task4({super.key});

  @override
  State<task4> createState() => _task4State();
}

class _task4State extends State<task4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Appbar of UI
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Icon(Icons.menu_outlined),
            actions: [Icon(Icons.search_rounded,color: Colors.black,),
            SizedBox(width: 10,),
            Icon(Icons.shopping_cart_sharp,color: Colors.black,),
            Padding(padding: EdgeInsets.only(left: 35))
            
            ],

        ),

backgroundColor: Colors.white,
        //body of the UI
        body:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                SizedBox(height: 20,),
                //first Text
                Text('#Featured',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.blue,
                ),),
                //second Text
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Products',style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                    ),),

                      Row(
                    
                    children: [
                        Icon(Icons.arrow_back_ios),
                        Icon(Icons.arrow_forward_ios),
                    ],
                ),
                  ],
                ),

        
                    
 SizedBox(height: 10,), 
              
                //1st Container

                Container(
                    height: 200,
                    width: double.infinity,
                   decoration: BoxDecoration( color: const Color.fromARGB(255, 26, 133, 220),
                   borderRadius: BorderRadius.circular(15),
                   
                   ),
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                     child: Column(
                        
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                          SizedBox(height: 25,),
                          Text('#New Arrivals',style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: const Color.fromARGB(255, 22, 210, 176)
                          ),),

                          SizedBox(height: 10,),
                         Text('Classic Edition',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 22, 210, 176)
                          ),),
                         

                          SizedBox(height: 8,),
                          Text('loreum ipsum is simply dummy\n text of the printing and\n typesetting industry.',style: TextStyle(
                            fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 22, 210, 176)
                          ),),

                          SizedBox(height: 10,),

                          Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(color: const Color.fromARGB(255, 157, 195, 226),
                            borderRadius: BorderRadius.circular(8)),
                            
                            child: TextButton( child:
                            Text('Buy Now',style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            
                            ),),
                            onPressed: (){
                              print('The Button is print');
                            },
                            ),
                          ),
                      ],
                     ),
                   ),
                ),
                SizedBox(height: 10,),
                Text('#Trending',style: TextStyle(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 5, 105, 186),
                    fontWeight: FontWeight.normal,

                ),),

                SizedBox(height: 3,),
                Text('Products',style: TextStyle(
                    fontSize: 25,
                    color: const Color.fromARGB(255, 5, 105, 186),
                    fontWeight: FontWeight.bold,

                ),),
                
              ],
          ),
        ) ,



    );
  }
}