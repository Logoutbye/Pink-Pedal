import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Themesdata/theme_text.dart';
import 'package:liveproject/utilis/Themesdata/themecolors.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final List<Map<String, dynamic>> messages = [
    {'text': 'Hello!', 'issendmessage': true, 'time': DateTime.now()},
    {'text': 'Hi there!', 'issendmessage': false, 'time': DateTime.now()},
    {'text': 'How are you?', 'issendmessage': true, 'time': DateTime.now()},
    {
      'text': 'I\'m good, thanks!',
      'issendmessage': false,
      'time': DateTime.now()
    },
    {'text': 'how are you', 'issendmessage': true, 'time': DateTime.now()},
    {'text': 'i am good', 'issendmessage': false, 'time': DateTime.now()},
    {
      'text': 'a.o.a i want book a ride from kehal to bilal',
      'issendmessage': true,
      'time': DateTime.now()
    },
    {
      'text': 'sure, what do you want to help you with?',
      'issendmessage': false,
      'time': DateTime.now()
    },
    {
      'text': ' i arrive in just 5 mint?',
      'issendmessage': true,
      'time': DateTime.now()
    },
    {
      'text': 'ok?',
      'issendmessage': false,
      'time': DateTime.now()
    },
     {
      'text': 'whare are uh',
      'issendmessage': false,
      'time': DateTime.now()
    },
     {
      'text': 'i am cimming',
      'issendmessage': true,
      'time': DateTime.now()
    },
     {
      'text': 'ok?',
      'issendmessage': false,
      'time': DateTime.now()
    },
  ];

  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
        title: Text('Chat Details',style: Themetext.atextstyle,),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                final bool isSentMessage = message['issendmessage'] ?? false;
                final CrossAxisAlignment crossAxisAlignment = isSentMessage
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start;

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: crossAxisAlignment,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: isSentMessage
                              ? Themecolor.selectedItem
                              : Color(0xFFF7F9FD),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          message['text'] ?? '',
                          style: isSentMessage
                              ? Theme.of(context).textTheme.bodyMedium
                              : Themetext.btextstyle
                                  .copyWith(color: Color(0xFF8F95AB)),
                        ),
                      ),
                      Text(
                        '${_formatTime(message['time'])}',
                        style: TextStyle(fontSize: 12.0, color: Colors.grey),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFF7F9FD),
                    ),
                    child: TextField(
                      controller: messageController,
                      decoration:const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 16), // Adjust the padding as needed
                        border: InputBorder.none,
                        hintText: 'Type your message...',
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon:const CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Themecolor.selectedItem,
                    
                    child: Icon(Icons.send,color: Colors.white,)),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatTime(DateTime? time) {
    if (time == null) {
      return '';
    }
    return '${time.hour}:${time.minute}';
  }

  void _sendMessage() {
    String messageText = messageController.text.trim();
    if (messageText.isNotEmpty) {
      setState(() {
        messages.add({
          'text': messageText,
          'issendmessage': true,
          'time': DateTime.now(),
        });
        messageController.clear();
      });
    }
  }
}
