import 'package:flutter/material.dart';
import 'package:travelling/screen3.dart';

import 'model1.dart';
class  ScreenTwo extends StatelessWidget {
  const  ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage2() ,
    );
  }
}
class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  void selectScreen( BuildContext ctx){
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_){
      return Screen3();
    }));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, // set the color you want here
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: const [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage("assets/images/avatar.png"),
            ),
          )
        ],
      ),
      body: Container(
        padding:const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Container(
              alignment: Alignment.center,
              child: Column(
                children:const [
                  Text("Where do you", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  Text("want to go?", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),

                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: TextField(

                      style: TextStyle(color: Colors.black,),
                      decoration: InputDecoration(  prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black26,
                      ),
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.black26),
                          fillColor: Color.fromARGB(210, 203, 198, 198) ,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 0, color: Color.fromARGB(
                                  136, 203, 198, 198)),
                              borderRadius: BorderRadius.all(Radius.circular(30))
                          )
                      ),


                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
              const  Text("Recommended", style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                IconButton(onPressed: (){}, icon:const Icon(Icons.more_horiz, color: Colors.blueGrey,))
              ],

            ),
             Container(
               height: 250,
               margin: const EdgeInsetsDirectional.only(start: 10.0, top: 10.0),
                child: ListView.builder(scrollDirection: Axis.horizontal,
                    itemCount: list1.length,
                itemBuilder: (ctx , index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(

                      children: [Container(
                        height: 250,
                        width: 250,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(136, 135, 135, 135),
                          borderRadius:  BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft:  Radius.circular(10),

                          ),
                        ),

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network(
                              list1[index].img,
                              fit: BoxFit.cover,
                            ),
                          ),

                      ),
                        Positioned(
                               left: 9,
                          bottom: 7,
                          child: Column(
                            children: [
                              TextButton(onPressed: (){
                               if (list1[index].town== "cairo"){
                                 selectScreen(context);
                               }
                              }
                              , child: Text(list1[index].town, style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),),

                              Text(list1[index].country, style:const TextStyle(fontSize: 12, color: Colors.white),)
                            ],
                          ),
                        )

                      ],
                    ),
                  );
                }),
             ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                const  Text("Trending this month", style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                IconButton(onPressed: (){}, icon:const Icon(Icons.more_horiz, color: Colors.blueGrey,))
              ],

            ),
           Container(
             height: 50,
               margin: const EdgeInsetsDirectional.only(start: 10.0, top: 10.0),

               child: ListView.builder(scrollDirection: Axis.horizontal,
                itemCount: list2.length,
                itemBuilder: (ctx , index){
              return Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Container( width: 150,

                  decoration: const BoxDecoration(
                      color: Color.fromARGB(210, 203, 198, 198),
                      borderRadius: BorderRadius.all(Radius.elliptical(10, 10))
                  ),
                  child: Row(
                    children: [
                      Container( width: 50, height:45
                        ,
                        decoration: const BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.all(Radius.elliptical(10, 10))
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(
                           list2[index].img,
                            fit: BoxFit.cover,
                          ),
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(list2[index].town, style: const TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                            Text(list2[index].country, style:const TextStyle(fontSize: 12, color: Colors.black26),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );

                } ))
          ],
        ),
      ),

      drawer: const Drawer(

      ),
    );
  }
}