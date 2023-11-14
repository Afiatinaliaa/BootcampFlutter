void main() async {
  var h = Human();

  print('Luffy');
  print('zoro');
  print('killer');
  print(h.name);
  await h.getDataAsyn();
  print('name 3 :' + h.name);
}


class Human {
  String name = 'Nama karakter one piece';

  void getData() {
    name = 'hilmy';
    print('get data [Done]');
  }

  Future<void> getDataAsyn() async {
    await Future.delayed(Duration(seconds: 3));
    name = 'hilmy';
    print('get data [Done]');
  }
}