import 'package:flutter/material.dart';


class Paiement extends StatefulWidget {
  const Paiement({super.key});

  @override
  State<Paiement> createState() => _PaiementState();
}

class _PaiementState extends State<Paiement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:
      ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('payee'),
        ),

    );
  }
}