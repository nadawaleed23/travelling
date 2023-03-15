

import 'package:flutter/material.dart';
import 'package:travelling/screen2.dart';
class  MyApp extends StatelessWidget {
  const  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage() ,
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void selectScreen( BuildContext ctx){
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_){
      return ScreenTwo();
    }));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [

                 Container(
                   height: 200,
                   width: 150,
                   child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "assets/images/sea.jpg",
                      fit: BoxFit.cover,
                    ),
                ),
                 ),

                Transform.translate(
                  offset: Offset(70,100),

                    child: Container(
                      height: 200,
                      width: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          "assets/images/cairo.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                ),



              ],
            ),
            const SizedBox(height: 180,),
          const  Text(" Travel with ease",style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
            Container(
              alignment: Alignment.center,
              padding:const EdgeInsets.all(15),
              child: const Text("Travel Agents meet with clients to discuss and learn about their travel requirements. They are responsible for advising clients about suitable travel options in accordance with their needs, wants and capabilities.",
                            style: TextStyle(fontSize: 20, color: Colors.blueGrey, ),),
            ),
            const SizedBox(height: 20,),
            SizedBox( height: 50,width: 200,
                child: ElevatedButton(onPressed: (){
                  selectScreen(context);
                },
               style:const ButtonStyle(
                 backgroundColor: MaterialStatePropertyAll(Colors.teal),
                 foregroundColor: MaterialStatePropertyAll(Colors.white),
                 elevation: MaterialStatePropertyAll(3),

               ), child:const Text("Get started"), )
            )

          ],
        ),
      ),
    );
  }
}

