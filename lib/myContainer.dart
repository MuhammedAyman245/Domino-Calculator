import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  MyContainer(
      {@required this.controller,
      @required this.text,
      @required this.hint,
      @required this.onpressed1,
      @required this.onpressed2,
      @required this.onpressed3,
      @required this.onpressed4,
      @required this.onpressed5,
      @required this.onpressed6,
      @required this.onpressed7,
      @required this.onpressedm});
  TextEditingController controller = TextEditingController();
  String hint, text;
  final Function onpressed1;
  final Function onpressed2;
  final Function onpressed3;
  final Function onpressed4;
  final Function onpressed5;
  final Function onpressed6;
  final Function onpressed7;
  final Function onpressedm;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFF1D1E33), borderRadius: BorderRadius.circular(20.0)),
      height: 270.0,
      width: 100.0,
      child: Column(
        children: [
          TextField(
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                contentPadding: EdgeInsets.all(15.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                hintText: hint,
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              )),
          Text(
            '$text',
            style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Row(
            children: [
              Expanded(
                  flex: 5,
                  child: TextButton(
                      onPressed: onpressed1,
                      child: Text(
                        '+1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ))),
              Expanded(
                  flex: 5,
                  child: TextButton(
                      onPressed: onpressed2,
                      child: Text(
                        '+2',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ))),
              Expanded(
                  flex: 5,
                  child: TextButton(
                      onPressed: onpressed3,
                      child: Text(
                        '+3',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ))),
            ],
          ),
          Row(
            children: [
              Expanded(
                  flex: 5,
                  child: TextButton(
                      onPressed: onpressed4,
                      child: Text(
                        '+4',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ))),
              Expanded(
                  flex: 5,
                  child: TextButton(
                      onPressed: onpressed5,
                      child: Text(
                        '+5',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ))),
              Expanded(
                  flex: 5,
                  child: TextButton(
                      onPressed: onpressed6,
                      child: Text(
                        '+6',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ))),
            ],
          ),
          Row(children: [
            Expanded(
                flex: 5,
                child: TextButton(
                    onPressed: onpressed7,
                    child: Text(
                      '+7',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ))),
            Expanded(
                flex: 5,
                child: TextButton(
                  onPressed: () {},
                  child: null,
                )),
            Expanded(
                flex: 5,
                child: TextButton(
                    onPressed: onpressedm,
                    child: Text(
                      '-',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ))),
          ]),
        ],
      ),
    );
  }
}
