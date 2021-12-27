import 'package:flutter/material.dart';
import 'package:instagram_app/util/bubble_stories.dart';
import 'package:instagram_app/util/user_posts.dart';
class UserHome extends StatelessWidget {
  final List people = [
    'Wizkid',
    'Beyonce', 'Obama',
    'DonJazzy',
    'LazyN',
    'Okonkwo', 'Rihanna',
    'Zuckerberg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
           Row(
             children: [
               GestureDetector(
                 onTap: () {
                   //do something
                 },
                   child: Icon(Icons.add)),
               Padding(
                   padding: const EdgeInsets.all(24.0),
                    child: Icon(Icons.favorite),
               ),
               Icon(Icons.share),
             ],
           ),
          ],
        ),
      ),
      body: Column(
        children: [
          //STORIES
          Container(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index){
              return BubbleStories(text: people[index]);
            }),
          ),

          //POSTS
          Expanded(
              child: ListView.builder(
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return UserPosts(
                      people[index],
                    );
                  }),
          ),
        ],
      ),
    );
  }
}
