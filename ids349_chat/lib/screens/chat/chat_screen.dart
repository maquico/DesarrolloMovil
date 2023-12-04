import 'package:flutter/material.dart';
import 'package:ids349_chat/screens/widgets/chat/my_message_bubble.dart';
import 'package:ids349_chat/screens/widgets/chat/her_message_bubble.dart';
import 'package:ids349_chat/screens/widgets/shared/message_fieldbox.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Material App Bar'),
        leading:
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.radiotimes.com%2Ftv%2Ffantasy%2Fanime%2Fdragon-ball-goku-forms%2F&psig=AOvVaw0_6gfTjO2Ybf0u9BOQ1We5&ust=1701178842044000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCOiMoJan5IIDFQAAAAAdAAAAABAE.jpeg"),
          ),
        ),
      ),
      body: ChatView()
    );
  }
}

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                  itemBuilder: (context, index) {
                    return index % 2 == 0 ? HerMessageBubble() : MyMessageBubble();
                  },)
            ),
            MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}

