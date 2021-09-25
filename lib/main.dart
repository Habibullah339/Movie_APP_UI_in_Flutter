import 'package:flutter/material.dart';

void main() => runApp(MaterialApp

  (
  debugShowCheckedModeBanner: false,
  home: MoviApp(),

    ));
class MoviApp extends StatefulWidget {
  const MoviApp({Key? key}) : super(key: key);

  @override
  _MoviAppState createState() => _MoviAppState();
}

class _MoviAppState extends State<MoviApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C262F),
      appBar: AppBar(
        backgroundColor: Color(0xFF1B2C3B),
        elevation: 0.0,
        title: Text("Niche Movies"),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_vert, color: Colors.white,))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 12.0),
        child: ListView(
          children: [
            Container(
              height: 40.0,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text("All", style: TextStyle(
                        color:Colors.white,
                      ),),
                      backgroundColor:Colors.orange,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text("Action", style: TextStyle(
                        color:Colors.white,
                      ),),
                      backgroundColor:Colors.blueGrey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text("Adventure", style: TextStyle(
                        color:Colors.white,
                      ),),
                      backgroundColor:Colors.blueGrey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text("Comedy", style: TextStyle(
                        color:Colors.white,
                      ),),
                      backgroundColor:Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12,),
            Row(
              children: [
                Padding(
                  padding:EdgeInsets.only(left: 12),
                  child: Text(
                    "Top Trending",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      fontSize: 26,
                    ),
                  ),
                ),


              ],
            ),
            SizedBox(height: 12,),
            Container(
              width: double.infinity,
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:12.0),
                    child: MoviCard("The Outside War", "8.5/10","assets/1.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:12.0),
                    child: MoviCard("Annihilation", "8.3/10","assets/2.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:12.0),
                    child: MoviCard("Man of Steel", "8.3/10","assets/4.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:12.0),
                    child: MoviCard("Joker", "8.3/10","assets/3.jpg"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12,),
            Row(
              children: [
                Padding(
                  padding:EdgeInsets.only(left: 12),
                  child: Text(
                    "Recommended Movies",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      fontSize: 26,
                    ),
                  ),
                ),


              ],
            ),
            SizedBox(height: 12,),
            Container(
              width: double.infinity,
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:12.0),
                    child: MoviCard("Joker", "8.5/10","assets/3.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:12.0),
                    child: MoviCard("Man of Steel", "8.3/10","assets/4.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:12.0),
                    child: MoviCard("Annihilation", "8.3/10","assets/2.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:12.0),
                    child: MoviCard("Outside War", "8.3/10","assets/1.jpg"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }

  Widget MoviCard(String Title, String Rate, String imgPath ){
    return InkWell(
      onTap: (){},
      child: Column(
        children: [
          Card(
            elevation: 0.0,
            child:Image.asset(imgPath,fit: BoxFit.fill,width: 130.0,height: 160.0,),
          ),
          SizedBox(height: 5.0,),
          Text(
            Title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
          SizedBox(height: 5,),
          Text(
            Rate,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,            ),
          ),
          
        ],

      ),
    );
  }



}


