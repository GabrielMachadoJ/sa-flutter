import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
      body: Stack(
        children: [
          Column(
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
                        image: AssetImage("images/quarto.jpg"),
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
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text('Quartos disponíveis:',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w100,
                    )),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 5,
                  childAspectRatio: 1,
                  children: List.generate(
                    5,
                    (index) => Container(
                      margin: const EdgeInsets.all(7.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5,
                            offset: const Offset(1, 1),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          Image.asset(
                            'images/quarto$index.jpg',
                            width: 200,
                            height: 90,
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Diária: R\$ 20$index,00',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.grey[600]),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'Desconto de ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue[400],
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      padding: const EdgeInsets.all(2),
                                      child: Text(
                                        '1$index%',
                                        style: const TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                ElevatedButton(
                                  onPressed: _toggleModal,
                                  child: const Text('Reservar'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (_showModal)
            GestureDetector(
              onTap: _toggleModal,
              child: Container(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          if (_showModal)
            Center(
              child: Container(
                width: 400,
                height: 430,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.95),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Dados para Reserva',
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
                      const SizedBox(height: 20),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Telefone',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: _toggleModal,
                        child: const Text('Pagamento'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
