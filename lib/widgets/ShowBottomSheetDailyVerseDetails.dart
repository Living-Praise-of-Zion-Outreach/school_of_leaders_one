import 'package:flutter/material.dart';

class ShowBottomSheetDailyVerseDetails extends StatelessWidget {

  const ShowBottomSheetDailyVerseDetails();

  void showBottomSheet(BuildContext context){
    Scaffold.of(context).showBottomSheet((BuildContext context) {
      return Container(
        height: 200,
        color: Colors.amber,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text('BottomSheet'),
              ElevatedButton(
                child: const Text('Close BottomSheet'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      );
    },
    );
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero,(){
      showBottomSheet(context);
    });
    return SizedBox(height: 0,);
  }
}
