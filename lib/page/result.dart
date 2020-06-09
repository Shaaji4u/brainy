import 'package:flutter/material.dart';

import '../theme/theme.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IQ Result", style: Theme.of(context).textTheme.headline3),
        centerTitle: true,
        backgroundColor: Color(0xFF040c4f),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: gradientBg),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              
              Expanded(
                flex: 2,
                              child: Center(
                    child: Text(
                  "Output Will be displayed here\nThanks",
                  style: Theme.of(context).textTheme.headline3,
                )),
              ),
              Expanded(flex: 3,
                child: Container(child: Text("data"),)),
              Expanded(
                flex: 1,
                              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Center(
                    child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: MediaQuery.of(context).size.width * .3),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            'Done',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        )),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
