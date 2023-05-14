import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Screen',
        ),
      ),
      body: Center(
        child:
            ListView(
              padding:const EdgeInsets.symmetric(
                vertical: 80,
                horizontal: 40
              ),
                     children: [
            const CircleAvatar(
            maxRadius: 100,
            backgroundImage: NetworkImage(
                'https://th.bing.com/th/id/OIP.BMdvAZS6ov9gOePVAz6-ggHaF7?pid=ImgDet&rs=1'),
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
            description: const Text('Github'),
            onPressed: () {},
                    ),
            
                    const SizedBox(height: 20),
            
                    CustomButton(
            description: const Text('Facebook'),
            onPressed: () {},
                    ),
            
                    const SizedBox(height: 20),
                    CustomButton(
            description: const Text('Twiter'),
            onPressed: () {},
                    ),
            const SizedBox(height: 20),
                    CustomButton(
            description: const Text('Whatsapp'),
            onPressed: () {},
                    )
                  ]),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Text description;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.description,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: description, 
      );
  }
}
