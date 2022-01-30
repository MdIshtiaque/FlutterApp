import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';



class homescr extends StatelessWidget {
  const homescr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: loginsignup(),
    );
  }
}

class loginsignup extends StatelessWidget {
  const loginsignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFEF9A2C),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width / 1.25,
            child: Stack(
              children: [
                Positioned(
                    child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/1.png"))),
                )),
                Padding(
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width / 18,
                        MediaQuery.of(context).size.height / 5,
                        0,
                        0),
                    child: const AutoSizeText(
                      "Welcome",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                    )),
                Container(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: FlatButton(
                          color: const Color(0xFFEF9A2C),
                          padding: const EdgeInsets.symmetric(
                            vertical: 18,
                            horizontal: 85,
                          ),
                          onPressed: () {},
                          child: const AutoSizeText(
                            "LOGIN",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ))),
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width / 20,
                      MediaQuery.of(context).size.height - 400,
                      0,
                      0),
                ),
                //Padding(padding: EdgeInsets.symmetric(horizontal: 50,vertical: 50)),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: FlatButton(
                            color: const Color(0xFFEF9A2C),
                            padding: const EdgeInsets.symmetric(
                                vertical: 18, horizontal: 80),
                            onPressed: () {},
                            child: const AutoSizeText(
                              "SIGN UP",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ))),
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width / 20,
                        MediaQuery.of(context).size.height - 340,
                        0,
                        0),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
