class ModelDoa {
  String arabic;
  String title;
  String translate;
  String latinArab;

  String? arabic2;
  String? title2;
  String? translate2;
  String? latinArab2;

  String imageCover;
  String titleCover;

  ModelDoa(
      {required this.title,
      required this.latinArab,
      required this.translate,
      required this.arabic,
      this.title2,
      this.latinArab2,
      this.translate2,
      this.arabic2,
      required this.imageCover,
      required this.titleCover});
}

var dataListDoa = [
  ModelDoa(
    titleCover: 'Do\'a Makan',
    imageCover: 'assets/doa_makan.png',
    title: 'Doa sebelum makan',
    latinArab: 'Alloohumma barik lanaa fiimaa razatanaa waqinaa\'adzaa bannar',
    translate:  '"Ya Allah, berkahilah kami dalam rezeki yang telah Engkau berikan kepada kami dan peliharalah kami dari siksa api neraka"',
    arabic:
    'اَللّٰهُمَّ بَارِكْ لَنَا فِيْمَا رَزَقْتَنَا وَقِنَا عَذَابَ النَّارِ',

    title2: 'Doa Sesudah Makan',
    arabic2:
    'اَلْحَمْدُ ِللهِ الَّذِىْ اَطْعَمَنَا وَسَقَانَا وَجَعَلَنَا مُسْلِمِيْنَ',
    latinArab2:
    "Alhamdu lillaahil ladzii ath'amanaa wa saqoonaa wa ja'alnaa muslimiin",
    translate2:
    '"Segala puji bagi Allah yang telah memberi makan kami dan minuman kami, serta menjadikan kami sebagai orang-orang islam"',
  ),
  ModelDoa(
    titleCover: 'Do\'a Tidur',
    imageCover: 'assets/doa_tidur.png',
    title: 'Doa sebelum tidur',
    arabic: 'بِسْمِكَ االلّٰهُمَّ اَحْيَا وَبِاسْمِكَ اَمُوْتُ',
    latinArab: "Bismikallaahuma ahyaa wa bismika amuutu",
    translate:
    '"Dengan menyebut nama-Mu, Ya Allah, aku hidup dan dengan menyebut nama-Mu aku mati"',

    title2: 'Doa Sesudah Tidur',
    arabic2:
    'اَلْحَمْدُ ِللهِ الَّذِىْ اَحْيَانَا بَعْدَمَآ اَمَاتَنَا وَاِلَيْهِ النُّشُوْرَُ',
    latinArab2:
    "Alhamdu lillahil ladzii ahyaanaa ba'da maa amaa tanaa wa ilahin nusyuuru",
    translate2:
    '"Segala puji bagi Allah yang telah menghidupkan kami sesudah kami mati (membangunkan dari tidur) dan hanya kepada-Nya kami dikembalikan"',
  ),
  ModelDoa(
    titleCover: 'Do\'a Belajar',
    imageCover: 'assets/doa_belajar.png',
    title: 'Doa Sebelum Belajar',
    arabic: 'يَارَبِّ زِدْنِىْ عِلْمًا وَارْزُقْنِىْ فَهْمًا',
    latinArab: "Yaa robbi zidnii 'ilman warzuqnii fahmaa",
    translate:
    ' "Ya Allah, tambahkanlah aku ilmu dan berikanlah aku rizqi akan kepahaman"',

    title2: 'Doa Sesudah Belajar',
    arabic2:
    'اَللّٰهُمَّ اِنِّى اِسْتَوْدِعُكَ مَاعَلَّمْتَنِيْهِ فَارْدُدْهُ اِلَىَّ عِنْدَ حَاجَتِىْ وَلاَ تَنْسَنِيْهِ يَارَبَّ الْعَالَمِيْنَ',
    latinArab2:
    "Allaahumma innii astaudi'uka maa 'allamtaniihi fardud-hu ilayya 'inda haajatii wa laa tansaniihi yaa robbal 'alamiin",
    translate2:
    '"Ya Allah, sesungguhnya aku menitipkan kepada Engkau ilmu-ilmu yang telah Engkau ajarkan kepadaku, dan kembalikanlah kepadaku sewaktu aku butuh kembali dan janganlah Engkau lupakan aku kepada ilmu itu wahai Tuhan seru sekalian alam."',
  ),
  ModelDoa(
    titleCover: 'Do\'a Bercermin',
    imageCover: 'assets/doa_cermin.png',
    title: 'Doa Ketika Bercermin',
    arabic: 'اَلْحَمْدُ ِللهِ كَمَا حَسَّنْتَ خَلْقِىْ  فَحَسِّـنْ خُلُقِىْ',
    latinArab: "Alhamdulillaahi kamaa hassanta kholqii fahassin khuluqii",
    translate:
    '"Segala puji bagi Allah, baguskanlah budi pekertiku sebagaimana Engkau telah membaguskan rupa wajahku"',

  ),
  ModelDoa(
    titleCover: 'Do\'a Kamar Mandi',
    imageCover: 'assets/doa_kamar_mandi.png',
    title: 'Doa Masuk Toilet',
    arabic: 'اَللّٰهُمَّ اِنّىْ اَعُوْذُبِكَ مِنَ الْخُبُثِ وَالْخَبَآئِثِ',
    latinArab: "Alloohumma Innii a'uudzubika minal khubutsi wal khoaaitsi",
    translate:
    '"Ya Allah, aku berlindung pada-Mu dari godaan syetan  laki-laki dan setan perempuan"',

    title2: 'Doa Keluar Toilet',
    arabic2:
    'الْحَمْدُ لِلَّهِ الَّذِي أَذْهَبَ عَنِّي الْأَذَى وَعَافَانِيَ',
    latinArab2:
    "Alhamdulillaahil Ladzii Adzhaba ‘Annil Adzaa Wa ‘Aa-faa-nii",
    translate2:
    '“Segala puji bagi Allah yang telah menghilangkan kotoran dari ku dan yang telah menyehatkan ku”.',
  ),
  ModelDoa(
    titleCover: 'Do\'a Berpakaian',
    imageCover: 'assets/doa_pakaian.png',
    title: 'Doa Memakai Pakaian',
    arabic:
    'بِسْمِ اللهِ اَللّٰهُمَّ اِنِّى اَسْأَلُكَ مِنْ خَيْرِهِ وَخَيْرِ مَاهُوَ لَهُ وَاَعُوْذُبِكَ مِنْ شَرِّهِ وَشَرِّمَا هُوَلَهُ',
    latinArab:
    "Bismillaahi, Alloohumma innii as-aluka min khoirihi wa khoiri maa huwa lahuu wa'a'uu dzubika min syarrihi wa syarri maa huwa lahuu",
    translate:
    '"Dengan nama-Mu yaa Allah akku minta kepada Engkau kebaikan pakaian ini dan kebaikan apa yang ada padanya, dan aku berlindung kepada Engkau dari kejahatan pakaian ini dan kejahatan yang ada padanya"',

    title2: 'Doa Melepas Pakaian',
    arabic2: 'بِسْمِ اللهِ الَّذِيْ لاَ إِلَهَ إِلَّا هُوَ',
    latinArab2: "Bismillaahil ladzii laa ilaaha illaa huwa",
    translate2: '"Dengan nama Allah yang tiada Tuhan selain-Nya"',
  ),
  ModelDoa(
    titleCover: 'Do\'a Masuk dan Keluar Rumah',
    imageCover: 'assets/doa_rumah.png',
    title: 'Doa Masuk Rumah',
    arabic:
    'اَللّٰهُمَّ اِنّىْ اَسْأَلُكَ خَيْرَالْمَوْلِجِ وَخَيْرَالْمَخْرَجِ بِسْمِ اللهِ وَلَجْنَا وَبِسْمِ اللهِ خَرَجْنَا وَعَلَى اللهِ رَبّنَا تَوَكَّلْنَا',
    latinArab:
    "Allahumma innii as-aluka khoirol mauliji wa khoirol makhroji bismillaahi wa lajnaa wa bismillaahi khorojnaa wa'alallohi robbina tawakkalnaa",
    translate:
    '"Ya Allah, sesungguhnya aku mohon kepada-Mu baiknya tempat masuk dan baiknya tempat keluar dengan menyebut nama Allah kami masuk, dan dengan menyebut nama Allah kami keluar dan kepada Allah Tuhan kami, kami bertawakkal"',

    title2: 'Doa Keluar Rumah',
    arabic2:
    'بِسْمِ اللهِ تَوَكَّلْتُ عَلَى اللهِ لاَحَوْلَ وَلاَقُوَّةَ اِلاَّ بِالله',
    latinArab2:
    "Bismillaahi tawakkaltu 'alalloohi laa hawlaa walaa quwwata illaa bilaahi",
    translate2:
    'Dengan menyebut nama Allah aku bertawakal kepada Allah, tiada daya kekuatan melainkan dengan pertologan Allah."',
  ),
  ModelDoa(
    titleCover: 'Do\'a Ketika Wudhu',
    imageCover: 'assets/doa_wudhu.png',
    title: 'Niat Wudhu',
    arabic: 'نَوَيْتُ الْوُضُوْءَ لِرَفْعِ الْحَدَثِ اْلاَصْغَرِ فَرْضًا ِللهِ تَعَالَىِ',
    latinArab: '“Nawaitul whudu-a lirof’il hadatsii ashghori fardhon lillaahi ta’aalaa”',
    translate:
    '“Saya niat berwudhu untuk menghilangkan hadast kecil fardu (wajib) karena Allah ta’ala”',

    title2: 'Doa Keluar Toilet',
    arabic2:
    '  اَشْهَدُاَنْ لَااِلٰهَ اِلَّا اللّٰهُ وَحْدَهُ لَاشَرِيْكَ لَهُ. وَاَشْهَدُ اَنَّ مُحَمَّدًاعَبْدُهُ وَرَسُوْلُهُ. اَللّٰهُمَّ اجْعَلْنِىْ مِنَاالتَّوَّابِيْنَ، وَجْعَلْنِيْ مِنَ الْمُتَطَهِّرِيْنَ، وَجْعَلْنِىْ مِنَْعِبَادِكَ الصَّالِحِيْنَ',
    latinArab2:
    '“Asyhadu allaa ilaaha illallah wahdahu laa syariikalahu . Wa asyhadu anna Muhammadan’abduhu wa rasuuluhu Allahumma-j alnii minattabinna waj alnii minal mutathohiirina waj alnii min ‘ibadatishalihin.”',
    translate2:
    '“Saya bersaksi tiada Tuhan melainkan Allah yang esa , tiada sekutu bagi-Nya . Dan saya bersaksi bahwa nabi Muhammad adalah hamba-Nya dan utusan-Nya . Ya Allah jadikanlah saya orang yang ahli taubat , dan jadikanlah saya orang yang suci , dan jadikanlah saya dari golongan hamba-hamba Mu yang shaleh.”',
  ),

];
