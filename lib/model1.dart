import 'package:flutter/material.dart';

class ImagesModel {
  final String img;
  final String country;
  final String town;




  ImagesModel({required this.country, required this.img, required this.town}); }
List<ImagesModel> list1= [
ImagesModel(country: "Egypt", img:"assets/images/pyramids.jpg" , town: "cairo"),
  ImagesModel(country: "IceLand", img:"assets/images/iceland.jpg" , town: "Gullfoss"),
  ImagesModel(country: "England", img:"assets/images/london.jpg" , town: "London"),


];
List<ImagesModel> list2= [
  ImagesModel(country: "Egypt", img:"assets/images/aswan.jpg" , town: "Aswan"),
  ImagesModel(country: "Usa", img:"assets/images/usa.jpg" , town: "Angeles"),
  ImagesModel(country: "China", img:"assets/images/china.webp" , town: "Beijing"),


];
