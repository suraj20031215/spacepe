import 'package:card_swiper/card_swiper.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:spacepe/widget/drawer.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> num=['Suraj','Aakash','akshay','test user'];
//  List<String> img=['assets/images/bg.png'];
int _page = 0;
  @override
  Widget build(BuildContext context) {
    var mq =MediaQuery.of(context).size;
    return Scaffold(

      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.indigo,
        backgroundColor: Colors.transparent,
        items: const <Widget>[

          Icon(Icons.home_outlined, size: 30,color: Colors.white,),
          Icon(Icons.dashboard_outlined, size: 30,color: Colors.white,),
          Icon(Icons.add, size: 30,color: Colors.white,),
          Icon(Icons.notifications_none, size: 30,color: Colors.white,),
          Icon(Icons.person, size: 30,color: Colors.white,),
        ],
        onTap: (index) {

          setState(() {
            _page = index;
          });
        },
      ),
      appBar: AppBar(
        // leading: Navigator.of(context).canPop() ? null :
        // Image.asset('assets/my_icon.png', width: 30.0, height: 30.0),
        //   onPressed: () {
        //     // handle logout
        //   },


actions: const [

  Icon(Icons.notification_add_outlined),
  SizedBox(width: 20,)
],
      ),
        drawer:  const MyDrawer(),
      
      
      body:
      Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            width: double.infinity,
            height: 200,
              decoration:const BoxDecoration(
                // boxShadow:  [
                //   BoxShadow(
                //     color: Colors.black.withOpacity(0.1),
                //     spreadRadius: 0.0,
                //     blurRadius: 5,
                //     offset: const Offset(1.0, 1.0),// changes position of shadow
                //   ),
                // ],

              ),

              child: Swiper(
                itemBuilder: (BuildContext context,int index){
                  return Card(child: Lottie.asset("assets/lottie/login.json",fit: BoxFit.fill,));
                },
                itemCount: 10,
                itemWidth: 300.0,
                itemHeight: 300,
                viewportFraction: 0.8,
                scale: 0.9,
                layout: SwiperLayout.DEFAULT,
              ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: num.length,

                itemBuilder: (context, index) {
                return ListTile(
                  leading: Lottie.asset('assets/lottie/login.json'),
                  title:  Text(num[index],textScaleFactor: 1.2,),
                  subtitle: const Text('Subtitle'),
                  trailing: const Icon(Icons.east),

                );

              },),
          ),
          
]
      )

      // SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       const Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //         Text('Axtssss',textScaleFactor: 1.0,),
      //         Text('Date',textScaleFactor: 0.8,)
      //         ],
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //          Container(height: 150,
      //            width: mq.width*0.4,
      //            color: Colors.grey,),
      //           Container(height: 150, width: mq.width*0.4, color: Colors.grey,)
      //
      //         ],
      //       ),
      //
      //       Container(
      //         margin: const EdgeInsets.all(10),
      //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue[100],),
      //
      //         width: double.infinity,
      //         height: 260,
      //       ),
      //       const Text('Quick Actions',textScaleFactor: 1.2,style: TextStyle(fontWeight: FontWeight.w700)),
      //       const Padding(
      //         padding: EdgeInsets.all(8.0),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: [
      //             Column(
      //               children: [
      //                 SizedBox(
      //                   width: 50,
      //                   height: 50,
      //                   child: CircleAvatar(
      //                     backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/2/24/Circle-icons-image.svg'),
      //                   ),
      //                 ),
      //                 Text('exm...')
      //               ],
      //             ),
      //
      //             Column(
      //               children: [
      //                 SizedBox(
      //                   width: 50,
      //                   height: 50,
      //                   child: CircleAvatar(
      //                     backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/2/24/Circle-icons-image.svg'),
      //                   ),
      //                 ),
      //                 Text('exm...')
      //               ],
      //             ),
      //
      //             Column(
      //               children: [
      //                 SizedBox(
      //                   width: 50,
      //                   height: 50,
      //                   child: CircleAvatar(
      //                     backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/2/24/Circle-icons-image.svg'),
      //                   ),
      //                 ),
      //                 Text('exm...')
      //               ],
      //             ),
      //             Column(
      //               children: [
      //                 SizedBox(
      //                   width: 50,
      //                   height: 50,
      //                   child: CircleAvatar(
      //                     backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/2/24/Circle-icons-image.svg'),
      //                   ),
      //                 ),
      //                 Text('exm...')
      //               ],
      //             ),
      //             Column(
      //               children: [
      //                 SizedBox(
      //                   width: 50,
      //                   height: 50,
      //                   child: CircleAvatar(
      //                     backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/2/24/Circle-icons-image.svg'),
      //                   ),
      //                 ),
      //                 Text('exm...')
      //               ],
      //             ),
      //             Column(
      //               children: [
      //                 SizedBox(
      //                   width: 50,
      //                   height: 50,
      //                   child: CircleAvatar(
      //                     backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/2/24/Circle-icons-image.svg'),
      //                   ),
      //                 ),
      //                 Text('exm...')
      //               ],
      //             ),
      //           ],
      //         ),
      //       )
      //     ],
      //   ),
      // ),

    );
  }
}
