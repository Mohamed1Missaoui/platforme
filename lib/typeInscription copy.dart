import  'package:flutter/material.dart';
import 'package:liste/paiement.dart';




class TypeInscription extends StatefulWidget {
  const TypeInscription({super.key});

  @override
  State<TypeInscription> createState() => _TypeInscriptionState();
}

class _TypeInscriptionState extends State<TypeInscription> {
    String selectType = "";
  final typesselected = TextEditingController();
  List<String> types = ["Tunise", "Enseignant","Industriel"];
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: ElevatedButton(
           onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>const  Paiement()),
              
            );
               onPressed: () {
  Navigator.pop(context);
  child: const Text("Type D'inscription ");
};
          },
          
          child: const Text('Type Dinscription'),
          
        ),
        
        

      ),

      
     body: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                            Container(
                              child: Row(
                                
                                children: const [
                                  
                                   Image(image: AssetImage('assets/images/carte_jeune.png')),
                                  Text(
                                    "carte jeune",
                                    style: TextStyle(fontSize: 25, color: Colors.yellow),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                            
                             Container(
                               child: Row(
                                children: const [
                                   Image(image: AssetImage('assets/images/carte_smart.png')),
                                  Text(
                                    "carte smart",
                                    style: TextStyle(fontSize: 25, color: Colors.yellow),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                ],
                            ),
                             ),
                            
                          ],
                          
                      
                    ),
                  ),

    );
  }
}