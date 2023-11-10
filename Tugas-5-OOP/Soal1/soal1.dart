void main() {
  Segitiga s;
  double luasSegitiga;

  s = new Segitiga();
  s.setengah = 0.5;
  s.alas = 20.0;
  s.tinggi = 30.0;
  luasSegitiga = s.hitungLuas();
  print(luasSegitiga);
}



class Segitiga{
  late double setengah;
  late double alas;
  late double tinggi;

  double hitungLuas(){
    return this.setengah * this.alas * this.tinggi;
  }
}