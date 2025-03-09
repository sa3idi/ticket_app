import 'package:flutter/material.dart';
import 'package:ticket_app/base/app_utils/app_routes.dart';

void main() {
  runApp(const MyApp());
  // var car = Car(4);
  // car.wheelsNum();
  // car.carType();
  //
  // var plane = Plane(3);
  // plane.wheelsNum();
  // plane.planeType();
}
// /*                          Inheritance and Polymorphism
// *
// *********************  Abstract class  (Parent Class)  **********************************
// */
// abstract class Vehicle {
//   Vehicle(this.wheels);       // Initialisation Constructor for parent class
//   int wheels;
//   void wheelsNum();
// }
// /* *******************    Concrete Class  (Child Class)    *******************************/
// class Car extends Vehicle {
//   Car(super.wheels);                // Initialisation Constructor for child class
//   void carType() {
//     print("Honda !!!");
//   }
//
//   @override
//   void wheelsNum() {
//     print("Number of wheels is $wheels");
//   }
// }
//
// /* *******************    Concrete Class    *******************************/
// class Plane extends Vehicle {
//   Plane(super.wheels);        // Initialisation Constructor for child class
//
//   void planeType() {
//     print("Boeing !!!");
//   }
//
//   @override
//   void wheelsNum() {
//     print("Number of wheels is $wheels");
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(),
      initialRoute: AppRoutes.home,
      routes: AppRoutes.routes,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}

/*class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:', ),
            Text('$_counter', style: Theme.of(context).textTheme.headlineMedium, ),
          ],
        ),
      ),
      floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
        FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: _decrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.remove_circle),
        )
      ]),
    );
  }
}*/
