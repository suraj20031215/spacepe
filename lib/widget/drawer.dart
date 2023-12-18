import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spacepe/screen/login_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    return Drawer(

      backgroundColor:  Colors.white,


      child:Column(



       //   padding: EdgeInsets.zero,
          children:  [

        Container(

margin: const EdgeInsets.only(top: 40,left: 18),
          decoration: const BoxDecoration(
              // color: Colors.white,
              borderRadius: BorderRadius.only(bottomRight:Radius.circular(30),bottomLeft:Radius.circular(30) )
          ),
          child:  const Column(
    children: [
      Row(

        children: [
          SizedBox(
            width: 70,
            height: 70,
            child: CircleAvatar(
                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/136887316?s=400&u=3ff30b76451a75495c2f8ef79ace8af4c3a26964&v=4')),
          ),
        ],
      ),
SizedBox(
  height: 6,
),
    Row(

      children: [
        Text('Suraj Kumar',textScaleFactor: 1.3,style: TextStyle(color:Colors.black,),),
      ],
    ),

    ],
    )
        ),
            SizedBox(
              height: 20,
            ),
             Divider(),
             SizedBox(
               height: 5,
             ),


             InkWell(
               onTap: () {
                 // Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage(),));
               },

                 child: const ListTile(
                  leading: Icon(Icons.dashboard_outlined,color: Colors.black,),
                  title: Text('Dashboard',
                    textScaleFactor: 1.0,
                    style: TextStyle(color: Colors.black),),
            ),

             ),
            const ListTile(
              leading: Icon(Icons.videocam_outlined,color:Colors.black,),
              title: Text('Quick Actions',
                textScaleFactor: 1.0,
                style: TextStyle(color: Colors.black,),),
            ),
           InkWell(
             onTap: () {
               // Navigator.push(context, MaterialPageRoute(builder: (context) => const PremiumVersion(),));

             },
             child: const ListTile(
                leading: Icon(Icons.camera_enhance_outlined,color:Colors.black,),
                title: Text('Attendance Management',
                  textScaleFactor: 1.0,
                  style: TextStyle(color: Colors.black,),),
              ),
           ),
      InkWell(
        onTap: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationPage(),));
        },
        child: const ListTile(
                leading: Icon(Icons.payments_outlined,color:Colors.black,),
                title: Text('Payroll Management',
                  textScaleFactor: 1.0,
                  style: TextStyle(color: Colors.black,),),
               // trailing: const Icon(Icons.chevron_right),
              ),
      ) ,
        InkWell(
          onTap: () {
           // Navigator.push(context,MaterialPageRoute(builder: (context) => const TermsServices(),));
          },
          child: const ListTile(
                leading: Icon(Icons.reduce_capacity_outlined,color:Colors.black,),
                title: Text('Human Recourse',
                  textScaleFactor: 1.0,
                  style: TextStyle(color: Colors.black,),),

              ),
        )  ,
          InkWell(
            onTap: () {
            //  Navigator.push(context, MaterialPageRoute(builder: (context) => const PrivacyPolicy(),));
            },
            child: const ListTile(
                leading: Icon(Icons.person_remove_alt_1_outlined,color:Colors.black,),
                title: Text('Leave Management',
                  textScaleFactor: 1.0,
                  style: TextStyle(color: Colors.black,),),

              ),
          ),
             InkWell(
               onTap: () {
            //     Navigator.push(context, MaterialPageRoute(builder:(context) => const RolePage(), ));
               },
               child: const ListTile(
                leading: Icon(Icons.man,color:Colors.black,),
                title: Text('Hiring',
                  textScaleFactor: 1.0,
                  style: TextStyle(color: Colors.black,),),

            ),
             ),
            InkWell(
              onTap: () {
                //     Navigator.push(context, MaterialPageRoute(builder:(context) => const RolePage(), ));
              },
              child: const ListTile(
                leading: Icon(Icons.call_made_rounded,color:Colors.black,),
                title: Text('Resigns',
                  textScaleFactor: 1.0,
                  style: TextStyle(color: Colors.black,),),

              ),
            ),

            Container(

              child: InkWell(
             onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
             },
                child: const ListTile(

                  leading: Icon(Icons.exit_to_app,color:Colors.black,),
                  title: Text('LogOut',
                    textScaleFactor: 1.1,
                    style: TextStyle(color: Colors.black,),),

                ),
              ),
            ),

            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 50,

                 margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(26),color: Color.fromRGBO(38, 50, 56, 1)),
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
                    },
                    child:  const Padding(
                      padding: EdgeInsets.only(left: 60,bottom:6),
                      child: ListTile(

                        leading: Icon(Icons.settings,color:Colors.white,),
                        title: Text('Settings',
                          textScaleFactor: 1.1,
                          style: TextStyle(color: Colors.white,),),

                      ),
                    ),
                  ),
                ),
              ),
            ),
      ]),

    );
  }
}
