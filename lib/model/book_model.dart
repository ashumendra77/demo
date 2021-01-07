import 'package:flutter/cupertino.dart';

class BookModel {
  String imageUrl;
  String name;
  String pdf;

  BookModel({@required this.imageUrl, @required this.name,@required this.pdf});
}

List<BookModel> bookmodel = [
  BookModel(imageUrl: 'assets/images/0.jpeg', name: 'The Good Guy',pdf: 'assets/cn.pdf'),
  BookModel(imageUrl: 'assets/images/1.jpeg', name: 'Where The Crawdads Sing',pdf: 'assets/cn.pdf'),
  BookModel(imageUrl: 'assets/images/2.jpeg', name: 'Amara The Brave',pdf: 'assets/cn.pdf'),
  BookModel(imageUrl: 'assets/images/3.jpeg', name: 'My English Book',pdf: 'assets/cn.pdf'),
  BookModel(imageUrl: 'assets/images/4.jpeg', name: 'Made Your Own Happiness',pdf: 'assets/cn.pdf'),
  BookModel(imageUrl: 'assets/images/5.jpeg', name: 'Kelley Armstrong',pdf: 'assets/cn.pdf'),
  BookModel(imageUrl: 'assets/images/6.jpeg', name: 'How To Finally Win',pdf: 'assets/cn.pdf'),
  BookModel(imageUrl: 'assets/images/7.jpeg', name: 'Space Booty',pdf: 'assets/cn.pdf'),
  BookModel(imageUrl: 'assets/images/8.jpeg', name: 'Motherhood',pdf: 'assets/cn.pdf'),
  BookModel(imageUrl: 'assets/images/9.jpeg', name: 'The Shack',pdf: 'assets/cn.pdf'),
  BookModel(imageUrl: 'assets/images/10.jpeg', name: 'Atlas Obscura',pdf: 'assets/cn.pdf'),
  BookModel(imageUrl: 'assets/images/11.jpeg', name: 'Albert Einstein',pdf: 'assets/cn.pdf'),
  BookModel(imageUrl: 'assets/images/12.jpeg', name: 'Blood Before Wine',pdf: 'assets/cn.pdf'),
  BookModel(imageUrl: 'assets/images/13.jpeg', name: 'Harry Potter',pdf: 'assets/cn.pdf')
];
