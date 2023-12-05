import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'fourthPage.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.black,
         title: Text("Jungle Safari",
         style: TextStyle(color: Colors.white,fontFamily: "fontStyle",fontSize: 16),
    ),

    ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/grid1.png",height: MediaQuery.of(context).size.height*.17,width: MediaQuery.of(context).size.width*.37),
                Column(
                  children: [
                    Text("Jungle Safari",style: TextStyle(fontFamily: "proximaNova",fontSize: 28,color: Colors.white),),
                    Text("Booking Available",style: TextStyle(fontFamily:"proximaNova",fontSize: 16,color: Colors.green ),),
                    SizedBox(height:MediaQuery.of(context).size.height*.05 ,),
                    MaterialButton(color: Colors.green,height: 40.0,minWidth:MediaQuery.of(context).size.height*.25,onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FourthPage()));
                    },
                      child: Text("Book Now",),
                    ),

                  ],
                ),

          ],
        ),
            SizedBox(height: 10,),
            Text("Package Rate",
              style: TextStyle(
                  color: Colors.white,fontSize: 16,fontFamily: "proximaNova"
              ),),
            Container(
              width: MediaQuery.of(context).size.width*2,height:MediaQuery.of(context).size.height*.07,
              color: Colors.blueGrey,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Week Days",style: TextStyle(fontFamily: "proximaNova",fontSize: 16),),
                  Text("Week Days",style: TextStyle(fontFamily: "proximaNova",fontSize: 16),),
                  Text("Week Days",style: TextStyle(fontFamily: "proximaNova",fontSize: 16),),
                  
                ],
              ),

            ),
          ],
        ),
      ),

    );
  }
}
