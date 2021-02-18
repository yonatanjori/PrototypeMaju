-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2021 at 05:18 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maju`
--

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `contentid` int(11) NOT NULL,
  `tag1` varchar(20) NOT NULL,
  `tag2` varchar(20) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `desc` varchar(100) NOT NULL,
  `status1` varchar(9) NOT NULL,
  `status2` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`contentid`, `tag1`, `tag2`, `title`, `text`, `desc`, `status1`, `status2`) VALUES
(0, '', NULL, '', '', '', '', ''),
(1, '1', '17', 'Fashion di Sosial Media', '\"While Drinkwater thinks we are still at least five to 10 years away from digital clothing being commonplace, we have a long way to go.\r\n\r\nDespite offering a possible solution to our culture of disposable fashion, doesn\'t digital fashion fall into the same trap? You\'ll not only (likely) post once before relegating that over-sized blue puffer jacket to the back of your virtual wardrobe, but are actively encouraged to do so.\r\n\r\nAnd then there are the influencers. While the proposition of designer-worthy outfits that can be fitted to your particular body regardless of its shape is no doubt a tantalising one for people with giant followings (and the compulsion to post new like-garnering content on a daily basis), it\'s hard to imagine it having the same pull for people who don\'t spend every waking minute on Instagram.\r\n\r\n\r\n\'As a regular punter, surely you really want to wear [your clothes] because nobody really sees your pictures on Instagram?\' asks Shonagh Marshall, New York-based fashion curator.\r\nReally, though, when so much of the joy of fashion is in dressing up, could we really have the same emotional connection with something that doesn\'t even exist? The tactile experience of running your fingers over a satin dress is what makes it so joyous.\r\n\r\nInstead, Drinkwater thinks we\'ll start to build an \'entirely different\' relationship with our clothes. \'With the proliferation of high street stores where everybody is pumping out huge volumes, but every store is the same, it’s made the world very boring. I think the element of exclusivity that you could create through digital clothing is something that could build that desire and actually return a sense of how we used to shop.\'\r\n\r\nStill, Murphy believes that digital clothing is inevitably the next frontier in fashion.\r\n\r\n\'It\'s crazy to deny that our lives are becoming more virtual and that we are moving towards a more digital existence, especially with the popularity of virtual influencers like Lil Miquela (with 1.6 million Instagram followers),\' he says. \'People are following her like any soap opera on TV, but two years ago, everybody was saying that’s ludicrous as well!”\r\n\r\nHowever you might feel about virtual clothes, there’s no ignoring that the industry needs a serious overhaul. Digital fashion could potentially pave the way for a more sustainable business model – one where our overconsumption of worn-once clothing is drastically diminished. Post and save the planet at the same time? We\'re here for it - whether we actually get there remains to be seen.\"', 'Feeling the Untouchable Fashion', 'read', 'active'),
(2, '12', '', 'Meningkatkan Brand Awareness', '\"Brand awareness atau kesadaran merek merupakan kemampuan konsumen dalam mengenali dan mengingat suatu merek, produk atau jasa. Brand awareness penting bagi bisnis karena konsumen cenderung membeli produk yang berasal dari merek yang dikenalnya. Data dari Nielsen Global New Product Innovation Survey menunjukkan, 59% konsumen lebih memilih untuk membeli produk baru yang dibuat oleh brand yang tidak asing bagi mereka.\r\n\r\nMenumbuhkan dan meningkatkan brand awareness memang bukan proses yang mudah dilakukan. Namun keberhasilan proses ini akan memberikan dampak jangka panjang yang baik bagi bisnis. Oleh karena itu, untuk Anda yang ingin bisnisnya terus berkembang, Anda dapat mencoba berbagai cara yang telah dirangkum untuk meningkatkan brand awareness berikut ini.\r\nBuat Logo dan Tagline Menarik:\r\n\r\nHal yang paling mendasar untuk menciptakan brand awareness adalah membuat logo dan tagline semenarik mungkin. Logo akan muncul pada setiap yang berhubungan dengan bisnis Anda. Mulai dari produk, poster, website, media sosial, kartu nama serta dokumen lainnya. Buatlah logo yang ikonik sehingga lebih melekat dan orang akan mengingat brand Anda dalam sekali pandang.\r\n\r\nSelain itu, buatlah tagline yang sederhana namun sangat merepresentasikan merek. Sehingga mudah diingat dan konsumen dapat dengan mudah mengasosiasikannya dengan merek ketika mereka mendengar atau membaca tagline. Namun sederhana di sini bukan berarti asal-asalan, karena tagline yang tidak baik justru bisa merusak reputasi brand. Pilihlah kata-kata yang bermakna, mewakili merek, serta dekat dengan kehidupan sehari-hari konsumen.\r\n\r\nAktif di Media Sosial: \r\n\r\nMembangun citra di media sosial disebut sebagai cara terbaik agar lebih dekat dengan konsumen. Alasannya adalah karena masyarakat saat ini hampir seluruhnya mempunyai akun media sosial baik itu Facebook, Instagram, Twitter dan lain sebagainya. Menurut “Digital Around The World 2019”, di Indonesia sendiri ada lebih dari 150 juta orang yang menggunakan media sosial dari total 268 juta penduduk. Dan setidaknya menghabiskan waktu 3 jam 26 menit setiap harinya mengakses media sosial untuk tujuan apapun.\r\n\r\nAnda bisa menjangkau konsumen dengan memanfaatkan platform yang setiap hari mereka akses. Media sosial memungkinkan merek dapat dikenal oleh target pasar spesifik secara luas. Agar merek Anda cepat dikenal oleh target pasar, gunakanlah fitur promotion atau iklan. Selain itu brand awareness juga dapat ditingkatkan dengan bekerja sama dengan influencer yang aktif di media sosial.\r\n\r\n Buat Website yang Menarik dan Informatif:\r\n\r\nSelain aktif di media sosial, Anda juga harus pintar memanfaatkan website yang dimiliki. Buat tampilan yang menarik dan berikan informasi yang berguna. Bangunlah website yang user-friendly agar mudah digunakan oleh konsumen. Juga, berikan informasi produk atau jasa yang ditawarkan dengan lengkap dan mudah dimengerti.\r\n\r\nAgar calon pelanggan tertarik untuk mengunjungi website merek, buatlah konten artikel yang berisi informasi yang relevan dengan mereka. Dengan artikel, Anda tidak hanya mengedukasi, namun bisa sekaligus mengarahkan konsumen pada brand Anda.\r\n\r\n\"', 'Cara Meningkatkan Brand Awareness untuk Manfaat Jangka Panjang Bisnis', 'unread', 'unread'),
(3, '13', '21', 'Pelanggan dan Anda', '\"Menjaga hubungan baik dengan klien, konsumen atau customer merupakan salah satu kewajiban dalam sebuah bisnis. Pasalnya bisnis akan berkembang berkat adanya klien atau konsumen, atau customer. Oleh sebab itu, penting bagi Anda pemilik bisnis untuk mengetahui customer relationship. \r\n\r\nKeberadaan konsumen atau klien menjadi demikian pentingnya. Oleh sebab itu, bagi setiap pebisnis hendaknya selalu melakukan hubungan baik dengan membangun komunikasi yang baik, guna mengikat konsumen agar dapat melakukan pembelian berulang. \r\n\r\nPenting harus diketahui bahwa setiap pebisnis tidak harus fokus pada inovasi produk semata. Walaupun hal tersebut merupakan bagian yang penting. Namun, menjaga customer relationship pun sangat jauh lebih penting. Bisnis dapat berkembang. \r\n\r\nWalaupun terkesan sulit, namun membangun komunikasi merupakan hal yang sangat penting. Komunikasi dapat membuat perusahaan menjadi lebih baik dalam peluncuran produk, serta bentuk pelayanan kepada konsumen. \"', 'Serba-serbi Customer Relation', 'read', 'unread'),
(4, '14', '17', 'Digital Marketing 101', '\"Istilah digital marketing telah dikenali publik akhir-akhir ini. Berbagai perusahaan berlomba-lomba mencari kandidat pekerja digital marketer untuk mendukung bisnisnya. Jasa digital marketing juga mulai banyak ditawarkan oleh agensi-agensi independen.\r\n\r\nDi era serba digital ini, pemasaran lewat media digital memang sangat penting. Penumpang taksi di jalan misalnya, kini sudah tidak mengarahkan perhatiannya ke papan-papan iklan di pinggir jalan lagi. Mereka cenderung fokus menggunakan ponsel pintarnya untuk mengakses berbagai informasi yang tersedia di internet.\r\n\r\nPemasaran tradisional sudah tak lagi efektif bagi pasar yang sebagian besarnya sudah beralih ke teknologi komunikasi terkini.\r\n\r\nJadi, mari ketahui apa sebenarnya pengertian digital marketing, bagaimana cara kerjanya dan apa saja yang bisa Anda lakukan lewat strategi pemasaran satu ini. Anda para pengembang bisnis atau calon digital marketer, wajib tahu soal jenis pemasaran terbaru ini agar branding dan selling Anda meningkat.\r\n\r\nApa itu Digital Marketing?\r\n\r\nDigital marketing adalah pemasaran produk maupun jasa yang dilakukan dengan media digital. Tujuan dari pemasaran ini adalah untuk menjangkau sebanyak-banyaknya target customer secara efisien, personal dan relevan. Pemasaran digital ini memadukan teknik serta pengetahuan dalam psikologi pasar dan teknologi.\r\n\r\nTidak seperti pemasaran tradisional yang memasang iklan lewat baliho, pemasaran digital ini menggunakan berbagai platform digital sebagai media pemasarannya.\"', 'Yang harus dimiliki untuk menjadi yang terbaik!', 'unread', 'unread'),
(9, '17', '1', 'Fashion dan Internet', '\"Dalam perkembangannya ke depan, dunia fesyen juga berkolaborasi dengan teknologi (REUTERS/Suzanne Plunkett)\r\nJakarta, CNN Indonesia -- Perkembangan teknologi kini tak cuma soal gagdet dan peralatan elektronik. Ke depannya, perkembangan teknologi canggih juga merambah ke dunia fesyen.\r\n\r\nBukan cuma soal pembuatan serat kain serta bahan saja yang butuh teknologi, tapi juga informasi soal baju yang Anda beli dan pakai.\r\n\r\nBayangkan saat Anda baru membeli sebuah jaket baru dari lini busana favorit Anda. Kemudian lihat tag di bagian dalam baju dan scan label itu dengan ponsel Anda. Sebuah menu dan informasi soal jaket Anda pun akan muncul di layar ponsel.\r\nMengutip Quartz, Anda akan mendapatkan informasi tentang desain jaket, bagaimana cara label tersebut membuat serat kain, dan detail tentang pabrik yang memproduksi baju tersebut. Setelahnya, Anda bisa memasang earphone dan mendengarkan lagu yang disediakan oleh si \'jaket.\'\r\n\r\nSaat jaket terkena kotoran akibat makanan atau minuman yang tumpah, Anda tak perlu bingung memilih perawatan yang tepat di mesin cuci. Jaket ini akan langsung berkomunikasi dengan mesin cuci secara ajaib.\r\n\r\nIni adalah visi futuristis yang dibuat oleh Avery Dennison, perusahaan yang memproduksi label perawatan sekaligus mengembangkan solusi ritel untuk berbagai label.\r\n\r\nRana Sidahmed, direktur kreatif untuk perusahaan tersebut, mengungkapkan bahwa tak lama lagi, dunia fesyen akan memasuki era pakaian yang terhubung dengan internet.\r\n\r\n\"\"Saya pikir ini adalah masa depan. Seperti ungkapan William Gibson [penulis sci-fi], masa depan sudah ada di sini, tapi sebarannya masih belum merata,\"\" katanya dikutip dari Quartz.\r\n\r\nSebenarnya pakaian yang berbasis internet sudah diciptakan, namun masih dalam bentuk percobaan. Di acara Decoded Fashion Summit pada 2 November 2016 lalu, Avery Dennison memperkenalkan sebuah jaket bomber yang disebut Bright BMBR.\r\n\r\nJaket bomber ini dibuat oleh label Rochambeay dan Evrthing, sebuah perusahaan internet start up di London.\r\n\r\nJaket ini memiliki NFC chip (Near Field Communication) atau RFID, sebuah chip yang digunakan untuk membayar sesuatu tanpa uang tunai di ponsel. Jaket ini juga memiliki sebuah kode QR personal yang berfungsi sebagai tiket VIP untuk masuk ke berbagai acara di New York, termasuk makan malam, museum, sampai show di New York Fashion Week mendatang.\r\n\r\nJaket ini akan dijual pada Desember mendatang dengan harga US$630. Pada periode pertama, jaket ini hanya diproduksi 15 buah.\r\n\r\nPada awal tahun ini, Rochambeay dan Evrthing menyatakan siap terkoneksi dengan 10 miliar baju dan aksesoris yang dijual secara online.\r\n\r\nPrediksi fesyen di tahun ke depan memang sudah bergerak ke arah teknologi. Di konferensi tren forecasting dari WGSN, direktur insight dan perilaku konsumen Andrea Bell memprediksikan bahwa pada 2030 pakaian wearable (mudah dipakai) tak lagi dipilih, dan bakal usang. \"\"Kami tak akan butuh pakaian yang wearable, ini hanya akan ada di lemari saja.\"\"\r\n\r\nNamun sebenarnya, teknologi RFID ini bukan pertama kali dikembangkan. Sebelumnya sudah ada banyak perusahaan yang menggunakan RFID. Marks and Spencer, misalnya, mereka menggunakan RFID untuk melacak inventaris. Namun tantangannya adalah untuk membuat RFID ini berfungsi langsung bagi pelanggan.\r\n\r\nBeberapa perusahaan fesyen juga sudah pernah menerapkan hal ini langsung untuk pelanggannya. Burberry adalah pioner dalam hal ini. Pada 2012, mereka membuka sebuah toko di London dengan kaca yang bisa berinteraksi dengan baju ber-RFID. RFID ini sudah dijahit ke dalam bajunya.\"', 'Yuk cari tahu bagaimana fashion experience bisa dinikmati secara virtual!', 'unread', 'unread'),
(11, '17', '1', 'In the name of Digital Fashion', '\"While Drinkwater thinks we are still at least five to 10 years away from digital clothing being commonplace, we have a long way to go.\r\n\r\nDespite offering a possible solution to our culture of disposable fashion, doesn\'t digital fashion fall into the same trap? You\'ll not only (likely) post once before relegating that over-sized blue puffer jacket to the back of your virtual wardrobe, but are actively encouraged to do so.\r\n\r\nAnd then there are the influencers. While the proposition of designer-worthy outfits that can be fitted to your particular body regardless of its shape is no doubt a tantalising one for people with giant followings (and the compulsion to post new like-garnering content on a daily basis), it\'s hard to imagine it having the same pull for people who don\'t spend every waking minute on Instagram.\r\n\r\n\r\n\'As a regular punter, surely you really want to wear [your clothes] because nobody really sees your pictures on Instagram?\' asks Shonagh Marshall, New York-based fashion curator.\r\nReally, though, when so much of the joy of fashion is in dressing up, could we really have the same emotional connection with something that doesn\'t even exist? The tactile experience of running your fingers over a satin dress is what makes it so joyous.\r\n\r\nInstead, Drinkwater thinks we\'ll start to build an \'entirely different\' relationship with our clothes. \'With the proliferation of high street stores where everybody is pumping out huge volumes, but every store is the same, it’s made the world very boring. I think the element of exclusivity that you could create through digital clothing is something that could build that desire and actually return a sense of how we used to shop.\'\r\n\r\nStill, Murphy believes that digital clothing is inevitably the next frontier in fashion.\r\n\r\n\'It\'s crazy to deny that our lives are becoming more virtual and that we are moving towards a more digital existence, especially with the popularity of virtual influencers like Lil Miquela (with 1.6 million Instagram followers),\' he says. \'People are following her like any soap opera on TV, but two years ago, everybody was saying that’s ludicrous as well!”\r\n\r\nHowever you might feel about virtual clothes, there’s no ignoring that the industry needs a serious overhaul. Digital fashion could potentially pave the way for a more sustainable business model – one where our overconsumption of worn-once clothing is drastically diminished. Post and save the planet at the same time? We\'re here for it - whether we actually get there remains to be seen.\"', 'Feeling the Untouchable Fashion', 'read', 'unread'),
(12, '17', '1', 'Chanel and Channel', '\"It was reported in McKinsey that by 2025 online luxury sales to the global high-end market will more than triple to reach $91 billion. Meaning, 20 percent of luxury sales will be done online. However, this would have been impossible if not for the technological advancements, one of which is mobile inclusion. \r\n\r\nMarketers know that mobile phone penetration has made it easier for more people to access the internet. The internet is and will continue to be one of the major means through which people first get introduced to the existence of a luxury item. \r\n\r\nJanel Tanna, a multiple award-winning indie film actress, producer and fashion model, who is also a medical doctor, has a similar line of thought. As both an artist and caregiver working as an essential worker during the COVID pandemic as a resident psychiatrist, she says “the value of human interaction cannot be understated.” \r\n\r\nHowever, she believes that “technology in all realms as well as fashion and art, has enabled more opportunities around traditional gatekeepers of the industry to allow unique individuals and companies to create their own niche and reach markets they likely would not have reached prior.”\r\n\r\nMost, if not all, luxury brands sport their own websites today. Their website is a platform from which their high profile target audience can learn more about them. Luxury brands who take advantage of this could make it easy for their buyers to purchase one of their high-end collections if they have online shopping functionalities in place. \r\n\r\nLuis Vuitton, a luxury fashion brand, caught on with the increasing importance of e-commerce early such that they went on an e-commerce launching spree. Now they have e-commerce platforms for their various outlets around the world including the UAE, Sweden, Singapore and New Zealand. \r\n\r\nLuxury makeup brand, Sephora, took providing excellent customer experience to another level by introducing Augmented Reality (AR). Now customers can go to their website and view their products in greater detail through AR as if they\'re checking through products in the physical store. Their website provides 3D images of the products, so you don\'t have to leave your house. \r\n\r\nAs online marketplaces are making great waves in the retail market, Janel recommends that all owners of luxury brands should start looking at their website as a potential extension of their brands online and should start integrating FinTech systems to facilitate transactions. According to her, “financial technology could allow more seamless transactions and interaction than seen previously.”\"', 'How famous brands go digital', 'unread', 'unread'),
(13, '17', '1', 'Rise of the planet of the Digital Fashion', '\"It was reported in McKinsey that by 2025 online luxury sales to the global high-end market will more than triple to reach $91 billion. Meaning, 20 percent of luxury sales will be done online. However, this would have been impossible if not for the technological advancements, one of which is mobile inclusion. \r\n\r\nMarketers know that mobile phone penetration has made it easier for more people to access the internet. The internet is and will continue to be one of the major means through which people first get introduced to the existence of a luxury item. \r\n\r\nJanel Tanna, a multiple award-winning indie film actress, producer and fashion model, who is also a medical doctor, has a similar line of thought. As both an artist and caregiver working as an essential worker during the COVID pandemic as a resident psychiatrist, she says “the value of human interaction cannot be understated.” \r\n\r\nHowever, she believes that “technology in all realms as well as fashion and art, has enabled more opportunities around traditional gatekeepers of the industry to allow unique individuals and companies to create their own niche and reach markets they likely would not have reached prior.”\r\n\r\nMost, if not all, luxury brands sport their own websites today. Their website is a platform from which their high profile target audience can learn more about them. Luxury brands who take advantage of this could make it easy for their buyers to purchase one of their high-end collections if they have online shopping functionalities in place. \r\n\r\nLuis Vuitton, a luxury fashion brand, caught on with the increasing importance of e-commerce early such that they went on an e-commerce launching spree. Now they have e-commerce platforms for their various outlets around the world including the UAE, Sweden, Singapore and New Zealand. \r\n\r\nLuxury makeup brand, Sephora, took providing excellent customer experience to another level by introducing Augmented Reality (AR). Now customers can go to their website and view their products in greater detail through AR as if they\'re checking through products in the physical store. Their website provides 3D images of the products, so you don\'t have to leave your house. \r\n\r\nAs online marketplaces are making great waves in the retail market, Janel recommends that all owners of luxury brands should start looking at their website as a potential extension of their brands online and should start integrating FinTech systems to facilitate transactions. According to her, “financial technology could allow more seamless transactions and interaction than seen previously.”\"', 'To digitze or to extinct', 'read', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `convert_tag`
--

CREATE TABLE `convert_tag` (
  `tagid` int(5) NOT NULL,
  `tag` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `convert_tag`
--

INSERT INTO `convert_tag` (`tagid`, `tag`) VALUES
(1, 'Fashion'),
(2, 'Technology'),
(3, 'Education'),
(4, 'Food & Beverage'),
(5, 'Beauty'),
(6, 'Home & Living'),
(7, 'Other'),
(8, 'Selalu, digital marketing adalah platform marketing utama'),
(9, 'Cukup sering, ketika sedang promosi produk baru dan keperluan lainnya'),
(10, 'Cukup jarang, hanya ketika ingat saja atau ada keperluan tertentu'),
(11, 'Baru ingin mencoba'),
(12, 'Meningkatkan brand awareness'),
(13, 'Mempertahankan pelanggan'),
(14, 'Mendapatkan pelanggan baru'),
(15, 'Meningkatkan customer participation'),
(16, 'Tren'),
(17, 'Strategi Marketing'),
(18, 'Campaign Design'),
(19, 'Advertisements'),
(20, 'Tutorials'),
(21, 'Customer Relation'),
(22, 'Management');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bus_type` varchar(20) DEFAULT NULL,
  `dm_active` varchar(80) DEFAULT NULL,
  `bus_ageTarget` varchar(6) DEFAULT NULL,
  `bus_genderTarget` char(1) DEFAULT NULL,
  `dm_purpose` varchar(50) DEFAULT NULL,
  `dm_budget` int(11) DEFAULT NULL,
  `bus_avgsales` int(11) DEFAULT NULL,
  `bus_revTarget` int(11) DEFAULT NULL,
  `content_interest1` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `name`, `email`, `bus_type`, `dm_active`, `bus_ageTarget`, `bus_genderTarget`, `dm_purpose`, `dm_budget`, `bus_avgsales`, `bus_revTarget`, `content_interest1`) VALUES
