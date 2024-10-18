import 'package:color_change/controller/home_screen_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.watch<HomeScreenController>().currentColor,
        body: Center(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      context.read<HomeScreenController>().changeColor(
                            HomeScreenController.colors[index],
                          );
                    },
                    child: Container(
                      height: 80,
                      color: HomeScreenController.colors[index],
                    ),
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
              itemCount: 5),
        ));
  }
}
