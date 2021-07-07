import 'package:flutter/material.dart';

class Barang {
  final String image, title, description, size;
  final int price, id, pages;
  final Color color;
  Barang({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
    required this.pages,
  });
}

List<Barang> barangs = [
  Barang(
    id: 1,
    title: "Dan Brown",
    price: 200000,
    size: "6x8x4",
    description: katakata['buku1'].toString(),
    image: "assets/img/buku1.png",
    color: Colors.blue[900]!,
    pages: 500,
  ),
  Barang(
    id: 2,
    title: "Hobbit",
    price: 300000,
    size: "5x8x5",
    description: katakata['buku2'].toString(),
    image: "assets/img/buku2.png",
    color: Colors.red[900]!,
    pages: 400,
  ),
  Barang(
    id: 3,
    title: "The Lord of The Ring",
    price: 250000,
    size: "10x7x5",
    description: katakata['buku3'].toString(),
    image: "assets/img/buku3.png",
    color: Colors.deepOrange[900]!,
    pages: 300,
  ),
  Barang(
    id: 4,
    title: "Here Be Dragon",
    price: 150000,
    size: "10x8x4",
    description: katakata['buku4'].toString(),
    image: "assets/img/buku4.png",
    color: Colors.grey[600]!,
    pages: 400,
  ),
  Barang(
    id: 5,
    title: "Musashi",
    price: 98000,
    size: "11x9x5",
    description: katakata['buku5'].toString(),
    image: "assets/img/buku5.png",
    color: Colors.yellow[600]!,
    pages: 400,
  ),
  Barang(
    id: 6,
    title: "Narnia",
    price: 200000,
    size: "12x8x4",
    description: katakata['buku6'].toString(),
    image: "assets/img/buku6.png",
    color: Colors.tealAccent[400]!,
    pages: 500,
  ),
];

var katakata = {
  'buku1':
      'Robert Langdon, profesor simbologi dan ikonologi agama Universitas Harvard, tiba di Museum Guggenheim yang supermodern untuk menghadiri pengumuman besar tentang penemuan yang “akan mengubah dunia sains.” Tuan rumah acara malam hari itu adalah Edmond Kirsch, seorang miliuner dan Futuris berusia empat puluh tahun.',
  'buku2':
      'Gara-gara Gandalf, Bilbo jadi terlibat petualangan menegangkan. Tiga belas Kurcaci mendatangi rumahnya dengan mendadak, karena mengira ia seorang Pencuri berpengalaman, seperti kata Gandalf. Terpaksa ia bergabung dalam petualangan mereka : mengadakan perjalanan panjang dan berbahaya untuk mencari Smaug, naga jahat yang telah merampas harta kaum Kurcaci di masa lampau.',
  'buku3':
      'Berawal dari kekutan cincin milik Sauron penguasa kegelapan yang sudah mati. Setelah dinggap sebagai mitos, cincin tersebut ditemukan oleh hobit bernaam yang merupakan paman dari Frodo.',
  'buku4':
      'John, Charles, dan Jack adalah tiga cendekiawan Oxford yang disatukan oleh kematian Stellan Sigurdsson, mentor John, yang kemudian menerima The Imaginarium Geographica , yang merekam lokasi mitos dan fiksi. Ketika dikejar oleh antropofag, Wendigo jamak , mereka diselamatkan oleh Bert, dengan siapa mereka melakukan perjalanan di atas kapal Indigo Dragon (dipimpin oleh putri Bert Aven), ke Avalon , dan kemudian ke Paralon, ibu kota Kepulauan Geographica .',
  'buku5':
      'Takezo Shimmen dan Matahachi Hon’iden sudah hampir-hampir dianggap mati dalam Perang Sekigahara itu. Ogin Shimmen, satu-satunya penerus keluarga Shimmen sekaligus kakak perempuan Takezo, tidak berharap banyak tentang adiknya. Otsu, tunangan Matahachi, juga demikian terhadap tunangannya. Tapi dia masih terus menunggu dan berharap.',
  'buku6':
      'Peter Pevensie, Susan Pevensie, Edmund Pevensie, dan Lucy Pevensie diungsikan ke rumah Profesor Diggory Kirke karena Perang Dunia. Suatu hari, pada waktu mereka bermain petak umpet di rumah itu, Lucy menemukan lemari pakaian, dan dia memutuskan untuk bersembunyi di sana. Lucy sangat terkejut melihat di dalamnya terdapat negeri yang bernama Narnia, dan di sana dia bertemu seekor faun bernama Mr. Tumnus yang mengatakan bahwa Narnia sedang dikutuk oleh penyihir putih bernama Jadis selama beratus-ratus tahun dengan musim dingin yang panjang',
};
