import 'package:flutter/material.dart';
import 'package:flutter_app/data/model/m_breed.dart';
import 'package:get/get.dart';

class Wbreed extends StatelessWidget{
  final Breed breed;

  Wbreed({this.breed});
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: (){

        },
        child:Stack(
          children:<Widget> [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery
                      .of(context)
                      .size
                      .height /15,
                ),
                child:Text(breed.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color:  Color(0xFFfff9f9),
                    fontSize:  MediaQuery.of(context).size.height/65,
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}