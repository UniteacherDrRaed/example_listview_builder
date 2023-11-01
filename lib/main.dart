import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
class MainPage extends StatelessWidget {
   MainPage({super.key});
final List<Color> listOfColors =[
  Colors.brown,
  Colors.green,
  Colors.red,
  Colors.blue,
  Colors.orange,
  Colors.yellow,
  Colors.lime,
  Colors.pink,
  Colors.cyan,
  Colors.lightBlueAccent,
  Colors.brown.shade700,
  Colors.green.shade700,
  Colors.red.shade700,
  Colors.blue.shade700,
  Colors.orange.shade700,
  Colors.yellow.shade700,
  Colors.lime.shade700,
  Colors.pink.shade700,
  Colors.cyan.shade700,
  Colors.lightBlueAccent.shade700,
  Colors.brown.shade500,
  Colors.green.shade500,
  Colors.red.shade500,
  Colors.blue.shade500,
  Colors.orange.shade500,
  Colors.yellow.shade500,
  Colors.lime.shade500,
  Colors.pink.shade500,
  Colors.cyan.shade500,

] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          width: 350,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: listOfColors,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(6,7)
              )
            ]
          ),
          child:  const Center(
            child: Text("ListView.builder example",
            style: TextStyle(color:Colors.white,
                fontSize: 24,fontWeight:
                FontWeight.bold),),
          ),
        ),
        centerTitle: true,
        toolbarHeight:75,

      ),
      body: ListView.builder(
              itemCount: listOfColors.length,
              itemBuilder: (BuildContext context,int index){
                return ListTile(
                  onTap: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(duration:const Duration(seconds: 1),
                            backgroundColor: listOfColors[index],
                            content: Text("product $index with price ${index*100+500}",
                              style: const TextStyle(color:Colors.white,
                                  fontSize: 24),
                            )));
                  },
                  tileColor: listOfColors[index],
                  title: Text("Product $index"),
                  leading: const Icon(Icons.laptop,color: Colors.white,),
                  trailing: Text("price ${index*100+500}"),
                  subtitle: const Text("specification"),
                  textColor: Colors.white,
                  iconColor: Colors.white,

                );
              })


    );
  }
}
