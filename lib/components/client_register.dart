import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ClienteRegister extends StatefulWidget {
  const ClienteRegister({super.key});

  @override
  State<ClienteRegister> createState() => _ClienteRegisterState();
}

class _ClienteRegisterState extends State<ClienteRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Monte Claus Hotel IV"),
        actions: [
          Container(
            width: 200,
            child: IconButton(
              onPressed: () {
                // Ação do ícone de usuário de login
              },
              icon: Row(
                children: const [
                  Icon(Icons.person),
                  SizedBox(width: 5),
                  Text("Gabriel Machado"),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Image.asset(
                'images/logo2.png',
                width: 600,
                height: 300,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Página Inicial'),
              onTap: () {
                // Ação ao selecionar o ícone
              },
            ),
            ListTile(
              leading: Icon(Icons.bed),
              title: Text('Quartos'),
              onTap: () {
                // Ação ao selecionar o ícone
              },
            ),
            ListTile(
              leading: Icon(Icons.person_2),
              title: Text('Clientes'),
              onTap: () {
                // Ação ao selecionar o ícone
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Rel. Diário'),
              onTap: () {
                // Ação ao selecionar o ícone
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Rel. Reservas Não Pagas'),
              onTap: () {
                // Ação ao selecionar o ícone
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Rel. Reservas do dia'),
              onTap: () {
                // Ação ao selecionar o ícone
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Rel. Cancelas'),
              onTap: () {
                // Ação ao selecionar o ícone
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Sair'),
              onTap: () {
                // Ação ao selecionar o ícone
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.lightBlue[100],
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                constraints: const BoxConstraints(
                  maxWidth: 400.0,
                  maxHeight: 400.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Dados do cliente',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Nome Completo',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Row(children: const [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Cidade',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'UF',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(height: 20),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Rua',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Row(children: const [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Número',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Bairro',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Ação ao cadastrar
                          },
                          child: const Text('Cadastrar'),
                        ),
                        const SizedBox(width: 20.0),
                        ElevatedButton(
                          onPressed: () {
                            // Ação ao cadastrar
                          },
                          child: const Text('Cancelar'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Cadastro de Cliente',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
