import 'package:flutter/material.dart';

void main() {
  runApp(Row_Column());
}

class Row_Column extends StatelessWidget {
  const Row_Column({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Rows and Column',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true,
        ),
        home: Row_colum());
  }
}

class Row_colum extends StatelessWidget {
  const Row_colum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:Center(child: Text('***Row and Column***',style: TextStyle(
          fontSize: 20,
          color: const Color.fromARGB(255, 229, 97, 3),
        ),),)
      
      ),

      body:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('***Row Implementation***',style: TextStyle(
            fontWeight: FontWeight.bold,

            
          ),),
        SizedBox(height: 20,),
          Text('***Row Implementation***',style: TextStyle(
            fontWeight: FontWeight.bold,
          )),          
          Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Row '),
          ],
        )
        
        ],

      
        
      
      ),

      
      
      
    );
  }
}

