import 'lingkaran.dart';

void main(){
  Lingkaran l;
  double luasLingkaran;

  l = new Lingkaran();
  l.setPhi(3.14);
  l.setR1(20.0);
  l.setR2(20.0);

  luasLingkaran = l.hitungLuas();
  print(luasLingkaran);
}