Food.create!([
  {name: "Nasi Goreng", description: "Nasi Goreng merupakan makanan asli Indonesia menggunakan nasi putih yang digoreng dicampur beberapa bumbu alami dan tambahan telur maupun campuran lainnya", image_file_name: "nasgor2.jpg", image_content_type: "image/jpeg", image_file_size: 36015, image_updated_at: "2015-12-14 02:30:21", food_types_id: 3},
  {name: "Nasi Goreng Telor", description: "Nasi Goreng Telor merupakan nasi goreng bercampur gorengan telur", image_file_name: "nasgor_telor.jpg", image_content_type: "image/jpeg", image_file_size: 42984, image_updated_at: "2015-12-14 02:31:53", food_types_id: 3},
  {name: "Nasi Goreng Seafood", description: "Nasi Goreng Seafood merupakan nasi goreng dengan campuran seafood seperti udang, cumi, maupun ikan-ikanan laut", image_file_name: "nasgor_seafood.jpg", image_content_type: "image/jpeg", image_file_size: 59045, image_updated_at: "2015-12-14 02:32:48", food_types_id: 3},
  {name: "Mie Goreng", description: "Mire Goreng merupakan olahan mie kuning dengan campuran bumbu khas ", image_file_name: "mie_goreng.jpg", image_content_type: "image/jpeg", image_file_size: 114666, image_updated_at: "2015-12-14 02:39:38", food_types_id: 3},
  {name: "Nasi Putih", description: "Hanya nasi putih dari beras yang dimasak secara alami", image_file_name: "nasi_putih1.jpg", image_content_type: "image/jpeg", image_file_size: 360458, image_updated_at: "2015-12-14 03:08:05", food_types_id: 3},
  {name: "Ayam Rica - Rica", description: "Ayam Rica - Rica merupakan masakan asli Indonesia dengan menggunakan beberapa bumbu-bumbu alami Indonesia", image_file_name: "Ayam-Rica-Rica1.jpg", image_content_type: "image/jpeg", image_file_size: 8730, image_updated_at: "2015-12-14 03:02:40", food_types_id: 3},
  {name: "Es Teh", description: "Es Teh yang digunakan menggunakan beberapa varian teh seperti teh hijau, teh hitam, teh melati, teh bunga rosella", image_file_name: "ehteh2.jpg", image_content_type: "image/jpeg", image_file_size: 474724, image_updated_at: "2015-12-14 03:08:44", food_types_id: 4},
  {name: "Es Pisang Hijau", description: "Es Pisang Hijau merupakan minuman asli Sumatera Utara", image_file_name: "espisahhijau.jpg", image_content_type: "image/jpeg", image_file_size: 161773, image_updated_at: "2015-12-14 03:09:22", food_types_id: 4},
  {name: "Es Buah", description: "Es Buah berisi potongan buah - buahan seperti strawberry, anggur, apel, melon dan lain sebagainya", image_file_name: "esbuah2.jpg", image_content_type: "image/jpeg", image_file_size: 29921, image_updated_at: "2015-12-14 03:09:46", food_types_id: 4},
  {name: "Sop Buah", description: "Sop buah memiliki potongan buah yang sedikit berbeda dengan es buah", image_file_name: "sopbuah1.jpg", image_content_type: "image/jpeg", image_file_size: 177407, image_updated_at: "2015-12-14 03:10:02", food_types_id: 2},
  {name: "Sate Kambing", description: "Sate Kambing merupakan potongan daging kambing yang dicampur bersama bumbu kacang dan rempah lainnya kemudian ditusuk dan dipanggang hingga matang", image_file_name: "satekambing1.JPG", image_content_type: "image/jpeg", image_file_size: 75773, image_updated_at: "2015-12-14 03:43:47", food_types_id: 3},
  {name: "Sate Ayam", description: "Sate Ayam merupakan potongan daging ayam dan kulit yang dipadukan dengan campuran bumbu kacang", image_file_name: "sateayam.jpg", image_content_type: "image/jpeg", image_file_size: 9835, image_updated_at: "2015-12-14 03:47:59", food_types_id: 3},
  {name: "Kue Ulang Tahun", description: "Kue Ulang Tahun", image_file_name: "bdcake3.jpg", image_content_type: "image/jpeg", image_file_size: 27018, image_updated_at: "2015-12-14 03:52:49", food_types_id: 3},
  {name: "Gule Kambing", description: "Gule Kambing", image_file_name: "gule1.jpg", image_content_type: "image/jpeg", image_file_size: 50423, image_updated_at: "2015-12-14 03:56:16", food_types_id: 3}
])
FoodType.create!([
  {name: "Appetizer"},
  {name: "Desert"},
  {name: "Main Course"},
  {name: "Drink"},
  {name: "Gorengan"}
])
Package.create!([
  {name: "Paket Ulang Tahun", description: "Paket Ulang Tahun diperuntukkan untuk kegiatan ulang tahun"},
  {name: "Paket Aqiqah", description: "Paket Aqiqah berisi makanan seperti gulay dan sate kambing"}
])
PackageDetail.create!([
  {package_id: 2, food_id: 9},
  {package_id: 2, food_id: 13},
  {package_id: 3, food_id: 6},
  {package_id: 3, food_id: 11}
])
