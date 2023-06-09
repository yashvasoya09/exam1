import 'package:exam1/Home/DATA%20MODEL.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_textfield/gradient_textfield.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  TextEditingController txtno = TextEditingController();
  Model m1 = Model();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black26,
      body: Center(
        child: Column(
          children: [
            GradientAppBar(txtno.text),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Gradienttextfield(
                controller: txtno,
                radius: 40,
                height: 60,
                width: 400,
                colors: [Colors.pink, Colors.red, Colors.orange],
                text: "Enter No.",
                fontColor: Colors.black,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(onPressed: (){
              String? no = txtno.text;
              int i = int.parse(no);
              Model m1 = Model (a: i);
              Navigator.pushNamed(context, 'final',arguments: m1);
            }, child: Icon(Icons.navigate_next_outlined)),
            Spacer(),
          ],
        ),
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