(12, 'rRara', '', 'Fashion', '0', '41-45', 'L', 'Mempertahankan pelanggan', 200000, 120000, 2000000, '  Advertisements'),
(56, 'Rara', 'test@gmail.com', 'Fashion', 'Selalu, digital marketing adalah platform marketing utama', '18-29', 'P', 'Meningkatkan customer participation', 200000, 10000, 1000000, 'Strategi Marketing'),
(99, 'sarsab', '', 'Beauty', '0', '35-40', 'P', 'Meningkatkan brand awareness', 123123, 342343, 123123123, '  Strategi Marketing'),
(100, 'Yonatan Jori Saputro', 'yonatanjori@gmail.com', 'Fashion', 'Selalu, digital marketing adalah platform marketing utama', '13-17', 'M', 'Mendapatkan pelanggan baru', 123, 123, 123, 'Tren');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`) VALUES
(1, 'adito Siregar', '0'),
(2, 'Mikha Grinelda', '0'),
(3, 'STEI ITB 2018', '0'),
(4, 'Yonatan Jori Saputro', 'yonatanjori@gmail.com'),
(5, 'STEI ITB 2018', 'stei2018itb@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`contentid`);

--
-- Indexes for table `convert_tag`
--
ALTER TABLE `convert_tag`
  ADD PRIMARY KEY (`tagid`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
