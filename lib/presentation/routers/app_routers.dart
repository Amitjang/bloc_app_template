
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../screens/dash_board/dash_board_screen.dart';




class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey =
  GlobalKey<NavigatorState>();
  static const String logInScreen = "/";
  static const String intro="/intro";
  static const String audioRecordingScreen="/AudioRecordingScreen";
  static const String dashBoardScreen="/DashBoardScreen";
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    switch (settings.name){

      case dashBoardScreen:
        return _dashBoardScreen();
      default:
        throw Exception("Route was not Found");


    }
  }
  static _dashBoardScreen(){
    return MaterialPageRoute(builder: (context) => const DashBoardScreen(),);
  }

}