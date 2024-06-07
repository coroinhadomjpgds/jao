import 'package:flutter/material.dart';

class PaginaSegunda extends StatelessWidget {
  const PaginaSegunda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Aplicativo do JãoJão"),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: const [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                accountName: Text("JãoJão das meninas"),
                accountEmail: Text("jpedro.01@outlook.com"),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://blog.sebastiano.dev/content/images/2019/07/1_l3wujEgEKOecwVzf_dqVrQ.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              ListTile(
                trailing: Icon(Icons.mouse),
                leading: Icon(Icons.settings),
                title: Text("Rolls Royce pamolive "),
                subtitle: Text("dige capô"),
              ),
              ListTile(
                trailing: Icon(Icons.mouse),
                leading: Icon(Icons.settings),
                title: Text("Rolls Royce pamolive "),
                subtitle: Text("dige capô"),
              ),
              ListTile(
                trailing: Icon(Icons.mouse),
                leading: Icon(Icons.settings),
                title: Text("Rolls Royce pamolive "),
                subtitle: Text("dige capô"),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const PaginaSegunda();
            }));
            print('botão pressionado');
          },
          child: Text('segunda pagina'),
        ),
      ),
    );
  }
}
