import 'package:flutter/material.dart';

void main(){

  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text('Button and Padding'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                RaisedButton(
                  onPressed: (){},
                  child: Text('RaiseButton'),
                  color: Colors.deepOrangeAccent,
                  textColor: Colors.white,
                  elevation: 20,
                ),
                OutlineButton(
                  onPressed: (){},
                  child: Text('OutlinedButton'),
                  color: Colors.orange,
                  textColor: Colors.black,
                ),
                FlatButton(
                  onPressed: (){},
                  child: Text('FlatButton'),
                  color: Colors.red,
                  textColor: Colors.white,
                )
              ],
            ),
            Switch(
              onChanged: (IsEnable){},
              value: true,
            ),
            Slider(
              onChanged: (value){},
              value: 70,
              min: 1,
              max: 100,
            ),
            Image(
              image: NetworkImage('https://cdn.pixabay.com/photo/2021/09/15/12/27/flower-6626736_960_720.jpg'),
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'Type Your Name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Type Your Password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              child: RaisedButton(
                onPressed: (){},
                child: Text('Sign In'),
                color: Colors.indigo,
                textColor: Colors.white,
                elevation: 20,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.home_filled),
      ),
    );
  }
}

