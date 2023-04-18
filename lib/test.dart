import 'package:flutter/material.dart';
import 'One.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          " Home page",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,

        // leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){},),
        actions: [
          ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return One();
              }));
            },
            icon: Icon(
              Icons.add_task,
              size: 25,
              color: Colors.black,
            ),
            label: Text("Test",
                style: TextStyle(
                  color: Colors.black,
                )),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 205, 218, 224),
              padding: EdgeInsets.symmetric(horizontal: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
          // IconButton(
          //   icon: Icon(Icons.exit_to_app),
          //   onPressed: () {
          //     Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          //       return one();
          //     }));
          //   },
          // ),
        ],
        elevation: 70,
      ),
      drawer: Drawer(
          child: Column(
        children: [
          Container( 
            margin: EdgeInsets.only(top: 80,bottom:25),
            color: Colors.white10,
            
            child:
          ListTile( 
            title: Text("Homa page",style: TextStyle(fontSize: 20),),
            leading: Icon(Icons.home, size: 30,),
            
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Test();
              }));
            },
          ),),
          Container(
            margin: EdgeInsets.only(bottom: 25),
            child:
          ListTile(
            title: Text("Test",style: TextStyle(fontSize: 20),),
            leading: Icon(Icons.add,size: 30,),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return One();
              }));
            },
          ),),
          ListTile(
            title: Text("About",style: TextStyle(fontSize: 20),),
            leading: Icon(Icons.help,size: 30,),
            onTap: () {},
          ),
        ],
      )),
      body: ListView(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                "image/1.jpg",
                height: 200,
                fit: BoxFit.scaleDown,
                // width: 300,
                
              ),
            ),
          ),
          Container(child: Text("Multi-classification of ocular diseases using AI", 
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,)
          ,textAlign: TextAlign.center,),
          margin: EdgeInsets.only(bottom: 25),),

          // Container(
          //   height: 300,
          //   child: PageView(
          //     children: [],
          //   ),
          // ),
          Center(
              child: MaterialButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return One();
              }));
            },
            child: Text(
              "Test",
              style: TextStyle(fontSize: 25),
            ),
            elevation: 30,
            splashColor: Colors.black,
            color: Color.fromARGB(255, 251, 96, 96),
            textColor: Colors.white,
            height: 40,
            minWidth: 150,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
            )
          )
             
              )
        ],
      ),
     
     
    );
  }
}
