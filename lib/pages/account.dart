import 'package:flutter/material.dart';
import 'package:instagram_app/util/account_tab1.dart';
import 'package:instagram_app/util/account_tab2.dart';
import 'package:instagram_app/util/account_tab3.dart';
import 'package:instagram_app/util/account_tab4.dart';
import 'package:instagram_app/util/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
        appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
        'joyiiisssh',
        style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
    ),
    ),
    actions: [
    Icon(Icons.add_box_outlined),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Icon(Icons.menu),
    ),
    ],
    ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // profile picture
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              shape: BoxShape.circle,
            ),
          ),

          // number of posts, followers, following
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('37',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    Text('Posts'),
                  ],
                ),
                Column(
                  children: [
                    Text('50M',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    Text('Followers'),
                  ],
                ),
                Column(
                  children: [
                    Text('20',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    Text('Following'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),

            // Name and bio
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lazy Naturalista',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Text(
                      'Tech Enthusaiast',
                    ),
                  ),
                  Text(
                    'Hair YouTuber',
                  ),
                  Text(
                    'https//www.youtube.com/C/LazyNaturalista',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Center(child: Text('Edit Profile')),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Center(child: Text('Ad Tools')),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Center(child: Text('Insights')),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // stories
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 0.0, vertical: 20),
              child: Container(
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    BubbleStories(text: 'Carrot Oil'),
                    BubbleStories(text: 'SheaButter'),
                    BubbleStories(text: 'Youtube Videos'),
                    BubbleStories(text: 'Apps'),
                    BubbleStories(text: 'Hairstyles'),
                    BubbleStories(text: 'Hair Talks'),
                    BubbleStories(text: 'Relationship Talks'),
                  ],
                ),
              ),
            ),

            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined),
                ),
                Tab(
                  icon: Icon(Icons.video_call),
                ),
                Tab(
                  icon: Icon(Icons.shop),
                ),
                Tab(
                  icon: Icon(Icons.person),
                ),
              ],
            ),

            Expanded(
              child: TabBarView(children: [
                AccountTab1(),
                AccountTab2(),
                AccountTab3(),
                AccountTab4(),
              ]),
            )
          ],
      ),
        ),
    );
  }
}