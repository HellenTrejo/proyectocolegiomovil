import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:proyectocolegio/globals.dart' as globals;
import 'package:proyectocolegio/main.dart' as mein;



class FormCard extends StatefulWidget{
  @override
  _FormCardState createState() => _FormCardState();
}

class _FormCardState extends State<FormCard> {

   @override
   void dispose(){
     globals.userDniCtrl.dispose();
     globals.userPassCtrl.dispose();
     super.dispose();
   }
  
  @override
  Widget build(BuildContext context) {   
    return new Container(
                      width: double.infinity,
                      height: ScreenUtil.getInstance().setHeight(525),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 15.0),
                            blurRadius: 15.0),
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, -10.0),
                            blurRadius: 15.0),
                        ]),
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Login", 
                                style:TextStyle(
                                  fontSize: ScreenUtil.getInstance().setSp(45),
                                  fontFamily: "Poppins-Bold",
                                  letterSpacing: .6)),
                              SizedBox(
                                height: ScreenUtil.getInstance().setHeight(30),
                              ),
                              Text("Username", 
                                  style: TextStyle(
                                    fontFamily: "Poppins-Medium",
                                    fontSize: ScreenUtil.getInstance().setSp(26))),
                              TextField(
                                controller: globals.userDniCtrl,
                               
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  WhitelistingTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(8),
                                ],
                                 
                                decoration: InputDecoration(
                                  hintText: "username",
                                  hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 12.0)),
                                    
                              ),
                              SizedBox(
                                height: ScreenUtil.getInstance().setHeight(30),
                              ),
                              Text("Password", 
                                  style: TextStyle(
                                    fontFamily: "Poppins-Medium",
                                    fontSize: ScreenUtil.getInstance().setSp(26))),
                              TextField(
                                controller: globals.userPassCtrl,
                                
                                obscureText: true,
                                maxLength: 10,
                                decoration: InputDecoration(
                                  
                                  hintText: "password",
                                  hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 12.0)),
                              ),
                              SizedBox(
                                height: ScreenUtil.getInstance().setHeight(35),
                              ),
                            ],
                          ),
                        ),
                    );
  }
}


