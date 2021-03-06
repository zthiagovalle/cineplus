import 'package:flutter/material.dart';
import 'package:cineplus/widgets/widget_filme.dart';

class Profile extends StatefulWidget {
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    //Recuperar o ID do Documento
    final String idUsuario = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        centerTitle: true,
        backgroundColor: Colors.black12,
      ),
      backgroundColor: Colors.deepPurple,
      body: Column(
            children: <Widget>[

              Text('Olá ${idUsuario}', style: TextStyle(fontSize: 40), textAlign: TextAlign.left ,),
              
              SizedBox(height: 50,),
              Text('Minha lista', style: TextStyle(fontSize: 25), textAlign: TextAlign.left ,),
                      
              SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                      children: <Widget>[
                      FilmeWidget(),
                        ],
                      ), 
                    ),

            ],
          ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black38,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(icon: Icon(Icons.person), color: Colors.deepOrange , 
            onPressed: () { Navigator.pushNamed(context, '/profile',arguments: idUsuario); },),
            title: Text('Perfil', style: TextStyle(color: Colors.white),),
            ),
          BottomNavigationBarItem(
            icon: IconButton(icon: Icon(Icons.home), color: Colors.deepOrange,
            onPressed: () { Navigator.pushNamed(context, '/cineplus',arguments: idUsuario); },),
            title: Text('Home', style: TextStyle(color: Colors.white),),
            ),
          BottomNavigationBarItem(
            icon: IconButton(icon: Icon(Icons.speaker_notes),  color: Colors.deepOrange ,
            onPressed: () { Navigator.pushNamed(context, '/about',arguments: idUsuario); },),
            title: Text('Sobre', style: TextStyle(color: Colors.white),),
            ),
        ] ),
    );
  }
}