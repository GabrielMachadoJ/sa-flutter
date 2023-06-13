import 'package:flutter/material.dart';

class Default extends StatefulWidget {
  const Default({super.key});

  @override
  State<Default> createState() => _DefaultState();
}

class _DefaultState extends State<Default> with SingleTickerProviderStateMixin {
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
          SizedBox(
            width: 100,
            child: IconButton(
              onPressed: () {
                // Ação do ícone de usuário de login
              },
              icon: Row(
                children: const [
                  Icon(Icons.person),
                  SizedBox(width: 5),
                  Text("Login"),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(10, 10),
                    ),
                  ],
                  image: const DecorationImage(
                    image: AssetImage("images/Hotel.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: const EdgeInsets.all(15.0),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final containerWidth = constraints.maxWidth * 0.95;

                    return Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: containerWidth,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const SizedBox(width: 20),
                            const Text(
                              "Bem-Vindo ao Monte Claus Hotel IV",
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Flexible(
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Qtd. Adultos',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Flexible(
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Qtd. Crianças',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            ElevatedButton(
                              onPressed: _selectDate,
                              child: const Text('Data Check-in'),
                            ),
                            const SizedBox(width: 20),
                            ElevatedButton(
                              onPressed: _selectDate,
                              child: const Text('Data Check-out'),
                            ),
                            const SizedBox(width: 20),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
