import 'package:flutter/material.dart';

import 'cairo.dart';
import 'model1.dart';
class  Screen3 extends StatelessWidget {
  const  Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage3() ,
    );
  }
}
class HomePage3 extends StatefulWidget {
  const HomePage3({Key? key}) : super(key: key);

  @override
  State<HomePage3> createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  var unfav = Icons.favorite_border;
  var fav = Icons.favorite;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [

            SizedBox(height: 350,
            child: Stack
              (
              alignment: Alignment.topRight,
              children: [
                Container(
                  height: 350, width: double.maxFinite,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      "assets/images/cairo2.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(onPressed: (){
                    setState(() {
                      unfav = unfav==Icons.favorite_border? Icons.favorite: Icons.favorite_border;
                      fav = fav==Icons.favorite? Icons.favorite_border:Icons.favorite;

                    });
                  }, icon: Icon(unfav, size: 36,color: Colors.white,),

                  ),
                )
              ],
            ),),
          const  SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("About", style: TextStyle(fontSize:20,fontWeight: FontWeight.bold)),
            ),

           const Padding(
             padding: EdgeInsets.all(7.0),
             child: Text(
                  " Cairo The City of a Thousand Minarets” is the capital of Egypt and with a total population in excess of 16 million people, one of the largest cities in both Africa and the Middle East.",style: TextStyle(fontSize: 20, color: Colors.blueGrey,)),
           ),

            const Padding(
              padding: EdgeInsets.all(7.0),
              child: Text("Gallery", style: TextStyle(fontSize:20,fontWeight: FontWeight.bold)),
            ),
            Container(
              height: 50,
              margin: const EdgeInsetsDirectional.only(start: 10.0, top: 10.0),
              child: ListView.builder(scrollDirection: Axis.horizontal,
                  itemCount: cairo.length
              ,itemBuilder:  (ctx , index){
                   return Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     child: SizedBox( width: 70,
                       child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(
                            cairo[index].img,
                            fit: BoxFit.cover,
                          ),
                        ),
                     ),
                   );
                  }),
            ),
            SizedBox(height: 40,),
            SizedBox( height: 50,width: double.maxFinite,
                child: ElevatedButton(onPressed: (){},
                  style:const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Color.fromARGB(190, 193, 196, 84)),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                    elevation: MaterialStatePropertyAll(3),

                  ), child:const Text("Book now"), )
            )
            
          ],
        ),
      ),
    );
  }
}