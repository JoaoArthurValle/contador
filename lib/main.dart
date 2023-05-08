import 'package:flutter/material.dart';

void main() {

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {

  @override
  const MyApp({Key? key}): super(key: key);

  Widget build(BuildContext context){

    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      home: HomePage(),

    );
  }

}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  void decrement(){
    setState(() {
      count--;
      print("Decrement");
    });



  }
  void increment(){
    setState(() {
      count++;
      print("Increment");
    });


  }
  bool get cheio => count == 20;
  bool get vazio => count == 0;
  @override

  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/fundo.png"),
                fit: BoxFit.cover
            ),

          ),

          child:Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [

               Text(cheio? "Lotado!!!" : "Seja Bem vindo!!!", style: TextStyle(

                  fontSize: 30,color: cheio? Colors.red : Colors.green, fontWeight: FontWeight.w900

              ),),

              const SizedBox(height:70),


              Text(count.toString(),style: TextStyle(

                  fontSize: 180,color: cheio? Colors.red : Colors.green, fontWeight: FontWeight.w900

              ),),
              const SizedBox(height:40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  TextButton(
                      onPressed: vazio? null : decrement,
                      style: TextButton.styleFrom(
                          backgroundColor: vazio? Colors.white.withOpacity(0.2) : Colors.white,
                          fixedSize: const Size(100,100),
                          primary: Colors.lightBlue,

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)
                          )
                      ),
                      child: Text(
                        "Saiu",
                        style: TextStyle(

                            color: Colors.lightBlue,
                            fontSize: 20
                        ),
                      )

                  ),

                  const SizedBox(width: 60),

                  TextButton(
                    onPressed: cheio? null : increment,

                    style: TextButton.styleFrom(

                        backgroundColor: cheio? Colors.white.withOpacity(0.2) : Colors.white,
                        fixedSize: const Size(100,100),
                        primary: Colors.lightBlue,
                        shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(24)

                        )
                    ),

                    child: Text(
                      "Entrou",
                      style: TextStyle(

                          color: Colors.lightBlue,
                          fontSize: 20
                      ),
                    ),
                  )

                ],


              )
            ],


          )

      )
      ,
    );

  }
}




