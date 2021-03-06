import 'package:flutter/material.dart'; 

void main() => runApp(new MyApp()); 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:new LoginPage(), 
      theme:new ThemeData(primarySwatch:Colors.blue), 
    ); 
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState(); 
}

class LoginPageState extends State < LoginPage > 
    with SingleTickerProviderStateMixin {
  AnimationController _iconAnimationController; 
  Animation < double > _iconAnimation; 

  @override
  void initState() {
    super.initState(); 
    _iconAnimationController = new AnimationController(
        vsync:this, duration:new Duration(milliseconds:500)); 
    _iconAnimation = new CurvedAnimation(
        parent:_iconAnimationController, curve:Curves.easeOut); 
    _iconAnimation.addListener(() => this.setState(() {})); 
    _iconAnimationController.forward(); 
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor:Colors.pinkAccent, 
      body:new Stack(
        fit:StackFit.expand, 
        children: < Widget > [
          new Image(
            image:new AssetImage("assets/login_back.jpg"), 
            fit:BoxFit.cover, 
            color:Colors.black54, 
            colorBlendMode:BlendMode.darken, 
          ), 
          new Column(
            mainAxisAlignment:MainAxisAlignment.center, 
            children: < Widget > [
              new Image(
                image:new AssetImage("assets/3d.png"), 
                height:150.0, 
                width:150.0, 
              ), 
              new Form(
                child:new Theme(
                  data:new ThemeData(
                      brightness:Brightness.dark, 
                      primarySwatch:Colors.pink, 
                      inputDecorationTheme:InputDecorationTheme(
                          labelStyle:new TextStyle(
                        color:Colors.pink, 
                        fontSize:20.0, 
                      ))), 
                  child:new Container(
                    padding:const EdgeInsets.all(40.0), 
                    child:new Column(
                      crossAxisAlignment:CrossAxisAlignment.center, 
                      children: < Widget > [
                        new TextFormField(
                          decoration:
                              new InputDecoration(labelText:"Enter Email"), 
                          keyboardType:TextInputType.emailAddress, 
                        ), 
                        new TextFormField(
                          decoration:
                              new InputDecoration(labelText:"Enter Password"), 
                          keyboardType:TextInputType.text, 
                          obscureText:true, 
                        ), 
                        new Padding(
                          padding:const EdgeInsets.only(top:40.0), 
                        ), 
                        new MaterialButton(
                          height:50.0, 
                          minWidth:120.0, 
                          color:Colors.pink, 
                          textColor:Colors.white, 
                          child:new Icon(Icons.input, size:30), 
                          onPressed:() =>  {}, 
                        )
                      ], 
                    ), 
                  ), 
                ), 
              )
            ], 
          )
        ], 
      ), 
    ); 
  }
}
