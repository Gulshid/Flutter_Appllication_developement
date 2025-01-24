import 'package:flutter/material.dart';

class Practise extends StatefulWidget {
  const Practise({super.key});

  @override
  State<Practise> createState() => _PractiseState();
}

class _PractiseState extends State<Practise> {
  List a = ['a', 'b', 'c', 'd'];
  List colors = [Colors.blue, Colors.green, Colors.yellow, Colors.purple];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: /* Column(children:
     [

      Expanded(
        flex: 1,
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 240, 149, 12),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),

      Expanded(
        flex: 4,
        child: Container(
          
         decoration: BoxDecoration(
           color: Colors.teal,
           borderRadius: BorderRadius.circular(25)
         ),
        ),
      ),

      Expanded(
        flex: 3,
        child: Container(
          
         decoration: BoxDecoration(
           color: const Color.fromARGB(255, 4, 175, 10),
           borderRadius: BorderRadius.circular(25)
         ),
        ),
      ),

       Expanded(
        flex: 2,
        child: Container(
          
         decoration: BoxDecoration(
           color: Colors.grey,
           borderRadius: BorderRadius.circular(25)
         ),
        ),
      ),
    ])

    ListView(
      children: [
        Container(
          height: 300,
          width: 600,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(Icons.heart_broken),
        ),


        Container(
          height: 300,
          width: 600,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 11, 66, 195),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(Icons.heart_broken),
        ),


        Container(
          height: 300,
          width: 600,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 62, 179, 7),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(Icons.heart_broken),
        ),





        Container(
          height: 300,
          width: 600,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 13, 196, 184),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(Icons.heart_broken),
        ),


        Container(
          height: 300,
          width: 600,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 141, 153, 11),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(Icons.heart_broken),
        ),


        Container(
          height: 300,
          width: 600,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 170, 1, 1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(Icons.heart_broken),
        ),
      ],
    )
   
   */
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: colors.length,
            //     itemBuilder: (context, index) {
            //         return Padding(
            //           padding: const EdgeInsets.all(3.0),
            //           child: Container(
            //             height: 300,
            //             width: 600,
            //             decoration: BoxDecoration(
            //   color: colors[index],
            //   borderRadius: BorderRadius.circular(15),
            //             ),
            //             child: Column(
            //   children: [
            //       Text(a[index]),
            //   ],
            //             ),
            //           ),
            //         );
            //       }),
            // )

            GridView.builder(
                itemCount: colors.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return Container(

                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color:colors[index],
                      borderRadius: BorderRadius.circular(12),
                    ),
                  );
                }));
  }
}
