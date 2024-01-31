
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/colors/app_colors.dart';
class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration:   const BoxDecoration(

        gradient:
        LinearGradient(
          // Define the start and end points of the gradient
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          // Define the colors and stops of the gradient

          colors: [
            blueFF6a80a3Color,
            // blueFF01BBEDColor,
            blueFF113184Color
          ],
          tileMode: TileMode.decal,

          stops: [0.1,.6],
        ),


      ),
      child:  Center(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          // appBar: AppBar
          //   (centerTitle: true,
          //
          //   leadingWidth: 20,
          //   leading: SvgPicture.asset("assets/images/svgs/setting.svg",height: 10,width: 10,),
          //   backgroundColor: Colors.transparent,
          //   title: const Text("Hi, Michael 👋",
          //     style: TextStyle(
          //         color: Color(0xFFFFFFFF)
          //     ),
          //   ),
          // ),
          body: Placeholder(),
          bottomNavigationBar: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.10,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color:Color(0xFF0B0C0D)),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: const TextStyle(
                  fontSize: 12,

                  color: Colors.white,
                  fontWeight: FontWeight.w400),
              unselectedLabelStyle: const TextStyle(fontSize: 12),
              elevation: 0,
              backgroundColor: Colors.transparent,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              currentIndex: 0,
              onTap: (value) {
                List<bool> list = [false, false, false, false];
                list[value] = true;
                setState(() {

                });
              },
              items: const [
                BottomNavigationBarItem(
                    icon:Icon(Icons.sd_storage_outlined),
                    label: "Records"),
                BottomNavigationBarItem(
                    icon:Icon(Icons.insights),
                    label: "Insight"),

              ],

            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: InkWell(
            onTap: () {

            },
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: blueFF113184Color),
                borderRadius: const BorderRadius.all(Radius.circular(50))
              ),

              child:
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: blueFF01BBEDColor,
                      borderRadius: BorderRadius.circular(25)
                ),
                child:const Icon(Icons.pause)
              ),
            ),
          ),
        ),
          ),
        );
  }

}
