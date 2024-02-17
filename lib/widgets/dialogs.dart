import 'package:flutter/material.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(width: 20,),
          Text("Paiement en cours ..."),
        ],
      ),
    );
  }
}

Future<T?> showLoadingDialog<T>(BuildContext context){
  return showDialog<T>(
    barrierDismissible: false,
    context: context, builder: (context) => const LoadingDialog());
}

Future<T?> showErrorDialog<T>(BuildContext context, String error){
  return showDialog<T>(
  
    context: context, builder: (context) =>  ErrorDialog(error),);
}

closeDialog(BuildContext context){
  Navigator.of(context).pop(context);
}

class ErrorDialog extends StatelessWidget {
  final String error;
  const ErrorDialog(this.error,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      title: const Text("Oups!", style: TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold
      ),),
      content: Text(error),
      actions: [
        TextButton(onPressed: (){
          closeDialog(context);
        }, child: const Text("Fermer"))
      ],
    );
  }
}
