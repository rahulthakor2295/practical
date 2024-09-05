import 'dart:ui';

import 'package:flutter/material.dart';

styleRegular({
  required double size,
  required Color color
}){
  return TextStyle(color: color,fontSize: size,);
}

styleBold({
  required double size,
  required Color color
}){
  return TextStyle(color: color,fontSize: size,fontWeight: FontWeight.bold);
}