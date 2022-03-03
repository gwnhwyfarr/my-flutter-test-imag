import 'package:flutter/material.dart';
 
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Isso é tudo pessoal!!!'),
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
 
  final String title;
 
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  CircleAvatar(backgroundImage: NetworkImage("https://terracoeconomico.com.br/wp-content/uploads/2020/11/putin.jpg"),),
                  CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv_SXsLSJpD0l1aELhjaWpvoJCfC4F3kBcCQ&usqp=CAU"),),
                  CircleAvatar(backgroundImage: NetworkImage("https://veja.abril.com.br/wp-content/uploads/2021/02/Bolsonaro-sorrindo.jpg"),),
                ],
              ),
            
            Container(
              child: Column(
                children: [
                  Container(child: Image.network("https://s2.glbimg.com/ZNjoLl4oX5yH5LTgSEilKHRGHEc=/smart/e.glbimg.com/og/ed/f/original/2019/07/05/far-from-home-edith-glasses.png")),
                   Container(child: Center(  
                        child: Text("evangelion", 
                        style: TextStyle(color: Colors.blue, fontSize: 20, ),
                              ),
                             ),
                  ),
                ],
              ),
            ),
            
            Container(
              color: Colors.yellow,
              width: double.infinity,
              height: 50,
              child: Center(  
                child: Text("O valor do contador é: ", 
                        style: TextStyle(color: Colors.blue, fontSize: 20, ),
                       ),
              ),
            ),
            Container(
              color: Colors.amber,
              width: double.infinity,
              height: 50,
              child: Center(
                child: Text("$_counter", 
                       style: TextStyle(color: Colors.blue, fontSize: 40),
                       ),
              ),
            ),
          ],
        ),
      ),
 
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _counter++;
          });
        },
        tooltip: 'Incrementando',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
