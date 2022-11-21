import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({key? key}) : super(key:key);

  
  @override
  _MyAppState createState() => _MyAppState();

  class _MyAppState extends State<MyApp>{
    @override
    Widget build(BuildContext context){
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Login Page'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold
                  ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Form(
                  child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter Email',
                          prefixIcon: Icon(Icon.email),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value){
                        },
                        validator: ((value){
                          return value!.isEmpty ? 'Please Enter Email' : null;
                          },
                        ),
                      ),
                    ),

                    SizedBox(height: 30,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter Password',
                          prefixIcon: Icon(Icon.password),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value){
                        },
                        validator: ((value){
                          return value.isEmpty ? 'Please Enter Password' : null;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: MaterialButton(
                      minWidth: double.infinity,
                      onPressed: () {},
                      child: Text('Login'),
                      color: Colors.teal,
                      textColor: Colors.white,
                      ),
                    ),
                  ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }