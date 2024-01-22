import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class Onboardingproviders with ChangeNotifier{
  int _currentindex=0;
   int get currentpage=> _currentindex;
   void setpage(int newindex){
    final isfirstpage=newindex==0;
    final issecondpage=newindex==1;
    final isthirdpage=newindex==2;
    _currentindex=newindex;
    notifyListeners();
   }

}