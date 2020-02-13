import 'package:aproduct/models/user_model.dart';
import 'package:aproduct/utility/my_style.dart';
import 'package:flutter/material.dart';

// slt
class ListProduct extends StatefulWidget {
  final UserModel userModel;
  ListProduct({Key key, this.userModel}) : super(key: key);

  @override
  _ListProductState createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
// Field
  String nameLogin = '';
  UserModel currentMosel;

// Method
@override
void initState(){
  super.initState();
  currentMosel = widget.userModel;
  nameLogin = currentMosel.name;
}


  Widget showTitle() {
    return Text('Product');
  }

  Widget showName() {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('$nameLogin'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: <Widget>[showName()],
        title: showTitle(),
        backgroundColor: Mystyle().textColor,
      ),
    );
  }
}
