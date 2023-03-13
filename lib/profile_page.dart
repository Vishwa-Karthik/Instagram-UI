import 'package:flutter/material.dart';
import 'package:instagram_profile_ui/utils/my_button.dart';
import 'package:instagram_profile_ui/utils/story_circle.dart';
import 'pages/export.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  final List<Widget> tabs = const  [
    Tab(icon: Icon(Icons.grid_3x3)),
    Tab(icon: Icon(Icons.camera),),
    Tab(icon: Icon(Icons.bookmark),),
  ];

  final List<Widget> pages = const [
    HomePage(),
    ReelsPage(),
    TaggedPage(),
  ];

  final List<String> storyTitles = [
    "Food",
    "Games",
    "Friends",
    "Trips",
    "Dogs"
  ];

   final List<IconData> storyIcons = const  [
    Icons.food_bank,
    Icons.gamepad,
    Icons.child_friendly_sharp,
    Icons.trip_origin,
    Icons.pets,
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: tabs.length,
      child: Scaffold(
        body: ListView(
          children: [
          //! profile info
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // following
              Column(
               crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text("1.2k",style: TextStyle(color: Colors.white,fontSize: 24,),),
                  Text("Following", style: TextStyle(color: Colors.grey,),),
                ],
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
        
              //* profile pic
              const CircleAvatar(radius: 65,
              backgroundImage: NetworkImage(
                "https://avatars.githubusercontent.com/u/69278328?v=4",
                ),
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
        
              //* followers
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text("12M",style: TextStyle(color: Colors.white,fontSize: 24,),),
                  Text("Followers", style: TextStyle(color: Colors.grey,),)
                ],
              ),
            ],
          ),

        SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
        ),
          

       //! next section

            //* Profle Deets
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
              //* Name
                Text("Vishwa Karthik || Developer",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  ),
                  ),
                   SizedBox(
                height: 5,
              ),

              //* Designation
                Text("Software Engineer",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,),),
                SizedBox(
                height: 5,
              ),
              
              //* Link
               Text("www.github.com/Vishwa-Karthik",style: TextStyle(fontSize: 12,color: Colors.blue),),

            ],
            ),

             SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
          
          //* Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          MyButton(text: "EDIT", onPressed: (){}),
          const SizedBox(width: 15,),
          MyButton(text: "SETTINGS", onPressed: (){}),
          const SizedBox(width: 15,),
          MyButton(text: "LOGOUT", onPressed: (){}),

          ],),

          SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
         ),

         Column(children: [    
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.12,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context,index) {
                return  StoryCircle(
                  title: storyTitles[index],
                  iconData: storyIcons[index],
                );
              },),
          ), 
         ],
         ),
        
        
          //* tabBar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: TabBar(tabs: tabs,indicatorColor: Colors.white),
          ),
        
          //* tab Bar View
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: TabBarView(children: pages)),
          ],
        ),
      ),
    );
  }
}
