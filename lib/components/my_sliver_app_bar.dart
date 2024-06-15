import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget title;
  final Widget child;

  const MySliverAppBar({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    //sliver app bar ile istediğimiz kadar yukarı kaydırırız
    //default olarak istediimiz kadar yukarı kaydırırız ama pinned ve collapsedheight ile nerede durması gerektiğini belirleyebilriiz
    return SliverAppBar(
      expandedHeight: 340, //appbar yüksekliği
      pinned: true, //kaydırdığımıda appbar kalacak
      collapsedHeight: 120, // appbarın ne kadarı ekranda kalacak
      floating: false,
      title: Text('RedTree Dinner'),
      centerTitle: true,
      actions: [
        //cart button
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        expandedTitleScale:
            1, //default olarak title büyüyüp küçülüyordu, bu şekilde sabitledik büyüklüğünü
        titlePadding: EdgeInsets.only(top: 0, left: 0, right: 0),
      ),
    );
  }
}
