Future delayedPrint(int seconds, String message){
  final duration = Duration(seconds : seconds);
  return Future.delayed(Duration()).then((value) => message);
  }

  void main(){
    print('Life');
    delayedPrint(2, 'Never flat'). then((status){
      print(status);
      });
      print('is');
      }