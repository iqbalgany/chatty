import 'package:bwa_chatty/theme.dart';
import 'package:bwa_chatty/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import 'message_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            size: 28,
          ),
          backgroundColor: greenColor,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: blueColor,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset(
                    'assets/images/photo1.jpg',
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Sabrina Carpenter',
                    style: TextStyle(
                      fontSize: 20,
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Travel Freelancer',
                    style: TextStyle(
                      color: lightBlueColor,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Friends',
                          style: titleTextStyle,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/photo2.jpg',
                          name: 'Hana',
                          text: 'Sorry youre not my ty..',
                          time: 'Now',
                          unread: true,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/photo3.jpg',
                          name: 'Gabriella',
                          text: 'I saw it clearly and mig..',
                          time: '2:30',
                          unread: false,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Groups',
                          style: titleTextStyle,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/grup1.jpg',
                          name: 'Jakarta Fair',
                          text: 'Why does everyone ca...',
                          time: '11.11',
                          unread: false,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/grup2.png',
                          name: 'Angga',
                          text: 'Here here we can go...',
                          time: '7:11',
                          unread: true,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/grup3.jpg',
                          name: 'Bentley',
                          text: 'The car which does not...',
                          time: '7:11',
                          unread: true,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/grup4.png',
                          name: 'Manchester City',
                          text: 'On Wednesday we have to...',
                          time: '6:10',
                          unread: true,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/grup5.png',
                          name: 'Golden State warrior',
                          text: 'The Warrior Dynasty is...',
                          time: '6:05',
                          unread: true,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
