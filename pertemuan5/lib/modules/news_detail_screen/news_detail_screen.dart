import 'package:flutter/material.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen({
    super.key,
    required this.id,
  });
  final String id;

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    // loveSize = 100;
    super.initState();
  }

  String description =
      'Lailatul Qadar berasal dari kata lailah yang artinya malam dan qadar yang artinya mulia. Lailatul Qadar adalah malam kemuliaan. Malam ini lebih baik dari 1000 bulan atau 30 ribu malam yang setara dengan 83,33 tahun. Manusia tidak dapat mengetahui secara pasti mengenai datangnya lailatul qadar. Namun biasanya dilaksanakan pada 10 malam terakhir di bulan Ramadan. Terutama pada malam-malam ganjil seperti 21, 23, 25, 27, dan 29.';

  int likeCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            likeCount++;
          });
        },
        child: const Icon(Icons.favorite),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://storage.nu.or.id/storage/post/16_9/mid/1466730374576c8786db278.jpg',
            width: double.infinity,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Malam Lailatul Qadar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(likeCount.toString())
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NewsDetailScreenHot extends StatefulWidget {
  const NewsDetailScreenHot({
    super.key,
    required this.newsDetailHot,
  });
  final String newsDetailHot;

  @override
  State<NewsDetailScreenHot> createState() => _NewsDetailScreenHotState();
}

class _NewsDetailScreenHotState extends State<NewsDetailScreenHot> {
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  String description =
      'Bulan Ramadhan tidaklah berakhir. Ia hanya berganti menjadi sebuah pintu kemenangan. Di hari yang suci ini, marilah kita saling memaafkan. Taqobbalallahu minna waminkum. Minal aidzin wal faidzin.Jalan-jalan ke Ibukota. Mampir sejenak di Kota Tua. Met lebaran tuk kita semua. Marilah kita maaf-maafan wahai Saudara.';

  int likeCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            likeCount++;
          });
        },
        child: const Icon(Icons.favorite),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://media.suara.com/pictures/970x544/2022/04/01/75108-ilustrasi-25-ucapan-selamat-hari-raya-idul-fitri-1443-h-pixabay.jpg',
            width: double.infinity,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Selamat Hari Raya Idul Fitri',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(likeCount.toString())
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
