import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:spacepe/screen/signup_screen.dart';
import 'home_screen.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool passwordVisibles=false;
  @override
  Widget build(BuildContext context) {
    var md =MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content:
            Text('Pop Screen Disabled. You cannot go to previous screen.'),
            backgroundColor: Colors.red,
          ),
        );
        return false;
       },
      child: Scaffold(

          appBar: AppBar(
            foregroundColor: Colors.black,
            title: const Text('Login',textScaleFactor: 1.2,),
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          RichText(text: const TextSpan(
                              children:[
                                TextSpan( text: 'Welcome to\n',style: TextStyle(color: Colors.black,fontSize: 22) ),
                                TextSpan( text: 'Space Pe',style: TextStyle(color: Color.fromRGBO(0, 119, 182, 1),fontWeight: FontWeight.w700,fontSize:36,),
                                ),

                              ]

                          )

                          ),
                        ],
                      ),

                      SizedBox(
                        width: md.width*0.3,
                        height: md.height*0.37,
                        child:  Lottie.asset('assets/lottie/login.json'),),
                    ],
                  ),


                        SizedBox(
                          width: md.width*0.83,
                          height: md.height*0.07,
                          child: TextFormField(
                              decoration: const InputDecoration(
                                  // focusedBorder: OutlineInputBorder(
                                  //   borderSide: BorderSide(color: Colors.blue),),
                                  // labelStyle:TextStyle(color: Colors.blue),
                                  border: OutlineInputBorder(
                                     borderRadius: BorderRadius.all(Radius.circular(50))
                                     // borderSide: BorderSide(width: 1)
                                    ),
                                  // labelText: 'User Id',
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: 'User Id',
                                  prefixIcon: Icon(Icons.person)
                              )
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        SizedBox(
                          width: md.width*0.83,
                          height: md.height*0.07,
                          child: TextField(
                            obscureText: passwordVisibles,
                            decoration: InputDecoration(
                              // focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(0, 119, 182, 1)),   borderRadius: BorderRadius.all(Radius.circular(50))),
                              border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(50))
                                // borderSide: BorderSide(width: 1)
                              ),
                              hintText: "Password",
                              // labelText: "Password",
                              fillColor: Colors.white,
                              filled: true,

                              prefixIcon: const Icon(Icons.lock_outline),
                              // helperText:"Password must contain special character",
                              helperStyle:const TextStyle(color:Colors.red),
                              suffixIcon: IconButton(
                                icon: Icon(passwordVisibles
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(
                                        () {
                                      passwordVisibles = !passwordVisibles;
                                    },
                                  );
                                },
                              ),
                              alignLabelWithHint: false,
                              // filled: true,
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            textInputAction: TextInputAction.done,
                          ),
                        ),




                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: md.width*0.83,
                      height: md.height*0.064,
                      margin: const EdgeInsets.all(10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(0,119,182,1),),
                          onPressed: (){

                            Navigator.push(context,MaterialPageRoute(builder: (context) => const HomeScreen()));

                          },
                          child: const Text('Sign In',textScaleFactor: 1.2,
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),)
                      )
                  ),
                  const SizedBox(
                    height:10,
                  ),

                              const Text("Don't have an account?",textScaleFactor: 1,),

                  Container(
                      width: md.width*0.83,
                      height: md.height*0.064,
                      margin: const EdgeInsets.all(10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.black,),
                          onPressed: (){

                            Navigator.push(context,MaterialPageRoute(builder: (context) => const SignupScreen()));

                          },
                          child: const Text('Create Account',textScaleFactor: 1.2,
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),)
                      )
                  ),


                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: md.width*0.34,
                          child: const Divider()),
                      const Text('OR Sign in with'),
                      SizedBox(
                          width: md.width*0.34,
                          child: const Divider()),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),





                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width:md.width*0.01,
                      ),
                      // SizedBox(
                      //   width: md.width*0.15,
                      //   height: 50,
                      //   child: const Padding(
                      //     padding: EdgeInsets.all(5),
                      //     child:
                          CircleAvatar(backgroundImage:AssetImage('assets/images/img.png')),
                      //   ),
                      // ),
                      // SizedBox(
                      //   width:md.width*0.01,
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.all(5),
                      //   child: SizedBox(
                      //       width: md.width*0.14,
                      //       child: const
                            CircleAvatar(backgroundImage: AssetImage('assets/images/google.png'),),
                      //   ),
                      // ),
                      // SizedBox(
                      //   width:md.width*0.01,
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.all(5),
                      //   child: SizedBox(
                      //       width: md.width*0.14,
                      //       child: const
                            CircleAvatar(backgroundImage: AssetImage('assets/images/img.png'),),
                      //   ),
                      // ),
                      SizedBox(
                        width:md.width*0.01,
                      ),

                    ],
                  )



                ],
              ),
            ),

          ),

          ),


          // )

      ),
    );
  }
}
