
  dynamic dataHandling = [
  ['0001', 'Roman Alamsyah', 'Bandar Lampung', '21/05/1989', 'Membaca'],
  ['0002', 'Dika Sembiring', 'Medan', '10/10/1992', 'Bermain Gitar'],
  ['0003', 'Winona', 'Ambon', '25/12/1965', 'Memasak'],
  ['0004', 'Bintang Senjaya', 'Martapura', '6/4/1970', 'Berkebun']
  ];

void main(){

  for(var i = 0; i < dataHandling.length; i++){
  print('Nomor ID: ' + dataHandling[i][0]);
  print('Nama Lengkap: ' + dataHandling[i][1]);
  print('TTL: ' + dataHandling[i][2] + ' ' + dataHandling[i][3]);
  print('Hobi: ' + dataHandling[i][4]);
  print(" ");
  }
}
