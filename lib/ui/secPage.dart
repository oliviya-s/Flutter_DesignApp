
import 'package:designapp/ui/profilePage.dart';
import 'package:flutter/material.dart';

import 'thirdPage.dart';

class SecPage extends StatefulWidget {
  const SecPage({Key? key}) : super(key: key);

  @override
  _SecPageState createState() => _SecPageState();
}

class _SecPageState extends State<SecPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          actions: [
            Icon(Icons.lens_outlined),

          ],
          backgroundColor: Colors.black,
          title: Text("Home",
          style: TextStyle(color: Colors.white,fontFamily: "fontStyle",fontSize: 16),
          ),
          bottom: TabBar(
            labelStyle: TextStyle(fontFamily: "proximaNova",fontSize: 17),
            tabs: [
              Tab(text: "Programs"),
              Tab(text: "Bookings",),
            ],
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.black,
          child:
          ListView(
              children: [
                SizedBox(height: 100,),
                ListTile(
                 tileColor: Colors.white,
                 leading:
                 MaterialButton(color: Colors.green,minWidth:MediaQuery.of(context).size.height*.36,onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
        },
                  child: Text("Profile",),
        ),
      ),
             SizedBox(height: 10,),
        ]),),
        body: TabBarView(
          children:[
            SingleChildScrollView(
              child: Column(
              children:[
                Container(
                width: 727,height: 46,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.white,fontFamily: "fontS",fontSize: 10),
                    hintText: "Search Program",
                    focusedBorder: OutlineInputBorder(
                      borderSide : const BorderSide(color: Color(0xff2C2C2C) ,width:1.0),
                      borderRadius : const BorderRadius.all(Radius.circular(5.0)),
                      gapPadding :4.0,
                    ),
                    enabledBorder:  OutlineInputBorder(
                      borderSide : const BorderSide(color: Color(0xff2C2C2C) ,width:1.0),
                      borderRadius : const BorderRadius.all(Radius.circular(5.0)),
                      gapPadding :4.0,
                    ),
                    //hintText: 'USERNAME',
                    //labelText: 'USERNAME',
                  ),
                ),
              ),
                GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdPage()));
                        },
                        child: Column(
                          children: [
                            Expanded(

                              child: Container(

                                child: Card(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/grid1.png"),
                                        fit:BoxFit.cover,
                                      ),
                                    ),
                                  )
                                  ,
                                ),
                              ),
                            ),
                            Text("JUNGLE SAFARI",style: TextStyle(color: Colors.white,fontFamily: "proximaNova"
                            ),),
                          ],

                        ),
                      );
                    }

                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children:[ Text("Previous Bookings",style: TextStyle(color: Colors.white,fontFamily: "proximaNova",fontSize: 17
                  ),),
                    Spacer(flex: 2),
                    Text("View All ",style: TextStyle(color: Colors.white,fontFamily: "proximaNova",fontSize: 14,
                    ),),
                    Icon(Icons.arrow_right,color: Colors.white,),
               ], ),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,

                    itemBuilder: (BuildContext context,int index){

                      return ListTile(

                          leading: Image.asset("assets/list1.png"),



                          title:Text("Combo Package (Safari, Trekking, Rafting etc & including food) Jungle Safari",
                            style: TextStyle(

                              color: Colors.white,fontSize: 14,fontFamily: "sofia"),
                          ),

                      );

                    }

                ),


              ],
        ),
            ),
              Icon(Icons.directions_transit),

            ],
          ),
          ),
        );


  }
}
