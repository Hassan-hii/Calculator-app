import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'button.dart';
class home extends StatefulWidget {

  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var userInput ='';
  var answer ='';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: SafeArea(

      child: Scaffold(
        backgroundColor: Colors.black,

        body:
        Column(
          children: [
            Expanded(child: Column(
              children: [
                Text(userInput.toString(),style: TextStyle(fontSize: 30 ,color: Colors.white),),
                Text(answer.toString(),style: TextStyle(fontSize: 30 ,color: Colors.white),),
              ],
            ),),
            Expanded(

flex: 3,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    child: Column(
                      children: [
                        Row(

      children: [
                            button(Title: 'A/C',onPress: (){
                              userInput ='';
                              setState(() {

                              });
                            }),
                        button(Title: '+/-',onPress: (){

                        }),
                        button(Title: '%',onPress: (){
                          userInput +='%';
                          setState(() {

                          });
                        }),
                        button(Title: '/',COLOR: Colors.orange,onPress: (){
                          userInput +='/';
                          setState(() {

                          });
                        })
      ]

                        ),
                        Row(

                            children: [
                              button(Title: '7',onPress: (){
                                userInput +='7';
                                setState(() {

                                });
                              }),
                              button(Title: '8',onPress: (){

                                userInput +='8';
                                setState(() {

                                });
                              }

                              ),
                              button(Title: '0',onPress: (){
                                userInput +='0';
                                setState(() {

                                });
                              }),
                              button(Title: 'x',COLOR: Colors.orange,onPress: (){
                                userInput +='x';
                                setState(() {

                                });
                              })
                            ]

                        ),
                        Row(

                            children: [
                              button(Title: '4',onPress: (){
                                userInput +='4';
                                setState(() {

                                });
                              }),
                              button(Title: '5',onPress: (){
                                userInput +='5';
                                setState(() {

                                });
                              }),
                              button(Title: '6',onPress: (){
                                userInput +='6';
                                setState(() {

                                });
                              }),
                              button(Title: '-',COLOR: Colors.orange,onPress: (){
                                userInput +='-';
                                setState(() {

                                });

                              })
                            ]

                        ),
                        Row(

                            children: [
                              button(Title: '1',onPress: (){
                                userInput +='1';
                                setState(() {

                                });
                              }),
                              button(Title: '2',onPress: (){
                                userInput +='2';
                                setState(() {

                                });
                              }),
                              button(Title: '3',onPress: (){
                                userInput +='3';
                                setState(() {

                                });
                              }),
                              button(Title: '+',COLOR: Colors.orange,onPress: (){
                                userInput +='+';
                                setState(() {

                                });
                              })
                            ]

                        ),
                        Row(

                            children: [
                              button(Title: '0',onPress: (){
                                userInput +='0';
                                setState(() {

                                });
                              }),
                              button(Title: '.',onPress: (){
                                userInput +='.';
                              setState(() {

                              });}),


                              button(Title: 'DEL',onPress: (){
                                userInput = userInput.substring(0,userInput.length -1);
                                setState(() {

                                });;
                              }),


                              button(Title: '=',COLOR: Colors.orange,onPress: (){

                                equalPress();
                                setState(() {

                                });
                              })
                            ]

                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),



      ),
      ),
    );
  }
  void equalPress(){
    String fus=userInput;
    fus=userInput.replaceAll('x', '*');
    Parser p= Parser();
    Expression expression =p.parse(fus);
    ContextModel contextModel=ContextModel();
    double eval=expression.evaluate(EvaluationType.REAL, contextModel);
    answer=eval.toString();

  }
}
