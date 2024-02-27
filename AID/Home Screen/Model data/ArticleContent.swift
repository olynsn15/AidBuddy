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
        Article(imageName: "Unknown",
              title: "Cara Mengobati Nyeri Otot yang Aman Dilakukan",
              description: "Nyeri otot terjadi karena adanya robekan kecil pada otot. Ada banyak hal yang dapat menyebabkannya, misalnya karena cedera, infeksi, postur tubuh yang tidak tepat, atau karena kondisi kesehatan tertentu. Meskipun umumnya tidak berbahaya, nyeri otot bisa sangat mengganggu aktivitas sehari-hari dan membuat tidak nyaman. Karena itu, yuk cari tahu bagaimana sih cara mengobati nyeri otot dengan aman dan tepat. ",
              url: URL(string: "https://youtu.be/EgpKu1tAVMY")!),
        
        Article(imageName: "gambar-11",
              title: "Cara Mengganti Perban Sesuai Skalanya",
              description: "Membiarkan luka terbuka tanpa diperban bisa mengeringkan sel-sel kulit baru, sehingga rasa sakit semakin tajam dan memperlambat proses penyembuhan luka. Maka itu, lebih baik tutup luka terbuka yang berukuran besar untuk meminimalkan risiko infeksi yang lebih parah. Hal yang perlu diingat adalah, rutin ganti perban agar tidak terjadi infeksi bakteri yang bisa memperparah luka. Begini cara mengganti perban yang tepat: Setelah 24 jam pemasangan, ganti perban dengan yang baru. Bersihkan luka terlebih dahulu (minimal dua kali sehari) untuk mengurangi risiko infeksi, dengan cairan yang bersifat antiseptik seperti iodine dan alkohol. Oleskan salep antibiotik yang diresepkan dokter, lalu tutup luka dengan plester anti air untuk menjaga kelembapan luka. Penggunaan kasa untuk menutup luka tidak begitu dianjurkan, karena tidak bisa menjaga kelembapan luka. Pada sebagian kasus, kain kasa bisa menempel di area luka dan menghancurkan fibroblas, sehingga kulit lama sembuhnya. \n\nSaat menggunakan perban, hindari aktivitas berenang atau melakukan aktivitas yang bisa membuat luka kotor, basah, atau terkena infeksi. Pastikan perban tetap bersih dan kering.",
              url: URL(string: "https://youtu.be/aiXvvL1wNUc")!),
        
        Article(imageName: "ilustrasi-penanganan-hipotermia1",
              title: "Cara Tepat Mengatasi Hipotermia, Saat Suhu Tubuh Turun Drastis",
              description: "In the latest installment of my Swift Beginner Series, we'll discuss UITableView and custom UITableView Cells in Swift using Xcode. UITableViews are a fundamental part of iOS Development and knowing them well is invaluable. You will build these all the time in your iOS development career.",
              url: URL(string: "https://youtu.be/FtO5QT2D_H8")!),
              
        Article(imageName: "550fafeb-6759-4483-b2a4-971db334c876-article-1666441379",
              title: "Cedera Keseleo pada Pergelangan Kaki Ankle Sprains",
              description: "The next topic in my series on iOS Interview questions explains the Delegate Protocol Communication Pattern in Swift. This is a fundamental question in iOS development and I was asked about it a lot during my interviews. In this tutorial I'll walk you through how the delegate protocol pattern in Swift works, using Xcode.",
              url: URL(string: "https://youtu.be/DBWu6TnhLeY")!),
    ]
}
