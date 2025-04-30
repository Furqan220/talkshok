import 'package:talk_shok/chat.dart';
import 'package:talk_shok/model.dart';
import 'package:flutter/material.dart';

class myhomepage extends StatefulWidget {
  const myhomepage({
    super.key,
    required this.chatsModels,
    required this.sourceChat,
  });
  final List<ChatModel> chatsModels;
  final ChatModel sourceChat;

  @override
  State<myhomepage> createState() => _myhomepageState();
}

class _myhomepageState extends State<myhomepage> {
  // List name = ['Hammad', 'Furqan', 'Zubair'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${widget.sourceChat.name}'),
              SizedBox(
                width: 50,
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: widget.chatsModels.length,
          itemBuilder: (context, index) =>
              chat(context, widget.chatsModels[index]),
        )
        //   padding: EdgeInsets.symmetric(horizontal: 10),
        //   children: List.generate(
        //     name.length,
        //     (index),
        //   ),

        // ),

        );
  }

  Widget chat(BuildContext context, ChatModel user) {
    return ListTile(
      visualDensity: VisualDensity(
        horizontal: -4.0,
      ),
      contentPadding: EdgeInsets.only(right: 0),
      leading: CircleAvatar(
        radius: 50,
        // backgroundImage: AssetImage('assets/download.jpg'),
      ),
      title: Text(
        '${user.name}',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Text('Hey ....'),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '4:55 AM',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(
            height: 5,
          ),
          CircleAvatar(
            radius: 10,
            child: Padding(
              padding: const EdgeInsets.all(0.4),
              child: Text(
                '1',
                style: TextStyle(fontSize: 12),
              ),
            ),
          )
        ],
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ChatPage(
              targetChat: user,
              user: widget.sourceChat,
            ),
          ),
        );
      },
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go Back'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
