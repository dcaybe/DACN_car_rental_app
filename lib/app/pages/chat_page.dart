import 'package:car_fontend/app/constants/colors.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'Tin nhắn',
            style: h1,
          ),
          SizedBox(
            height: 30,
          ),
          Text('Chức năng này đang được phát triển')
        ],
      ),
    );
  }
}
