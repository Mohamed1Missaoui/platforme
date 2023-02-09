import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:liste/typeInscription%20copy.dart';





class Inscription extends StatefulWidget {
  const Inscription({Key? key, required String title}) : super(key: key);

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
 final TextEditingController _firstname = TextEditingController();
 final TextEditingController _lastname = TextEditingController();
  final TextEditingController date = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _telphonne = TextEditingController();
  // ignore: non_constant_identifier_names
  final TextEditingController _NbreAcompAduel = TextEditingController();
  // ignore: non_constant_identifier_names
  final TextEditingController _VbreAcompEnf = TextEditingController();
  final TextEditingController _datadepart = TextEditingController();
  final TextEditingController _dataArive = TextEditingController();
  
  

  final _formKey = GlobalKey<FormState>();
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 4, 22, 93),
      appBar: AppBar(
    title: const Text(" Inscription ")
      ),
      body: Container(
            child: Center(
              child: Form(
               key: _formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: TextField(
                      controller: _firstname,
                      decoration:const  InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Prenom",
                          icon: Icon(Icons.person)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: TextField(
                      controller: _lastname,
                      decoration:const  InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Nom",
                          icon: Icon(Icons.person)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: TextFormField(
                      controller: date,
                      decoration:const InputDecoration(
                          icon: Icon(Icons.calendar_today_rounded),
                          labelText: "Date d'inscree"),
                      onTap: () async {
                        DateTime? dateDeCueillette = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2023));
                        if (dateDeCueillette != null) {
                          setState(() {
                            date.text =
                                DateFormat("yyyy-MM-dd").format(dateDeCueillette);
                          });
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: TextField(
                      controller: _telphonne,
                      decoration:const  InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Telphonne",
                          icon: Icon(Icons.person)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _email,
                      decoration:const  InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "email",
                          icon: Icon(Icons.person)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: TextField(
                      controller: _NbreAcompAduel,
                      decoration:const  InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "nombre d’accompagnants adultes,",
                          icon: Icon(Icons.person)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: TextField(
                      controller: _VbreAcompEnf,
                      decoration:const  InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "nombre d’accompagnants enfants,",
                          icon: Icon(Icons.person)),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: TextFormField(
                      controller: _datadepart,
                      decoration:const InputDecoration(
                          icon: Icon(Icons.calendar_today_rounded),
                          labelText: "Date depart"),
                      onTap: () async {
                        DateTime? dateDeCueillette = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2023));
                        if (dateDeCueillette != null) {
                          setState(() {
                            date.text =
                                DateFormat("yyyy-MM-dd").format(dateDeCueillette);
                          });
                        }
                      },
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: TextFormField(
                      controller: _dataArive,
                      decoration:const InputDecoration(
                          icon: Icon(Icons.calendar_today_rounded),
                          labelText: "Date d'arive"),
                      onTap: () async {
                        DateTime? dateDeCueillette = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1990),
                            lastDate: DateTime(2023));
                        if (dateDeCueillette != null) {
                          setState(() {
                            date.text =
                                DateFormat("yyyy-MM-dd").format(dateDeCueillette);
                          });
                        }
                      },
                    ),
                  ),
                  Padding(
                    
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          // ignore: prefer_const_constructors
                          children: const [Text(
                              "Categories",
                              style: TextStyle(fontSize: 15, color: Colors.yellow),
                            ),
                            SizedBox(
                              height: 30,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value as int;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Tunise",
                              style: TextStyle(color: Colors.yellow),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                value: 2,
                                groupValue: _value,
                                onChanged: (value) {
                                  setState(() {
                                    _value = value as int;
                                  });
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "etranger",
                              style: TextStyle(color: Colors.yellow),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  
                               
                  Padding(
                    padding:const  EdgeInsets.all(3.0),
                     child: ElevatedButton(
          child: const Text("Type d'inscription"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TypeInscription()),
            );
               onPressed: () {
  Navigator.pop(context);
  
};
          },
        ),
                  )
                ],
              )),
            ),
          ),
        
      
    );
  }
}

