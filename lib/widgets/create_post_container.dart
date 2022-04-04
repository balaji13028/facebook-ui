
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/user_model.dart';
import 'package:flutter_tutorial/widgets/profile_avatar.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer({ Key? key ,
    required this.currentUser,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(children: [
        Row(
          children:[
            ProfileAvatar(imageUrl: currentUser.imageUrl),
           const SizedBox(width: 8.0,),
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Whats on your mind?')
              ),
            )
          ]
        ),
        const Divider(height: 10.0, thickness: 0.5),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(onPressed: () => print('Live'), icon: const Icon(
                Icons.videocam,
                color: Colors.red,
              ), label: Text('Live'),
              ),
              const VerticalDivider(width: 8.0),
              TextButton.icon(onPressed: () => print('photo'), icon: const Icon(
                Icons.photo_library,
                color: Colors.green,
              ), label: Text('photo'),
              ),
              const VerticalDivider(width: 8.0),
              TextButton.icon(onPressed: () => print('Room'), icon: const Icon(
                Icons.video_call,
                color: Colors.purpleAccent,
              ), label: Text('Room'),
              ),
              const VerticalDivider(width: 8.0),
              
            ],
          ),
        
      ]),
    );
  }
}
