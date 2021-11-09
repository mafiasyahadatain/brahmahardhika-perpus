-- Database for Perpustakaan
-- @author Fanny Hasbi
-- @link https://github.com/fannnyhasbi/perpustakaan

--
-- Table buku
--
CREATE TABLE buku (
  id INT NOT NULL AUTO_INCREMENT,
  kode VARCHAR(100),
  judul VARCHAR(100),
  kategori VARCHAR(100),
  pengarang VARCHAR(100),
  penerbit VARCHAR(100),
  tahun VARCHAR(100),
  tempat VARCHAR(100),
  halaman VARCHAR(100),
  jumlah VARCHAR(100),
  no_inventaris VARCHAR(100),
  rak VARCHAR(100),
  keterangan VARCHAR(100),
  PRIMARY KEY (id)
);

INSERT INTO buku (kode, judul, kategori, pengarang, penerbit, tahun, tempat, halaman, jumlah, no_inventaris, rak, keterangan) VALUES
('A001','BENDEL: Sejarah Arung Jeram, Morfologi Dataran Tinggi Dieng, Peran Mapala dalam Kegiatan SAR','Kepecintaalaman',NULL,NULL,'2003',NULL,NULL,'1','001A','Atas',NULL),
('A002','Materi Gladi Ruang Pendidikan Dasar XXIX Brahmahardhika','Kepecintaalaman','Brahmahardhika','BRAHMAHARDHIKA','2010','Surakarta',NULL,'1','002A','Atas','Cover Hijau'),
('A003','Menuju Kongres Pertama FKPA','Kepecintaalaman',NULL,NULL,NULL,NULL,NULL,'1','003A','Atas',NULL),
('A004','Kartono Mohamad-Pertolongan Pertama',NULL,NULL,NULL,'1996',NULL,NULL,'1','A004',NULL,NULL),
('A005','BENDEL: Bantuan Hidup Dasar & Resisutasi Jantung Paru (BHD & RJP)','Kepecintaalaman',NULL,NULL,'2015',NULL,NULL,'1','005A','Atas','Cover Kuning'),
('A006','Materi Gladi Ruang Pendidikan Dasar XXX Brahmahardhika','Kepecintaalaman','Brahmahardhika','BRAHMAHARDHIKA','2011','Surakarta',NULL,'1','006A','Atas','Cover Kuning'),
('A007','Hasil Diskusi Peserta Kemah Konservasi BTNGM','Kepecintaalaman',NULL,NULL,'2013',NULL,NULL,'1','007A','Atas',NULL),
('A008','GPS: Global Positioning System','Kepecintaalaman',NULL,NULL,NULL,NULL,NULL,'1','008A','Atas','Cover Buram'),
('A009','Studi Lingkungan Bengawan Solo','Kepecintaalaman','PMPA KOMPOS FP UNS',NULL,'2003','Surakarta','8','1','009A','Atas','Cover Biru'),
('A010','Pelatihan PP PMI Cabang Kota Surakarta','Kepecintaalaman','PMI Surakarta',NULL,'2010','Surakarta',NULL,'1','010A','Atas','Digabung dengan Penampungan Darurat PMI Jawa Timur'),
('A011','Atmosfer Sebagai Objek Studi Meteorologi','Kepecintaalaman',NULL,NULL,NULL,NULL,'57','1','011A','Atas',NULL),
('A012','Materi Pendidikan dan Latihan Calon Anggota GPA. AESTHETICA','Kepecintaalaman','Anggota Gpa.  Aesthetica ISTN','GPA. AESTHETICA INSTITIUT SAINS DAN TEKNOLOGI NASIONAL','1993','Jakarta','171','1','012A','Atas',NULL),
('A013','Sekolah SAR','Kepecintaalaman',NULL,'WANADRI','1988',NULL,NULL,'1','013A','Atas',NULL),
('A014','Materi Gladi Ruang Diksar XVI Brahmahardhika','Kepecintaalaman','Brahmahardhika','BRAHMAHARDHIKA','1997','Surakarta',NULL,'1','014A','Atas',NULL),
('A015','Diktat SPG WANADRI','Kepecintaalaman',NULL,'WANADRI',NULL,NULL,'215','1','015A','Atas',NULL),
('A016','SURVIVAL: Teknik Bertahan Hidup di Alam Bebas','Kepecintaalaman','N. S. Adiyuwono',NULL,NULL,NULL,'183','1','016A','Atas',NULL),
('A017','Manual Kompetisi Panjat Tebing','Kepecintaalaman','Federasi Panjat Tebing Indonesia','FPTI','2000',NULL,'70','1','017A','Atas',NULL),
('A018','Sistem Koordinat Geografis & UTM','Kepecintaalaman',NULL,NULL,NULL,NULL,NULL,'1','018A','Atas',NULL),
('A019','Sebahagian Kegiatan : Dr. Adhyaksa Dault, MSi. (Menpora)','Kepecintaalaman','Albert H. Silitonga','Vanaprastha','2009','Jakarta',NULL,'1','019A','atas',NULL),
('A020','Orienteering What s That?','Kepecintaalaman','Julian Ch. Manoppo','Orienteering Sulawesi Utara','2010','Sulawesi',NULL,'1','020A','atas',NULL),
('A021','Mengenal Orienteering','Kepecintaalaman','Federasi Orienteering Banyumas','FOB','2012','Banyumas','25','1','021A','Atas',NULL),
('A022','Orienteering What s That?','Kepecintaalaman','Bidang Pengembangan FONI','FONI','2016',NULL,NULL,'1','022A','atas',NULL),
('A023','Bendel : Hindari dan Cegah Kebakaran Hutan, Panduan Sadar Wisata','Kepecintaalaman','TNGM','Dekad Kunjungan Indonesia','1996',NULL,'27','1','023A','Atas',NULL),
('A024','Pengelolaan Kawasan Pantai di Indonesia Dalam Upaya Untuk Lebih Menggiatkan Wisaata Bahari','Kepecintaalaman','N.K Mardani','Himpunan Mahasiswa Teknik Geologi FT UGM','1996','DIY','14','1','024A','Atas',NULL),
('A025','Jenis Hutan dan Manfaatnya','Kepecintaalaman','-',NULL,NULL,NULL,NULL,'1','025A','Atas',NULL),
('A026','Peran Serta Masyarakat di Kawasan Konservasi','Kepecintaalaman','BKSDA Jawa Tengah',NULL,'2010',NULL,NULL,'1','026A','Atas',NULL),
('A027','Taman Nasional Gunung Merbabu','Kepecintaalaman','TNG Merbabu',NULL,NULL,NULL,NULL,'1','027A','Atas',NULL),
('A028','Materi Pelatihan PP PMI Kota Surakarta','Kepecintaalaman','PMI cabang Kota Surakarta','PMI Cabang Kota Surakarta','2012',NULL,NULL,'1','028A','Atas',NULL),
('A029','Makalah Kebijakan Pengembangan Konservasi SDA di Jawa tengah','Kepecintaalaman','BKSDA Jawa Tengah',NULL,'2002',NULL,'8','1','029A','Atas',NULL),
('A030','Lomba Orienteering Se-Bandung Raya','Kepecintaalaman','WANADRI Komisaris ITB','WANADRI','1988',NULL,'13','1','030A','atas',NULL),
('A031','Identifikasi Tingkat Kekritisan Lahan DAS Bengawan Solo','Kepecintaalaman','Balai Penelitian Kehutanan Solo',NULL,'2010',NULL,NULL,'1','031A','Atas',NULL),
('A032','Kepencintaalaman','Kepecintaalaman','Nanang N.A.R','BRAHMAHARDHIKA','2003','Surakarta','5','1','032A','Atas',NULL),
('A033','Materi Outbond','Pariwisata','Brahmahardhika','BRAHMAHARDHIKA',NULL,'Surakarta','65','1','033A','Atas',NULL),
('A034','Potensi : Asal Permata','Kepecintaalaman','Potensi',NULL,NULL,NULL,'35','1','034A','Atas',NULL),
('A035','Indonesia: handbook west kalimantan','Pariwisata',NULL,'WEST KALIMANTAN TURISM OFFICE',NULL,NULL,'46','1','035A','Atas',NULL),
('A036','Perlindungan Hutan','Kepecintaalaman','Sub Dinas Penataan dan Perlindungan Hutan','Dinas Kehutanan Provinsi Jawa Tengah','2002','Rembang','8','1','036A','Atas',NULL),
('A037','National Profile : Indonesian Cities Bangun Praja Program ','Pariwisata','Minisitry of environment','Deputy fie capacity develoment of regional environmental management ','2005','jakarta','71','1','037A','Atas',NULL),
('A038','Caving','Kepecintaalaman','Brahmahardhika',NULL,'2012','Surakarta',NULL,'1','038A','Atas',NULL),
('A039','Materi Kajian Caving','Kepecintaalaman','Brahmahardhika','BRAHMAHARDHIKA','2012','Surakarta',NULL,'1','039A','Atas',NULL),
('A040','Gantolle Jateng','Kepecintaalaman','Susetiyoko','Gantolle Jateng',NULL,NULL,NULL,'1','040A','Atas',NULL),
('A041','Alpine Caving Techniquess : a Complete Guide To Save and Effisien Caving ','Kepecintaalaman','Georges Marbach - Bernard Tourte','Speleo Project','2002',NULL,'320','1','041A','Atas',NULL),
('A042','Ceramah Tentang Petualangan di Alam Bebas','Kepecintaalaman','Mustopo',NULL,'1993','Surakarta',NULL,'1','042A','Atas',NULL),
('A043','Materi Gladi Ruang Brahmahardhika','Kepecintaalaman','Brahmahardhika','BRAHMAHARDHIKA',NULL,'Surakarta',NULL,'1','043A','Atas',NULL),
('A044','Buku Panduan Basic trauma and cardiac life suport','Kepecintaalaman','Diklat ambulans gawat darurat 118','Ambulans Gawat Darurat 118','2007','Jakarta','259','1','044A','Atas',NULL),
('A045','Program Penghijauan','Kepecintaalaman','Perwari-Walhi','Perwari-Walhi','1985',NULL,'18','1','045A','Atas',NULL),
('A046','Pengantar Ilmu Survival','Kepecintaalaman','Abrar Prasojo','WANADRI',NULL,NULL,NULL,'1','046A','Atas',NULL),
('A047','ATLAS: Bentang Lahan Edisi Pulau Jawa','Kepecintaalaman','Badan Informasi Geospasial','BIG','2012','Jawa Tengah','160','1','047A','Atas',NULL),
('A048','Gelatik Jawa & Jalak Putih','Kepecintaalaman','Muchamad Muchtar-Pupung F Nurwatha','Yayasan Pribumi Alam Lestari','2001','Bandung','23','1','048A','Atas',NULL),
('A049','Introduction Of Speleology','Kepecintaalaman','Brahmahardhika','BRAHMAHARDHIKA','2007','Surakarta',NULL,'1','049A','Atas',NULL),
('A050','Stasiun Nol: Teknik-teknik Pemetaan dan Survey Hidrologi Gua Edisi 2','Kepecintaalaman','Erlangga Esa Laksmana','ASC Yogyakarta','2005','Yogyakarta',NULL,'1','050A','Atas',NULL),
('A051','Stasiun Nol: Teknik-Teknik Pemetaan dan Survey Hidrologi Gua','Kepecintaalaman','Erlangga Esa Laksmana','ASC Yogyakarta','2005','Yogyakarta','146','1','051A','Atas',NULL),
('A052','SURVIVAL: Teknik Bertahan Hidup di Alam Bebas','Kepecintaalaman','N.S Adiyuwono','Angkasa Bandung',NULL,'Bandung','183','1','052A','Atas',NULL),
('A053','Mengenal Situs Purbakala di Gunung Penanggungan','Kepecintaalaman','Tim Ekspedisi Penanggungan','UBAYA Press','2013','Surabaya','76','1','053A','Atas',NULL),
('A054','Buku Petunjuk 1 Star Scuba Diver - CMAS Indonesia','Kepecintaalaman','Dewan Instruktur Selam Indonesia','1 Star Scuba Diver CMAS Indonesia','2003','Jakarta',NULL,'1','054A','Atas',NULL),
('A055','Cerita Dari Timur','Kepecintaalaman','Indra Hermawan. Dkk','Gajah Mada University Press','2016','Yogyakarta','234','1','055A','Atas',NULL),
('A056','Pelatihan Dasar Panjat Tebing','Kepecintaalaman','LITBANG Pembinaan Prestasi FPTI Pengda Jateng','PAMAFA','1997','Semarang',NULL,'1','056A','Atas',NULL),
('A057','Teknik Pembuatan Tanaman Jabon','Pertanian','Idi Bantara','BPDAS Solo','2010','Surakarta','12','1','057A','Atas',NULL),
('A058','MENDAKI GUNUNG: Sebuah Tantangan Petualangan','Kepecintaalaman','Norman Edwin','Aya Media Pustaka','1987',NULL,'243','1','058A','Atas',NULL),
('A059','Budidaya Tanaman Matoa','Pertanian','BPDAS Solo','BPDAS Solo','2012','Surakarta','12','1','059A','Atas',NULL),
('A060','Budidaya Tanaman Matoa','Pertanian','BPDAS Solo','BPDAS Solo','2012','Surakarta','12','1','060A','Arsip',NULL),
('A061','Konservasi Lokasi Bumi Perkemahan Delingan','Kepecintaalaman','Ir. Supriyadi, MP','BPDAS Solo','2013','Surakarta','11','1','061A','Atas',NULL),
('A062','Perencanaan Partisipatif dalam Pengembangan Rencana Kerja Masyarakat untuk Mendukung Pengamanan DAS dan Konservasi DTA','Kepecintaalaman','Edy Supriyanto','BPDAS Solo','2012','Surakarta','16','1','062A','Atas',NULL),
('A063','Ayo Buat Kompos','Pertanian','Deputi V Kementrian Lingkungan Hidup','Kementrian Lingkungan Hidup','2005','Jakarta','19','1','063A','Atas',NULL),
('A064','Konservasi di SUB DAS Keduang','Kepecintaalaman','Taryanto Wijaya','BPDAS Solo','2013','Surakarta','11','1','064A','Atas',NULL),
('A065','INDONESIA: Petunjuk Wisata di Sulawesi Tengah','Pariwisata','Dinas Pariwisata Dati Sulawesi Tengah','Dinas Pariwisata Dati Sulawesi Tengah','1996','Sulawesi Tengah','46','1','065A','Atas',NULL),
('A066','Bersama Alam Kami Berhimpun','Kepecintaalaman','Heroe Soeprapto','Badan Pengurus Harian Tim Pendaki Gunung dan Penjelajah Alam YEPE','2010','Malang','221','1','066A','Atas',NULL),
('A067','Mari Mendaki Gunung Dari Leuser-Cartenz','Kepecintaalaman','Hatib Abdul Kadir','ANDI Yogyakarta','2003','Yogyakarta','181','1','067A','Atas',NULL),
('A068','Sekolah Panjat Tebing Merah Putih: Indonesia Climbing Expedition','Kepecintaalaman','Sekolah Panjat Tebing Merah Putih','Sekolah Panjat Tebing Merah Putih',NULL,'Bandung','47','1','068A','Atas',NULL),
('A069','DIKTAT Latgab FAJY: Skipper and Rescue','Kepecintaalaman',NULL,'FAJI','2015',NULL,'28','1','069A','Atas',NULL),
('A070','Dagang Air','Kepecintaalaman','Henry Heyneardhi-Savio Wermasubun','WIDYASARI PRESS','2004','Salatiga','83','1','070A','Atas',NULL),
('A071','Taman Nasional Gunung Merapi','Pariwisata','Ruky Umaya Dkk.','Balai Taman Nasional Gunung Merapi','2012','Yogyakarta','84','1','071A','Atas',NULL),
('A072','Kumpulan Materi Medis','Kesehatan','Vagus','Vagus',NULL,'Surakarta','39','1','072A','Atas',NULL),
('A073','Panduan Program Bank Pohon','Kepecintaalaman','Ir. Bambang Widyantoro Dkk.','Deputi Bidang Komunikasi Lingkungan dan Pemberdayaan Masyarakat','2009','Jakarta','24','1','073A','Atas',NULL),
('A074','Super Creative Game','Pendidikan, Hiburan','Risang Sutawijaya','Cemerlang Publishing','2013','Yogyakarta','174','1','074A','Atas',NULL),
('A075','Mountain Climbing For Everybody','Kepecintaalaman','Harley Bayu Sastha','Hikmah (PT Mizan Publika)','2007','Jakarta','265','1','075A','Atas',NULL),
('A076','Mamalia di Kalimantan, Sabah, Sarawak, dan Brunei Darussalam','Kepecintaalaman','Junaidi Payne Dkk.','Prima Centra, Indonesia','2000','Jakarta','386','1','076A','Atas',NULL),
('A077','The Power of Outbound Training','Pendidikan, Hiburan','As adi Muhammad','Power Books (IHDINA)','2009','Yogyakarta','192','1','077A','Atas',NULL),
('A078','Tracking Mangrove Taman Nasional Karimun Jawa','Pariwisata','Bina Kawasan Suaka Alam dan Konservasi Flora Fauna','Taman Nasional Laut Karimun Jawa','1999','Jakarta','11','1','078A','Atas',NULL),
('A079','Rencana Garis Besar Diklat Dasar water Rescue BPBD Surakarta','Kepecintaalaman','BPBD ','BPBD Surakarta','2018','Surakarta',NULL,'1','079A','Atas',NULL),
('A080','Atlas Bencana Indonesia 2016','Kepecintaalaman','BNPB','BNPB','2016','Jakarta','197','1','080A','Atas',NULL),
('A081','Infografis Bencana Indonesia 2017','Kepecintaalaman','BNPB','BNPB','2017','Jakarta','90','1','081A','Atas',NULL);

