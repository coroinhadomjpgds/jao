import 'package:flutter/material.dart';
import 'package:project/paginasegunda.dart';

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .secondary,
        title: const Text("Aplicativo do JãoJão"),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
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
              Divider(
                height: 15,
                thickness: 10,
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
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context)
                  {
                    return const PaginaPrincipal();
                  };)},
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
          child: Text('proxima pagina'),
        ),
      ),
    );
  }
}
