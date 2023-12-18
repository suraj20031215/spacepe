import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spacepe/screen/home_screen.dart';
import 'package:spacepe/screen/login_screen.dart';
import 'package:spacepe/screen/verify_account.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SpacePe',
      initialRoute: '/',
      routes: {

     "/":(context)=> const LoginScreen(),

        // MyRoutes.loginRoutes :(context)=> const LoginPage(),
        // MyRoutes.homeRoutes  :(context)=> const HomePage(),
      } ,

      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

    //  home:  LoginScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: const Center(

          ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
