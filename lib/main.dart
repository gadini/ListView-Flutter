import 'package:flutter/material.dart';

import 'Contato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListaPage(),
    );
  }
}

class ListaPage extends StatelessWidget {
  ListaPage({super.key});

  final List<Contato> contatos = 
  [
    Contato(nome: 'Gustavo', email: 'gustavo@gmail.com'),
    Contato(nome: 'Camila', email: 'camila@gmail.com'),
    Contato(nome: 'Rafael', email: 'rafael@gmail.com'),
    Contato(nome: 'André', email: 'andre@gmail.com'),
    Contato(nome: 'Laura', email: 'laura@gmail.com'),
    Contato(nome: 'Pedro', email: 'pedro@gmail.com'),
    Contato(nome: 'Sofia', email: 'sofia@gmail.com'),
    Contato(nome: 'Carlos', email: 'carlos@gmail.com'),
    Contato(nome: 'Ana', email: 'ana@gmail.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contatos')
      ),
      body: ListView.builder(
        itemCount: 9,
        itemBuilder: (BuildContext context, int index){
        return ListTile(
          leading: CircleAvatar(
            child: 
            Text(contatos[index].nome.characters.first),
          ),
          title: Text(contatos[index].nome),
          subtitle: Text(contatos[index].email),
        );
      })
    );
  }
}

