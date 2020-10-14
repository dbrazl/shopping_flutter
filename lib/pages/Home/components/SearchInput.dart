import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(Feather.search),
          SizedBox(width: 20),
          Flexible(
            flex: 10,
            child: TextFormField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintText: "Pesquisar",
                labelStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(1, 2),
            blurRadius: 5,
            color: Colors.black12,
            spreadRadius: 1,
          ),
        ],
      ),
      width: double.infinity,
      height: 50,
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
    );
  }
}
