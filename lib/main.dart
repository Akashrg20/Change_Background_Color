import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          displaySmall: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.black),
        )


      ),
      home: const MyHomePage(),
    );


  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});





  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var bgColor=Colors.white;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:  InkWell(
                onTap: () {
                  bgColor=Colors.white;

                  setState(() {

                  });

                },
                child: Icon(Icons.refresh,size: 30,color: Colors.white,)),
          ),
        ],
        title: Text("BG Changer",style: TextStyle(color: Colors.white,letterSpacing: 3,fontSize: 22,fontWeight: FontWeight.w600),),
        backgroundColor: Colors.black45,

      ),
      backgroundColor: bgColor,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildAvatar(
                              color:Colors.red,
                                onClick: () {
                                bgColor=Colors.red;
                                setState(() {
                                });
                                },
                          ),
                          Text("Red",style: Theme.of(context).textTheme.displaySmall,),
                      ]
                    ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buildAvatar(
                              color:Colors.orange,
                              onClick: () {
                                bgColor=Colors.orange;
                                setState(() {
                                });
                              },
                            ),
                            Text("Orange",style: Theme.of(context).textTheme.displaySmall,),
                          ]
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buildAvatar(
                              color:Colors.yellow,
                              onClick: () {
                                bgColor=Colors.yellow;
                                setState(() {
                                });
                              },
                            ),
                            Text("Yellow",style: Theme.of(context).textTheme.displaySmall,),
                          ]
                      ),
                  SizedBox(width: 20,),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildAvatar(
                          color:Colors.green,
                          onClick: () {
                            bgColor=Colors.green;
                            setState(() {
                            });
                          },
                        ),
                        Text("Green",style: Theme.of(context).textTheme.displaySmall,),
                      ]
                  ),
                  SizedBox(width: 20,),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildAvatar(
                          color:Colors.blue,
                          onClick: () {
                            bgColor=Colors.blue;
                            setState(() {
                            });
                          },
                        ),
                        Text("Blue",style: Theme.of(context).textTheme.displaySmall,),
                      ]
                  ),
                  SizedBox(width: 20,),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildAvatar(
                          color:Colors.indigo,
                          onClick: () {
                            bgColor=Colors.indigo;
                            setState(() {
                            });
                          },
                        ),
                        Text("Indigo",style: Theme.of(context).textTheme.displaySmall,),
                      ]
                  ),
                  SizedBox(width: 20,),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildAvatar(
                          color:Colors.cyan,
                          onClick: () {
                            bgColor=Colors.cyan;
                            setState(() {
                            });
                          },
                        ),
                        Text("Cyan",style: Theme.of(context).textTheme.displaySmall,),
                      ]
                  ),
                  SizedBox(width: 20,),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildAvatar(
                          color:Colors.deepPurple,
                          onClick: () {
                            bgColor=Colors.deepPurple;
                            setState(() {
                            });
                          },
                        ),
                        Text("Purple",style: Theme.of(context).textTheme.displaySmall,),
                      ]
                  ),
                  SizedBox(width: 20,),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildAvatar(
                          color:Colors.grey,
                          onClick: () {
                            bgColor=Colors.grey;
                            setState(() {
                            });
                          },
                        ),
                        Text("Grey",style: Theme.of(context).textTheme.displaySmall,),
                      ]
                  ),
                  SizedBox(width: 20,),






                ],

              ),
            ),
          ),
        ),
      ),



      

        );



      

  }

  buildAvatar({
    required MaterialColor color,
    required void Function() onClick}) {
    return InkWell(
      onTap: onClick,
      child: CircleAvatar(
        backgroundColor: color,
      ),
    );
  }

}
