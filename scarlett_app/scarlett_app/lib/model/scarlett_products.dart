class ScarlettProduct{
  const ScarlettProduct(
  {
    this.name, this.image, this.description, this.price, this.left
  }
);
  final double price;
  final String name;
  final String image;
  final String description;
  final String left;
}

const scarlettProducts = <ScarlettProduct>[
  ScarlettProduct(
    name: 'Body Scrub - Pomegrante',
    price: 75000,
    description: 'Scarlett Whitening Body Scrub Pomegrante dibuat khusus dengan buliran scrub yang sangat halus dan tetap bisa membantu mengangkat kotoran atau sel-sel kulit mati di kulit tubuh secara lebih maksimal tanpa rasa takut kulit akan terjadinya iritasi! ',
    image: 'assets/image/body_scrub_pomegrante.jpg',
    left: '20 psc'
  ),
  ScarlettProduct(
    name: 'Brightening Shower Scrub - Mango',
    price: 75000,
    description: 'Dibuat khusus untuk kamu yang ingin mencerahkan kulit tubuh, mengandung Glutathione (vitamin pencerah kulit paling cepat di dunia) dan butiran Vitamin E. Juga terdapat butiran scrub yang mampu mengangkat sel kulit mati dan kotoran yang menumpuk di kulit tubuhmu',
    image: 'assets/image/brightening_shower_crub_mango.jpg',
    left: '10 psc'
  ),
  ScarlettProduct(
    name: 'Serum - Brightly Ever After',
    price: 75000,
    description:'Di dalam Brightly Ever After Serum terdapat kandungan Phyto Whitening, Glutathione, Vitamin C, Niacinamide dan Lavender Water yang dimana bermanfaat sebagai :'
        '\n1. Membantu mencerahkan kulit dan memudarkan noda di wajah seperti hiperpigmentasi, bekas jerawat, flek dan bekas luka.'
        '\n2. Membantu mengontrol kadar minyak berlebih di kulit, membantu mengeceilkan pori-pori, mengimprovisasi warna kulit, menghaluskan kerutan dan juga garis di kulit.'
        '\n3. Membantu menutrisi dan melembabkan kulit.'
        '\n4. Membantu membuat kulit menjadi lebih relax dan calm.'
        '\n5. Bekerja sebagai antioxidant dan juga sebagai anti pollution.' ,
      image: 'assets/image/serum_brightly_ever_after.jpg',
    left: '5 psc'
  ),
  ScarlettProduct(
    name: 'Brightening Fragrance Body Lotion - Romansa',
    price: 75000,
    description: 'Dengan Scarlett Whitening Body Lotion kulitmu akan terhidar dari yg namanya kulit gelap dan kusam. Semua ini berkat kandungan glutathione dan vitamin E nya yg sangat efekstif utk memutihkan kulit secara cepat & efektif Produk ini jg sudah lulus uji BPOM loh. Jd sangat aman',
    image: 'assets/image/body_lotion_romansa.jpg',
    left: '19 psc'
  ),
  ScarlettProduct(
    name: 'Whitening Facial Wash - All Skin Type',
    price: 75000,
    description: 'Facial Wash Mengandung Glutathione , Vitamin E, Rose Petals, dan Aloe Vera yang sangat bagus untuk :'
        '\n1. Mencerahkan kulit wajah.'
        '\n2. Menutrisi kulit wajah'
        '\n3. Mengontrol kadar minyak berlebih di wajah'
        '\n4. Mengecilkan pori-pori di wajah'
        '\n5. Sangat bagus untuk meregenerasi kulit wajah agar tampak lebih kencang'
        '\n6. Membantu menghilangkan jerawat dan beruntusan'
        '\nKandungan aloe vera yang menyejukan juga dapat melembabkan kulit wajah, jadi kulit akan trasa lebih lembut.',
    image: 'assets/image/whitening_facial_wash.jpg',
    left: '8 psc'
  ),
  ScarlettProduct(
    name: 'Yordanian Sea Salt Fragrance - Conditioner',
    price: 75000,
    description: 'Berat produk=400gram,Manfaat Yordania Sea Salt Shampoo & Fragrance Conditioner :'
        '\n- MENGURANGI MINYAK BERLEBIH DI KULIT KEPALA (BYE BYE RAMBUT LEPEK 😁😃) '
        '\n- MEMBANTU MERAWAT RAMBUT YANG MUDAH RONTOK & PATAH '
        '\n- MENGURANGI KETOMBE '
        '\n- MENSTIMULASI PERTUMBUHAN RAMBUT '
        '\n- MEMPERKUAT FOLIKEL RAMBUT'
        '\nPaling recommended gunakan Yordani Sea Salt Shampoo & Fragrance Conditioner untuk mendapatkan hasil perawatan rambut yang lebih maksimal!',
    image: 'assets/image/body_scrub_pomegrante.jpg',
    left: '20 psc'
  ),
  ScarlettProduct(
    name: 'Acne-Day Cream',
    price: 75000,
      description: 'Didalam Acne Day Cream terdapat kandungan Double Action Salicylic Acid, Natural Squalane, Hexapeptide-8, Natural Vit-C, Triceramide dan Aqua Peptide Glow yang dimana bermanfaat sebagai :'
          '\n1. Membantu bekerja paling baik untuk meredakan peradangan jerawat serta kemerahan pada kulit wajah.'
          '\n2. Membantu meningkatkan kelembapan sehingga kulit tampak lebih sehat dan cerah.'
          '\n3. Membantu menghilangkan garis halus juga mengencangkan kulit wajah.'
          '\n4. Membantu memperbaiki tekstur pada kulit wajah.'
          '\n5. Membantu memudarkan bekas-bekas jerawat pada kulit wajah.'
          '\n6. Membantu memberi nutrisi pada kulit wajah.'
          '\n7. Sebagai antioksidan dan melindungi sel kulit dari kerusakan radikal bebas yang disebabkan oleh paparan sinar UV.'
          '\nCara Pakai : Gunakan Acne Day Cream secara rutin saat pagi hari sesudah membersihkan kulit wajah. Diamkan beberapa saat hingga Acne Day Cream meresap ke kulit.',
      image: 'assets/image/creamacneday1.jpg',
    left: '4 psc'
  ),
  ScarlettProduct(
    name: 'Serum – Acne',
    price: 75000,
    description: 'Di dalam Acne Serum terdapat kandungan Tea Tree Leaf Water, Salicylic Acid, Jeju Centella Asiatica, Liquorice Extract dan Vitamin C yang dimana bermanfaat sebagai :'
        '\n1. Membantu menyembuhkan jerawat meradang, jerawat batu, kulit kemerahan dan iritasi.'
        '\n2. Membantu meregenerasi dan menjaga kulit yang sensitive tanpa menimbulkan iritasi.'
        '\n3. Membantu menenangkan kulit, menghaluskan dan juga membantu memudarkan bekas jerawat atau luka.'
        '\n4. Membantu mencerahkan kulit secara aman karena menggunakan Liquorice Extract dan Vitamin C yang juga berfungsi sebagai anti oxidant + anti pollution.'
        '\n5. Membantu mengontrol kadar minyak berlebih di kulit.'
        '\nCara Pakai : Teteskan 2-3 tetes serum, usap dan pijat secara perlahan sampai merata pada kulit wajah. Diamkan beberapa saat agar serum meresap ke kulit.',
    image: 'assets/image/serumacne.jpg',
    left: '13 psc'
  ),
  ScarlettProduct(
    name: 'Acne Cream Night',
    price: 75000,
    description: 'Didalam Acne Night Cream terdapat kandungan CM Acnatu, Natural Squalane, Hexapeptide-8, Triceramide, Poreaway, Natural Vit-C dan Aqua Peptide Glow yang dimana bermanfaat sebagai :'
        '\n1. Membantu sebagai anti bakteri dan anti inflamasi alami yang dapat membantu melawan bakteri penyebab jerawat.'
        '\n2. Membantu mengurangi kemerahan dan bengkak.'
        '\n3. Membantu menghilangkan garis halus juga mengencangkan kulit wajah.'
        '\n4. Membantu memperbaiki tekstur bekas jerawat pada kulit wajah.'
        '\n5. Membantu mengecilkan pori-pori pada kulit wajah.'
        '\n6. Membantu memudarkan bekas-bekas jerawat pada kulit wajah.'
        '\nCara Pakai : Gunakan Acne Night Cream secara rutin saat malam hari sesudah membersihkan kulit wajah. Diamkan beberapa saat hingga Acne Night Cream meresap ke kulit.',
    image: 'assets/image/creamacnenight1.jpg',
    left: '12 psc'
  ),
  ScarlettProduct(
    name: 'Yordanian Sea Salt - Shampoo',
    price: 75000,
    description: 'Rasakan sensasi keharuman cuci rambut dirumah tapi terasa cuci rambut di salon! Manfaat Yordanian Sea Salt Shampoo :'
        '\n– Membantu mengurangi kadar minyak berlebih di kulit kepala.'
        '\n– Membantu mengurangi kulit kepala atau ketombe.'
        '\n– Membantu menstimulasi pertumbuhan rambut.'
        '\n– Membantu memperkuat folikel rambut.'
        '\n– Membantu membuat rambut jadi lebih bervolume.'
        '\nDapatkan perawatan rambut yang lebih maksimal dengan menggunakan secara bersamaan Yordanian Sea Salt Shampoo & Conditioner setiap mencuci rambut.',
    image: 'assets/image/hairshampoo1.jpg',
    left: '20 psc'
  ),

];