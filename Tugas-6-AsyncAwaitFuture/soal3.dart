void main() async{
  print('Ready.sing');
  print(await line());
  print(await line2());
  print(await line3());
  print(await line4());
}



Future<String> line() async {
  String lyric = 'pernahkan kau merasa';
  return await Future.delayed(Duration(seconds: 3), () => (lyric));
}
Future<String> line2() async {
  String lyric = 'pernahkan kau merasa.......';
  return await Future.delayed(Duration(seconds: 2), () => (lyric));
}
Future<String> line3() async {
  String lyric = 'pernahkan kau merasa';
  return await Future.delayed(Duration(seconds: 3), () => (lyric));
}
Future<String> line4() async {
  String lyric = 'Hatimu hampa, pernahkan kau merasa hati mu kosong....';
  return await Future.delayed(Duration(seconds: 1), () => (lyric));
}