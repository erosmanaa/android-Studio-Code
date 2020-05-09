import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<String>tags=['Phyton','Javascript','Laravel','Y112' 'PHP','AI','Machine Learning'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff020d1c),
        appBar: AppBar(
          title: Text('profile'),
          backgroundColor: Color(0xff020d1c),
          elevation: 0,
          actions: <Widget>[
          Padding(padding: const EdgeInsets.only(right: 16.0),
          child: Icon(Icons.verified_user,color: Colors.blue,),
          ),  
         ],
       ),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
           //bagian user
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(padding: const EdgeInsets.only(left: 20.0, top: 5.0),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("images/fotoku.jpg",),
              ),
              ),
              Padding(padding: const EdgeInsets.only(left: 38.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Nana Rosmana', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.blueAccent)),
                  Padding(padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.location_on,color: Colors.blueGrey,size: 17,),
                      Padding(padding: const EdgeInsets.only(left: 4.0),
                      child: Text('indonesia',
                      style: TextStyle(color: Colors.white38,fontSize: 10,letterSpacing: 3,wordSpacing: 2),
                      ),)
                    ],
                  ),
                  )
                ],
              ),
              )
            ],
          ),

          SizedBox(height: 8.0),
          //sosial media
          Padding(padding: const EdgeInsets.fromLTRB(38, 10, 30, 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('666', style: TextStyle(fontSize: 25, color: Colors.white),),
                  Text('Followers', style: TextStyle(color: Colors.white54))
                ],
              ),
              Column(
                children: <Widget>[
                  Text('0', style: TextStyle(fontSize: 25, color: Colors.white),),
                  Text('Followings', style: TextStyle(color: Colors.white54, fontSize: 12.0),),
                ],
              ),
              Container(
                color: Colors.white10,
                width: 0.6,
                height: 22.0,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
                child: Text('follow', style: TextStyle(fontSize: 14, color: Colors.white70),),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  gradient: LinearGradient(colors: [Colors.blueAccent, Colors.black12],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  )
                ),
              )
            ],
          ),
          ),
          //bagian tags
        Container(
          margin: EdgeInsets.only(top:20),
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: tags.length,
            itemBuilder: (BuildContext contect, int index){
              return Container(
                margin: EdgeInsets.only(right:5),
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(32),
                  border:Border.all(color: Colors.white60)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(tags[index],
                  style: TextStyle(color: Colors.white),)
                  ),
              );
            } 
            ),
        ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(top: 2),
                child: Container(height: 50,
                decoration: BoxDecoration(color: Colors.blueAccent,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                ),
                child: Row(
                  children: <Widget>[
                    Padding(padding: const EdgeInsets.only(left: 10),
                   child: Text("AutoBiografi", style: TextStyle(color: Colors.white, fontFamily: '',
                   fontWeight: FontWeight.w800, fontSize:15),),
                   ),
                  ],
                ),
              ),
            ),
            Container(
              height: 140,
              width: 800,
              decoration: BoxDecoration(
                color: Colors.white38,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(padding: const EdgeInsets.only(top: 20, left: 10.0, right: 50.0),
                  child: Text('Nama : Nana Rosmana', style: TextStyle(
                    color: Colors.white, fontFamily: '', fontSize: 16),),
                  ),

                  Padding(padding: const EdgeInsets.only(left: 10.0, right: 50.0),
                  child: Text('Data Of Birth : 06 - 07 - 1994', style: TextStyle(
                    color: Colors.white, fontFamily: '', fontSize: 16),),
                    ),

                    Padding(padding: const EdgeInsets.only(left: 10.0, right: 50.0),
                  child: Text('E-mail : nanaskuy@gmail.com', style: TextStyle(
                    color: Colors.white, fontFamily: '', fontSize: 16),),
                    ),

                    Padding(padding: const EdgeInsets.only(left: 10.0, right: 50.0),
                  child: Text('Addres : jayamukti RT/RW 01/02', style: TextStyle(
                    color: Colors.white, fontFamily: '', fontSize: 16),),
                    ),

                ],
              ),
            )
              ],
            ),
          )
          ],
       ),
     ),
   );
  } 
}