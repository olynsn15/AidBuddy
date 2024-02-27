//
//  ArticleContent.swift
//  Home Screen
//
//  Created by Vernandio Rivaldo on 14/07/23.
//

import SwiftUI

struct Article: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let url: URL
}

struct ArticleList {
    
    static let articleFive = [
        Article(imageName: "punggung",
              title: "Cara Mengobati Nyeri Otot yang Aman Dilakukan",
              description: "Nyeri otot terjadi karena adanya robekan kecil pada otot. Ada banyak hal yang dapat menyebabkannya, misalnya karena cedera, infeksi, postur tubuh yang tidak tepat, atau karena kondisi kesehatan tertentu. Meskipun umumnya tidak berbahaya, nyeri otot bisa sangat mengganggu aktivitas sehari-hari dan membuat tidak nyaman. Karena itu, yuk cari tahu bagaimana sih cara mengobati nyeri otot dengan aman dan tepat.\n\nCara Mengobati Nyeri Otot dengan Aman\nBerikut ini beberapa cara untuk mengobati nyeri otot dengan aman:\n\n1. Kompres dengan es batu\nMengompres dengan es batu bisa menjadi pertolongan pertama untuk mengobati nyeri otot. Cara ini disebut juga sebagai cryotherapy.  Walaupun tidak dapat mendinginkan otot secara langsung, tetapi metode ini dapat menenangkan saraf, meredakan nyeri, serta mengurangi pembengkakan.\nGunakanlah handuk atau kain untuk membungkus beberapa balok es batu, lalu tempelkan es ke bagian yang nyeri atau bengkak. Kompres selama 15 sampai 20 menit, dan ulangi sebanyak tiga kali dalam sehari agar nyeri otot segera pulih.\n\n2. Menggunakan air panas\nMeskipun berbanding terbalik dengan cara sebelumnya, tetapi menggunakan air panas juga tidak kalah efektif untuk mengobati nyeri otot. Suhu panas dipercaya dapat membantu mengurangi pembengkakan, meningkatkan aliran darah, dan mengendurkan otot. Kamu bisa mengompres bagian yang nyeri dengan handuk yang telah dicelup air panas selama dua jam.\nSelain itu, kamu juga bisa berendam atau mandi menggunakan air panas untuk menenangkan dan meredakan nyeri otot. Kalau ingin lebih praktis, ada alternatif lain yang bisa kamu coba yaitu dengan menggunakan koyo.\n\n3. Menggunakan perban elastis\nPerban elastis atau perban kompresi berfungsi untuk mengobati keseleo, ketegangan, dan dapat membantu menjaga bagian tubuh tetap stabil. Apabila kamu mengalami nyeri otot serius akibat berolahraga, kamu mungkin perlu mempertimbangkan menggunakan perban ini. Cara ini biasanya juga digunakan oleh para atlet untuk mengobati nyeri otot, terkilir, atau cedera lainnya.\nSaat menggunakan perban elastis, kamu perlu memberi tekanan yang tepat untuk mencegah pembengkakan dan membantu menstabilkan cedera. Cara ini bisa sedikit rumit sebab setiap bagian tubuh dan pembuluh darah memiliki bentuk dan ukuran yang berbeda. Intinya, pastikan perban tidak terlalu kencang agar tidak menyebabkan rasa sakit, mati rasa, kesemutan, atau jari tangan dan kaki membiru.",
              url: URL(string: "https://youtu.be/EgpKu1tAVMY")!),
        
        Article(imageName: "perban",
              title: "Cara Mengganti Perban Sesuai Skalanya",
              description: "Luka terbuka adalah cedera yang merobek atau memisahkan kulit, sehingga jaringan di bawahnya terlihat dan mudah terpapar dengan kuman. Itu mengapa luka terbuka perlu ditutup untuk mencegah infeksi yang lebih parah, antara lain menggunakan plester atau perban. Pemasangan perban dan plester juga tidak boleh sembarangan karena berpengaruh pada proses penyembuhan luka.\n\nAlasan Luka Harus Diperban\nPenyebab luka semakin parah adalah karena cara perawatan yang keliru. Kebanyakan orang mengira bahwa luka harus dibiarkan kering dan diangin-anginkan agar cepat sembuh. Padahal, luka sebaiknya dibiarkan lembap untuk mempercepat proses penyembuhannya. Kondisi lembap membantu sel fibrosis membentuk jaringan baru yang menutup luka, termasuk mengurangi jumlah cairan yang keluar dari luka. Salah satu cara menjaga luka tetap lembap adalah menggunakan plester dan perban.\n\nLangkah Mengganti Perban yang Tepat\nMembiarkan luka terbuka tanpa diperban bisa mengeringkan sel-sel kulit baru, sehingga rasa sakit semakin tajam dan memperlambat proses penyembuhan luka. Maka itu, lebih baik tutup luka terbuka yang berukuran besar untuk meminimalkan risiko infeksi yang lebih parah. Hal yang perlu diingat adalah, rutin ganti perban agar tidak terjadi infeksi bakteri yang bisa memperparah luka. Begini cara mengganti perban yang tepat:\n\n•Setelah 24 jam pemasangan, ganti perban dengan yang baru. Bersihkan luka terlebih dahulu (minimal dua kali sehari) untuk mengurangi risiko infeksi, dengan cairan yang bersifat antiseptik seperti iodine dan alkohol.\n•Oleskan salep antibiotik yang diresepkan dokter, lalu tutup luka dengan plester anti air untuk menjaga kelembapan luka. Penggunaan kasa untuk menutup luka tidak begitu dianjurkan, karena tidak bisa menjaga kelembapan luka. Pada sebagian kasus, kain kasa bisa menempel di area luka dan menghancurkan fibroblas, sehingga kulit lama sembuhnya.\n•Saat menggunakan perban, hindari aktivitas berenang atau melakukan aktivitas yang bisa membuat luka kotor, basah, atau terkena infeksi. Pastikan perban tetap bersih dan kering.",
              url: URL(string: "https://youtu.be/aiXvvL1wNUc")!),
        
        Article(imageName: "hipotermia",
              title: "Cara Tepat Mengatasi Hipotermia, Saat Suhu Tubuh Turun Drastis",
              description: "Sekilas mengenal hipotermia, merupakan kondisi di mana temperatur tubuh jadi sangat rendah. Bahkan jika sudah parah, suhu tubuh bisa sangat jauh di bawah suhu normal. Tentunya perlu dilakukan cara mengatasi hipotermia yang tepat dan cepat.\n\nSaat mengalami hipotermia, biasanya suhu tubuh seseorang bisa mencapai di bawah 35 derajat Celsius. Tentunya hal ini menjadi sangat berbahaya bagi nyawa. Tak jarang, banyak yang akhirnya meregang nyawa akibat tidak segera dilakukan cara mengatasi hipotermia yang cepat dan tepat.\n\nMaka dari itu, dengan kondisi cuaca yang sangat tidak menentu seperti saat ini, serta risiko terjadinya banjir sangat tinggi, maka penting bagi Anda memahami bagaimana cara mengatasi hipotermia.\n\n1. Pindahkan ke tempat hangat\nCara mengatasi hipotermia yang pertama bisa dengan memindahkan penderita ke lokasi yang lebih hangat. Pasalnya, lokasi yang terlalu dingin menjadi pemicu parahnya hipotermia yang terjadi. Maka dari itu, agar hipotermia tidak semakin parah, segera pindahkan pasien.\nSaat kondisi sedang banjir, coba untuk mencari area yang lebih kering dan hangat. Akan lebih baik jika area sekitarnya tidak digenangi air. Tapi, apabila penderita tidak dapat menggerakkan tubuhnya, segera pindahkan ke dalam ruangan yang jauh lebih hangat. Apabila memungkinkan, dekatkan tubuh pasien ke dekat sumber panas. Cara mengatasi hipotermia ini cukup membantu memulihkan kondisinya.\n\n2. Jangan gunakan sumber panas langsung\nMeski pada cara mengatasi hipotermia dijelaskan untuk mendekatkan pasien ke sumber panas, bukan berarti Anda bisa memberikan panas langsung dalam suhu tinggi ke tubuhnya. Sebagai contoh, jangan langsung memberikan air panas dengan suhu tinggi dan masih mendidih ke tubuh penderita hipotermia.\nPasalnya, meski cukup membantu, tapi hal tersebut bisa menyebabkan kerusakan kulit, bahkan akan timbul luka bakar. Jika dibiarkan, maka akan menimbulkan masalah selanjutnya berupa infeksi.\n\n3. Ganti pakaian yang basah\nJika seseorang mengalami hipotermia akibat kedinginan saat banjir, bisa jadi sumbernya dari pakaian yang dikenakan sudah terlalu basah. Jika memang pakaian tersebut basah, maka ada baiknya untuk segera lepaskan pakaian tersebut kemudian ganti dengan pakaian yang kering. Atau, jika memang tidak ada, lebih baik lepas seluruh pakaian dan gunakan kain selimut untuk menghangatkan tubuh penderita\n4. Gunakan pakaian berlapis\nTujuan cara mengatasi hipotermia ini untuk menjaga panas tubuh tetap terjaga. Anda bisa memberikan beberapa lapis pakaian atau bisa juga ditambahkan selimut. Agar lebih efektif, maka Anda bisa memberikan selimut atau pakaian tersebut pada area perut serta kepala. Penggunaan selimut akan menjaga panas tubuh tetap di dalam serta mencegah timbulnya aliran konveksi panas ke luar.",
              url: URL(string: "https://youtu.be/FtO5QT2D_H8")!),
              
        Article(imageName: "kaki",
              title: "Cedera Keseleo pada Pergelangan Kaki Ankle Sprains",
              description: "Keseleo pada pergelangan kaki merupakan salah satu cedera yang biasa terjadi pada para atlet atau orang yang sudah melakukan olahraga. Menurut Arnheim, 1985: 473, Brunker dan Khan, 1993: 439, Peterson, 1990:341 cedera pada pergelangan kaki dapat terjadi dikarenakan terkilir secara mendadak ke arah lateral atau medial yang berakibat pada robeknya serabut ligamentum pada sendi pergelangan kaki. Keseleo pada pergelangan kaki disebut juga dengan istilah ankle sprain dimana cedera yang terjadi pada sendi, dan terdapat robekan (biasanya tidak komplit) dari ligament. Hal ini disebabkan pada stress yang mendadak ataupun penggunaan yang berlebihan.\n\nPerawatan Keseleo pada Pergelangan Kaki (Ankle Sprains)\n1. Keseleo Tingkat Ringan :\nHal ini ditandai adanya anamnesis yaitu ketidaknyamanan pada kaki, pembengkakan ringan, sedikit atau tanpa adanya memar. Perawatan yang perlu dilakukan diantaranya :\n•Berhenti dari aktivitas\n•Lakukan pengompresan menggunakan es kurang lebih selama 20 sampai dengan 30 menit\n•Kaki yang keseleo harus tetap terangkat atau dinaikkan ke atas\n•Apabila terjadi pembengkakan, maka lakukan pengompresan dengan es yang dilakukan secara terus menerus dan diulang selama satu hari.\nPerawatan pada keseleo tingkat ringan ini dinamakan dengan istilah metode RICE yaitu rest (istirahat), ice (pemakaian es), compression (pengompresan), dan elevation (elevasi). Pemakaian metode RICE untuk mengatasi keseleo ringan, biasanya berlanjut selama 2 sampai 3 hari, kemudian dapat diikuti dengan melakukan olahraga lari kembali secara bertahap.\n\n2. Keseleo Tingkat Sedang\nHal ini ditandai dengan adanya pembengkakan dan memar selama 12 sampai dengan 24 jam. Perawatan yang harus dilakukan pada keseleo tingkat sedang diantaranya:\n•Lakukan metode RICE yaitu rest (istirahat), ice (pemakaian es), compression (pengompresan), dan elevation (elevasi)\n•Lindungi luka keseleo tersebut dengan pembalut yang halus untuk melindungi ligament\n•Apabila terdapat rasa sakit yang parah maka perlu mendapatkan perawatan dari orang professional\n•Kemudian dilakukan penyinaran rontgen agar dapat mengetahui apa saja yang terjadi kerusakan pada tulang tersebut\n•Tidak melakukan aktivitas olahraga selama 2 sampai dengan 3 minggu\n\n3. Keseleo Tingkat Parah\nKeseleo tingkat parah merupakan jenis cedera pada pergelangan kaki yang dikatakan serius. Hal ini ditandai dengan adanya suara robekan atau pecah pada daerah yang mengalami keseleo, sehingga terdapat rasa sakit dan nyeri selama 5 menit. Selain itu, juga terdapat memar pada bagian luar pergelangan kaki, telapak kaki, dan kaki bagian bawah. Perawatan yang perlu dilakukan diantaranya:\n•Sebagai langkah awal gunakan metode RICE yaitu rest (istirahat), ice (pemakaian es), compression (pengompresan), dan elevation (elevasi)\n•Gunakan cructh (tongkat ketiak) untuk mengistirahatkan secara total di bagian pergelangan kaki yang mengalami keseleo\n•Apabila ligament pergelangan kaki benar-benar putus, maka lakukan pembedahan\n•Apabila semua ligament telah rusak namun pergelangan kaki tetap stabil maka lakukan dengan menekan pergelangan kaki dengan menyinari sinar X",
              url: URL(string: "https://youtu.be/DBWu6TnhLeY")!),
    ]
}