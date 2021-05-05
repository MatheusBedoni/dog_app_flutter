import 'package:flutter/material.dart';
import 'package:flutter_app/data/model/m_breed.dart';
import 'package:flutter_app/views/widgets/w_breed.dart';


class WbreedList extends StatelessWidget{
  final List<Breed> listBreed;

  WbreedList({this.listBreed});
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: new ListView.builder(
          shrinkWrap: true,
          itemCount:listBreed.length,
          itemBuilder: (BuildContext context, int index) {
            return new Wbreed(breed:listBreed[index] );
          }),
    )
    ;

  }


}