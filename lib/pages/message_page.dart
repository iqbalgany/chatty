import 'package:bwa_chatty/theme.dart';
import 'package:flutter/material.dart';

class MassagePage extends StatelessWidget {
  const MassagePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget receiverBubble({
      required String imageUrl,
      required String text,
      required String time,
    }) {
      return Container(
        margin: EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              imageUrl,
              width: 40,
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                  color: Color(0xffebeff3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: subtitleTextStyle,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: subtitleTextStyle,
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget senderBubble({
      required String imageUrl,
      required String text,
      required String time,
    }) {
      return Container(
        margin: EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              decoration: BoxDecoration(
                color: Color(0xffebeff3),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text,
                    style: subtitleTextStyle,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: subtitleTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Image.asset(
              imageUrl,
              width: 40,
            ),
          ],
        ),
      );
    }

    Widget header() {
      return Container(
        width: double.infinity,
        height: 115,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Color(0xffebeff3),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/grup1.jpg',
              width: 55,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jakarta Fair',
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '14,209 members',
                  style: subtitleTextStyle,
                )
              ],
            ),
            Spacer(),
            Icon(
              Icons.call,
              size: 30,
              color: greenColor,
            )
          ],
        ),
      );
    }

    Widget body() {
      return Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              receiverBubble(
                imageUrl: 'assets/images/photo2.jpg',
                text: 'How are you guys?',
                time: '2:30',
              ),
              receiverBubble(
                imageUrl: 'assets/images/photo3.jpg',
                text: 'Fine here :p',
                time: '3:11',
              ),
              senderBubble(
                imageUrl: 'assets/images/photo1.jpg',
                text:
                    'Thinking about how to deal \nwith this client from hell..',
                time: '22:08',
              ),
              receiverBubble(
                imageUrl: 'assets/images/photo4.jpg',
                text: 'Love them',
                time: '23:11',
              )
            ],
          ),
        ),
      );
    }

    Widget chatInput() {
      return Container(
        width: MediaQuery.of(context).size.width - (2 * 30),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xffebeff3),
          borderRadius: BorderRadius.circular(75),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Type message...',
              style: subtitleTextStyle,
            ),
            Icon(
              Icons.send,
              size: 35,
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      floatingActionButton: chatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
          child: Column(
        children: [
          header(),
          body(),
        ],
      )),
    );
  }
}
