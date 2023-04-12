import 'package:exam1/Home/DATA%20MODEL.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class finalScreen extends StatefulWidget {
  const finalScreen({Key? key}) : super(key: key);

  @override
  State<finalScreen> createState() => _finalScreenState();
}

class _finalScreenState extends State<finalScreen> {
  @override
  Widget build(BuildContext context) {
    Model m1 = ModalRoute.of(context)!.settings.arguments as Model;
    return Scaffold(
      body: Column(
        children: [
          GradientAppBar("1"),
          SizedBox(height: 20),
          Container(height: 500,width: 300,child: Center(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(("${m1.a}")),
                  Expanded(
                    child: ListView.builder(itemBuilder: (context, index) {
                      return Text('${m1.a} * $index=${m1.a! * index}');
                    },itemCount: 10+2-1,),
                  )
                ],
              ),
            ),
          ),decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.pink,Colors.red,Colors.orange])),)

        ],
      ),
    );
  }
}


class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children : <Widget>[GradientAppBar("Custom Gradient App Bar"), Container()],);
  }
}


class GradientAppBar extends StatelessWidget {

  final String title;
  final double barHeight = 50.0;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery
        .of(context)
        .padding
        .top;

    return new Container(
      padding: EdgeInsets.only(top: statusbarHeight),
      height: statusbarHeight + barHeight,
      child: Center(
        child: Text(
          "Maltiplication Table",
          style: GoogleFonts.petrona(fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.pink,Colors.orange],
            begin:  FractionalOffset(0.0, 0.0),
            end:  FractionalOffset(0.5, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp
        ),
      ),
    );
  }
}
