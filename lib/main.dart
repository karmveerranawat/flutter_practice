import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));



class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CyberWizard'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.blueGrey,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(
              color: Colors.white,
              child: const Text('1'),
              padding: const EdgeInsets.only(bottom: 50.0),
            ),
          ),
          const SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: (){},
                  child: const Text(
                    '1',
                  )
              ),
              ElevatedButton(
                  onPressed: (){},
                  child: const Text(
                    '2',
                  )
              ),
              ElevatedButton(
                  onPressed: (){},
                  child: const Text(
                    '3',
                  )
              ),
              ElevatedButton(
                  onPressed: (){},
                  child: const Icon(
                      Icons.add
                  )
              )
            ],
          )
        ],
      )
    );
  }
}


