import 'package:flutter/material.dart';
import './dropdownModel.dart';

class CusDropDown extends StatefulWidget {
  @override
  _CusDropDownState createState() => _CusDropDownState();
}

class _CusDropDownState extends State<CusDropDown> {
  var selectedUser;

  List<Company> dropList = [
    Company(1, 'Google'),
    Company(2, 'Microsoft'),
    Company(3, 'Apple'),
    Company(4, 'Harsh'),
    Company(5, 'oracle'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:10),
      width: 246,
      child: DropdownButton<Company>(
        isExpanded: true,
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 30,
        underline: Container(
          color: Colors.white,
        ),
        style: TextStyle(
            color: Color.fromRGBO(82, 90, 101, 1),
            fontSize: 15,
            fontWeight: FontWeight.bold),
        hint: Text('SELECT ITEM'),
        value: selectedUser,
        onChanged: (Company value) {
          setState(() {
            selectedUser = value;
          });
        },
        items: dropList.map(
          (Company variable) {
            return DropdownMenuItem<Company>(
              value: variable,
              child: Container(
                child: Text(variable.name),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