--
-- Table anggota
--
CREATE TABLE anggota (
  id INT NOT NULL AUTO_INCREMENT,
  username VARCHAR(100) NOT NULL,
  password VARCHAR(255) NOT NULL,
  nama VARCHAR(100) NOT NULL,
  status TINYINT(1) NOT NULL DEFAULT 0,
  alamat VARCHAR(255) NULL,
  PRIMARY KEY (id)
);

INSERT INTO anggota (username, password, nama, status, alamat) VALUES
('fannyhasbi', '$2y$10$5R0201EoaIj2aNo4Egn3e.UqCkh2cXzw1aLYaeuBbmVfAiMfdg4nC', 'Fanny Hasbi', 1, 'Brebes'),
('example', '$2y$10$eAkRJ8lPmvC.WSCF2t.6CeikVqD5cHxsN3g5fBzqFBSEVvAQ8sFLK', 'Example Member', 0, 'Semarang'),
('budi', '$2y$10$eAkRJ8lPmvC.WSCF2t.6CeikVqD5cHxsN3g5fBzqFBSEVvAQ8sFLK', 'Budi', 0, 'Salatiga'),
('alice', '$2y$10$eAkRJ8lPmvC.WSCF2t.6CeikVqD5cHxsN3g5fBzqFBSEVvAQ8sFLK', 'Alice ', 0, 'Jakarta');

CREATE TABLE pinjam (
  id INT NOT NULL AUTO_INCREMENT,
  id_anggota INT NOT NULL,
  id_buku INT NOT NULL,
  tanggal TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  FOREIGN KEY (id_anggota) REFERENCES anggota(id),
  FOREIGN KEY (id_buku) REFERENCES buku(id)
);