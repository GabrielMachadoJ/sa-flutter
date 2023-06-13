import 'package:flutter/material.dart';

class RoomRegister extends StatefulWidget {
  const RoomRegister({Key? key}) : super(key: key);

  @override
  _RoomRegisterState createState() => _RoomRegisterState();
}

class _RoomRegisterState extends State<RoomRegister> {
  bool _showModal = false;

  void _toggleModal() {
    setState(() {
      _showModal = !_showModal;
    });
  }

  void _selectDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
  }

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
        child: Align(
          alignment: Alignment.center,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 400.0,
              maxHeight: 600.0,
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
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Descrição',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Valor',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Desconto',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    labelText: 'URL da imagem do quarto',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Ação ao cadastrar
                      },
                      child: Text('Cadastrar'),
                    ),
                    SizedBox(width: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        // Ação ao cadastrar
                      },
                      child: Text('Cancelar'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
