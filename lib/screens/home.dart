import 'package:flutter/material.dart';
import "number.dart";


class HomeScreen extends StatefulWidget{
  @override
  _HomeScreen createState()=> _HomeScreen();
}


class _HomeScreen extends State<HomeScreen>{

  TextEditingController controller=TextEditingController();

    var buttonStyle=ElevatedButton.styleFrom(
                   primary:const Color.fromRGBO(194, 49, 143, 1)
                   );


    var inputDecoration=const InputDecoration(
                                    border:OutlineInputBorder(),
                                    hintText:"Digite um número"
                        );

  
  @override
  Widget build(BuildContext context){
    //Pegando a altura e largura da tela
    var screenHeight=MediaQuery.of(context).size.height;
    var screenWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: ListView(
          children:[
            Column(
              children: [
                Container(
                  width:screenWidth,
                  height:screenHeight/2,
                  decoration:const BoxDecoration(
                    color:Color.fromRGBO(194, 49, 143, 1),
                    borderRadius:BorderRadius.only(
                      bottomRight:Radius.circular(10),
                      bottomLeft:Radius.circular(10),)
                  ),
                    child:Image.asset("assets/images/lotofacil.png")
                ),
                Container(
                  margin:const EdgeInsets.only(top:30, left:20, right:20),
                  child: Column(
                    children:[
                      TextField(
                      keyboardType:TextInputType.number,
                      maxLength:4,
                      decoration:inputDecoration,
                      controller:controller
                      ),
                      Container(
                        padding:const EdgeInsets.all(20),
                        margin:const EdgeInsets.only(top: 20),
                        width:screenWidth,
                        height:screenHeight/7,
                        child: ElevatedButton(
                        style:buttonStyle,
                        onPressed:(){
                          Navigator.push(context,
                          MaterialPageRoute(
                            //Passando as infos necessárias pra outra tela
                            builder:(context)=>NumberScreen(
                            numeroConcurso:controller.text,
                            buttonStyle:buttonStyle,
                            inputDecoration:inputDecoration
                                )
                              ));
                            },
                            child:const Text("Pesquisar concurso", style:TextStyle(
                              fontSize:20
                            ))
                        ),
                      ),
                    ]
                  ),
                ),
              ],
            )
          ]
        )
      )
    );
  }



}


