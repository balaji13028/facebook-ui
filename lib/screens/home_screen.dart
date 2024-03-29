import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/data/data.dart';
import 'package:flutter_tutorial/widgets/circle_button.dart';
import 'package:flutter_tutorial/widgets/rooms.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../config/palette.dart';
import '../widgets/create_post_container.dart';
import '../widgets/stories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
         slivers: [
           SliverAppBar(
              backgroundColor:Colors.white,
              title: Text('facebook',
              style:  TextStyle(
                color: Palette.facebookBlue,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              
              ),
              ),
              centerTitle: false,
              floating: true,
              actions: [
                CircleButton(icon: Icons.search,
                 iconSize: 30.0,
                  onPressed: () => print("search"),
                ),
                 CircleButton(icon: MdiIcons.facebookMessenger,
                 iconSize: 30.0,
                  onPressed: () => print("Messenger"),
                ),
              ],
         ),
         SliverToBoxAdapter(
          child: CreatePostContainer(currentUser:currentUser),
           ),
         SliverPadding(
           padding: const EdgeInsets.fromLTRB(0.0, 10, 0.0, 5.0),
           sliver: SliverToBoxAdapter(
             child: Rooms(onlineUsers: onlineUsers),
           ),
         ),
          SliverPadding(
           padding: const EdgeInsets.fromLTRB(0.0, 5, 0.0, 5.0),
           sliver: SliverToBoxAdapter(
             child: Stories(currentUser: currentUser,stories: stories),
           ),
         ),
         ],
    ),
    );
  }
}