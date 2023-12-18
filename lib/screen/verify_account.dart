import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'home_screen.dart';
import 'login_screen.dart';



class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {

  bool passwordVisibles=false;
  @override
  Widget build(BuildContext context) {
    var md =MediaQuery.of(context).size;
    return Scaffold(

      appBar: AppBar(
        foregroundColor: Colors.black,
        title: const Text('Verify Account',textScaleFactor: 1.2,),
      ),
      body:
      // Container(
      //   margin: const EdgeInsets.only(top: 30),
      //   height: md.height,
      //   decoration:  const BoxDecoration(color:Colors.white, borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight:Radius.circular(30))),
      //   child:`
      Container(
        height: md.height,
        decoration: const BoxDecoration(

          image: DecorationImage(
              image: AssetImage("assets/images/bgimg.png"),fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Column(
                      children: [
                        Text('Welcome to',textScaleFactor: 1.9,),
                        Text('Space pe',textScaleFactor: 2.8,style: TextStyle(color: Color.fromRGBO(0, 119, 182, 1),fontWeight: FontWeight.w700),),
                      ],
                    ),

                    SizedBox(
                      width: md.width*0.3,
                      height: md.height*0.37,
                      child:  Lottie.asset('assets/lottie/login.json'),),
                  ],
                ),

               Container(
                 margin: EdgeInsets.only(left: 130),
                 alignment: Alignment.center,
                 transformAlignment: Alignment.center,
                 child: const Row(
                   children: [
                      Text('Enter Valid OTP'),
                        Icon(Icons.check_box_outlined)
                    ],
                    ),
               ),
                SizedBox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Container(width:60,height:60,child: Center(child: Text('',textScaleFactor: 1.5,style: TextStyle(fontWeight: FontWeight.w400),)),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(50),
                      boxShadow:  [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 0.9,
                          blurRadius: 1,
                          offset: const Offset(1.0, 1.0),// changes position of shadow
                        ),
                      ],
                ),
                ),

                    Container(width:60,height:60,child: Center(child:  Text('',textScaleFactor: 1.5,style: TextStyle(fontWeight: FontWeight.w400),)),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(50),
                      boxShadow:  [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 0.9,
                          blurRadius: 1,
                          offset: const Offset(1.0, 1.0),// changes position of shadow
                        ),
                      ],
                    ),
                    ),
                    Container(width:60,height:60,child: Center(child: Text('',textScaleFactor: 1.5,style: TextStyle(fontWeight: FontWeight.w400),)),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(50),
                      boxShadow:  [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 0.9,
                          blurRadius: 1,
                          offset: const Offset(1.0, 1.0),// changes position of shadow
                        ),
                      ],
                    ),
                    ),
                    Container(width:60,height:60,child: Center(child:  Text('',textScaleFactor: 1.5,style: TextStyle(fontWeight: FontWeight.w400),)),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(50),
                      boxShadow:  [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 0.9,
                          blurRadius: 1,
                          offset: const Offset(1.0, 1.0),// changes position of shadow
                        ),
                      ],
                    ),
                    ),
                    Container(width:60,height:60,child: Center(child: Text('',
                      textScaleFactor: 1.5,
                      style: TextStyle(fontWeight: FontWeight.w400),)),
                      decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow:  [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 0.9,
                          blurRadius: 1,
                          offset: const Offset(1.0, 1.0),// changes position of shadow
                        ),
                      ],
                    ),
                    ),

                   // Container(width:60,height:60,child: Center(child: Text('1')),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(50)),),
                  ],
                ),



                const SizedBox(
                  height:10,
                ),

                const Text("",textScaleFactor: 1,),
                Container(
                    width: md.width*0.95,
                    height: md.height*0.07,
                    margin: const EdgeInsets.all(10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(0,119,182,1),),
                        onPressed: (){

                          Navigator.push(context,MaterialPageRoute(builder: (context) => const HomeScreen()));

                        },
                        child: const Text('Verify ',textScaleFactor: 1.4,
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),)
                    )
                ),




                const SizedBox(
                  height: 6,
                ),




              ],
            ),
          ),

        ),

      ),


      // )
    );
  }
}
