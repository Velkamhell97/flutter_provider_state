import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/src/providers/user_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final user = userProvider.getUser();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pushNamed('/detail'), 
            icon: const Icon(Icons.arrow_forward)
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: !userProvider.existUser ? const Center(
          child: Text('There is not loaded user')
        ) : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('General', style: Theme.of(context).textTheme.titleLarge),
            ListTile(title: Text('Name: ${user!.name}')),
            ListTile(title: Text('Age: ${user.age ?? ''}')),

            const SizedBox(height: 10.0),

            Text('Professions', style: Theme.of(context).textTheme.titleLarge),
            for(String profession in user.professions) ListTile(title: Text(profession))
          ],
        )
      )
    );
  }
}