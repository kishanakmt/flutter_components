import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class DialogComponent extends StatefulWidget {
  const DialogComponent({super.key});

  @override
  State<DialogComponent> createState() => _DialogComponentState();
}

class _DialogComponentState extends State<DialogComponent> {

  late final TextEditingController controller;
  String name ='';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.blueGrey,
          title: Text("Dialog Box Screen",style: TextStyle(color: Colors.white),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Get.offAllNamed(Routes.homeComponentScreen,
              );
            },
          ),),
        body: SafeArea(
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              //------------------------------------------- open DialogBox ---------------------------------------------------
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey,
            ),
            onPressed: () {
              _showContent();
            },
            child: const Text('Open Dialog'),
          ),
              const SizedBox(
                height: 10.0,
              ),
              //------------------------------------ dialog in textEdit ------------------------------------------------
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple,
                ),
                onPressed: ()async {
                  final name =await openDialog();
                  if(name ==null) return;
                  setState(() {
                    this.name = name.toString();
                  });
                },
                child: const Text(' Dialog TextEdit'),
              ),
              Text(name.toString()),

              //-------------------------------------- close dialog -------------------------------------------------------------

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.brown[400],
                ),
                onPressed: ()async {
                    _closeDialog();
                },
                child: const Text(' Dialog Close'),
              ),
        ]),
      ),
    ));
  }

  void _showContent() {
    showDialog(
        context: context,
        barrierDismissible: false, // user must tap button!

        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('You clicked on'),
            content: const Text('This is a Dialog Box. Click OK to Close.'),
            actions: [
              ElevatedButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              ElevatedButton(
                child: const Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  Future<String?> openDialog() => showDialog<String>(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Name'),
      content: TextField(
        controller: controller,
        decoration: const InputDecoration(hintText: 'Enter Name'),
      ),
      actions: [
        ElevatedButton(
          child: const Text('Submit'),
          onPressed: () {
            Navigator.of(context).pop(controller.text);
          },
        ),
      ],
    )
  );

  void _closeDialog() {
    showDialog(
        context: context,
        barrierDismissible: true, // user must tap button!

        builder: (BuildContext context) {
          return  AlertDialog(
            content: Container(
                 height: 100,
              color: Colors.white,
              child:   Column(children: [
                Align(alignment: Alignment.topRight,
                    child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: const Icon(Icons.close,color: Colors.red,))),
                const Text('Name'),const Text('This is a Dialog Box. Click OK to Close.'),
              ],),
            ),
            actions: [
              ElevatedButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
             // SizedBox(width: 30,)
            ],
          );

              }  );

  }

}
