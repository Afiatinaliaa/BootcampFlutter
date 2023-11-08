//No. 1

// import 'dart:io';

// void main(){
//   //var installApps = "Y";
//   print('installApps:');
//   String installApps = stdin.readLineSync()!;
//   if(installApps == "Y"){
//     print('Anda akan menginstall aplikasi dart');
//   }else if (installApps == "T"){
//     print('Aborted');
//   }
// }


//=======================================================================================================================


//No.2

// import 'dart:io';

// void main() {
//   var Nama1 = 'John';
//   var Peran1 = '';
//   var Nama2 = 'Jane';
//   var Peran2 = 'Penyihir';
//   var Nama3 = 'Jenita';
//   var Peran3 = 'Guard';
//   var Nama4 = 'Junaedi';
//   var Peran4 = 'Werewolf';

//   print('Nama:');
//   var Nama = stdin.readLineSync()!;
  
//   if (Nama == Nama1 || Nama == Nama2 || Nama == Nama3 || Nama == Nama4) {
//     print('Selamat datang di Dunia Werewolf, $Nama');
    
//     print('Peran:');
//     var Peran = stdin.readLineSync()!;
    
//     if (Nama == Nama1 && Peran == Peran1) {
//       print('Halo John, Pilih peranmu untuk memulai game!');
//     } else if (Nama == Nama2 && Peran == Peran2) {
//       print('Halo Penyihir Jane, kamu dapat melihat siapa yang menjadi werewolf!');
//     } else if (Nama == Nama3 && Peran == Peran3) {
//       print('Halo Guard Jenita, kamu akan membantu melindungi temanmu dari serangan werewolf.');
//     } else if (Nama == Nama4 && Peran == Peran4) {
//       print('Halo Werewolf Junaedi, Kamu akan memakan mangsa setiap malam!');
//     } else {
//       print('Peran harus diisi');
//     }
//   } else {
//     print('Nama harus diisi');
//   }
// }

//================================================================================================================================================ 


//No. 3

// import 'dart:io';

// void main() {

//   print('Hari:');
//   String Hari = stdin.readLineSync()!;
//   switch(Hari) {
//     case "Senin" : {print('Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.'); break;} 
//     case "Selasa" : {print('Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.'); break;} 
//     case "Rabu" : {print('Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.'); break;} 
//     case "Kamis" : {print('Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.'); break;} 
//     case "Jumat" : {print('Hidup tak selamanya tentang pacar.'); break;} 
//     case "Sabtu" : {print('Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.'); break;} 
//     case "Minggu" : {print('Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.'); break;} 
//   }
// }

//============================================================================================================================================================================

// void main(List<String> args) {
  
// var tanggal = 4; // Masukkan tanggal di sini
// var bulan = 12;   // Masukkan bulan di sini
// var tahun = 2023; // Masukkan tahun di sini

// String namaBulan = '';
// String tanggalStr = tanggal.toString();
// String tahunStr = tahun.toString();

// if (tanggal >= 1 && tanggal <= 31 && bulan >= 1 && bulan <= 12 && tahun >= 1900 && tahun <= 2200) {
//   switch (bulan) {
//     case 1:
//       namaBulan = 'Januari';
//       break;
//     case 2:
//       namaBulan = 'Februari';
//       break;
//     case 3:
//       namaBulan = 'Maret';
//       break;
//     case 4:
//       namaBulan = 'April';
//       break;
//     case 5:
//       namaBulan = 'Mei';
//       break;
//     case 6:
//       namaBulan = 'Juni';
//       break;
//     case 7:
//       namaBulan = 'Juli';
//       break;
//     case 8:
//       namaBulan = 'Agustus';
//       break;
//     case 9:
//       namaBulan = 'September';
//       break;
//     case 10:
//       namaBulan = 'Oktober';
//       break;
//     case 11:
//       namaBulan = 'November';
//       break;
//     case 12:
//       namaBulan = 'Desember';
//       break;
//   }

//   print('$tanggalStr $namaBulan $tahunStr');
// } else {
//   print('Input tanggal, bulan, atau tahun tidak valid.');
// }
// }