-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 01:09 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aj_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `basket`
--

CREATE TABLE `basket` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `user_id`, `product_id`, `total`) VALUES
(1, 6, 16, 32),
(2, 6, 13, 12);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `price` float NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `desc` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `alt_text` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `stock` int(11) NOT NULL,
  `sale` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `type`, `image`, `desc`, `alt_text`, `created_at`, `updated_at`, `stock`, `sale`) VALUES
(1, 'Round Cut Stud Earrings 6mm-Silver', 12, 'women-earrings', 'images/diamondearrings.jpg', 'Here we have our special diamond cut earrings which are glamorous, sparkly and sure to brighten up your day. They are round cut stud silver and diamond earrings which are the perfect size for anybody. These earrings are great for special occasions and will really stand out in the room! So, grab your pair today before they are sold out!', 'round-cut-stud-earrings', '2022-11-22', '2022-11-23', 5, 1),
(2, 'Gold Huggie Pearl Drop Earrings', 18, 'women-earrings', 'images/pearlearrings.jpg', 'This is our special pearl earrings that have been created as a special gift for yourself or someone else close to you. It is a mushroom-like pearl with gold studs.', 'gold-huggie-pearl-earrings', '2022-11-22', '2022-11-23', 6, 1),
(3, 'Ines Pearl And Cz Drop Earrings-Rose Gold', 14, 'women-earrings', 'images/pearlearrings2.jpg', 'This is our special pearl earrings that are medium-lengthed. It is slightly translucent, and they are rose-gold. It will definitely brighten up any outfit and will make a great present.', 'ines-pearl-rose-gold-earrings', '2022-11-22', '2022-11-23', 3, 1),
(4, 'Starburst Small Hoop Earrings-Rose Gold', 11, 'women-earrings', 'images/starearrings.jpg', 'These are our small hooped earrings which are shaped like a star. They are small gold dangly star hoops which are attached to a small hoop. They are selling out fast, so grab yours now to wear with any outfit to any event!', 'starburst-earrings', '2022-11-22', '2022-11-23', 9, 1),
(5, 'Gold Chuncky Pendant Necklace', 11, 'women-necklace', 'images/silverchain.jpg', 'This is one of our special one-of-a-kind pendant necklaces. This necklace has a lot of detail and was made to stand out from the crowd. It is a rain-drop shape pendant with a diamond outline and small gold and diamond-filled triangles. This necklace is definitely attractive and is sure to brighten up your day.', 'gold-chunky-necklace', '2022-11-22', '2022-11-23', 7, 1),
(6, 'Gold Dimante Necklace', 12, 'women-necklace', 'images/heartchain.jpg', 'This is a gold and diamond hear necklace attached to a simple gold chain. It matches very nicely with our Starburst Rose-Gold Hoops. It may be simple but it is special and attractive. So grab yours now as once they are gone it will be hard to get it back!', 'gold-dimante-necklace', '2022-11-22', '2022-11-23', 7, 1),
(7, 'Little Sea Shell Necklace', 9, 'women-necklace', 'images/pearlchain.jpg', 'Our sea shell necklace is a necklace filled with pearls. It is a pearl necklace with a circular pearl attached to a gold clasp as the centrepiece. This mature necklace is guaranteed to make your day!', 'little-shell-necklace', '2022-11-22', '2022-11-23', 12, 1),
(8, 'Rose Gold Necklace', 10, 'women-necklace', 'images/salechain.jpg', 'Here we have our simple rose gold necklace. It is simple and plain but that is the beauty of it, it attracts simplicity and can easily be used to attach small charms onto it, allowing you to add to your own necklace. So grab one now!', 'rose-gold-necklace', '2022-11-22', '2022-11-23', 15, 1),
(9, 'Single Diamond Ring', 12, 'women-ring', 'images/diamondring.jpg', 'The ring is silver, with a small diamond in the middle of the ring, which fits small to medium sized fingers. It is a unique silver ring which is suitable and special for each and every function, no matter what. It may be simple, but it is classy and stylish which will definitely elevate an outfit.', 'single-diamong-ring', '2022-11-22', '0000-00-00', 10, 1),
(10, 'Gold Princess Ring', 15, 'women-ring', 'images/goldring.jpg', 'This is one of our princess gold rings which is unique, special and definitely popular, so grab one now before they are out of stock. This has 7 diamonds attached to the ring and is medium sized-ring.', 'gold-princess-ring', '2022-11-22', '0000-00-00', 12, 1),
(11, 'Detailed Gold Ring', 10, 'women-ring', 'images/goldring2.jpg', 'Our gold ring may not be blingy but has a lot of detail. It is a gold ring, with small etched in details around the outside. It may have a simple design but its simplicity attracts attention, which is what this ring is looking for. It comes in a small size and the only colour available is gold. So, why not buy now while it is on sale?', 'detailed-gold-ring', '2022-11-22', '0000-00-00', 5, 1),
(12, 'Silver Diamond Ring', 11, 'women-ring', 'images/silverrings.jpg', 'This is one of our silver studded rings, which is not that popular but offers a lot of bling and attention. It is a smaller size but it is huge in style and looks. It has small diamonds around the ring, making it look posh and stylish. So, why not shop and buy now to make yourself or someone else happy?', 'silver-diamond-ring', '2022-11-22', '0000-00-00', 13, 1),
(13, 'Worded Gold Bracelet', 15, 'women-bracelet', 'images/salebraclet2.jpg', 'Our worded bracelets are different from our other bracelets. They contain words that might be inspirational to you or mean something to you, which makes them personal. These bracelets will include words that are positive and includes two chains to help adjust the bracelet according to your size. They come in gold and the word will be inside a circle. So, grab a worded bracelet now which will uplift yourself or other people!', 'worded-gold-bracelet', '2022-11-22', '0000-00-00', 9, 1),
(14, 'Silver Bracelet', 9, 'women-bracelet', 'images/salebraclet3.jpg', 'The studded bracelet may be simple but is big in style and glamour. They are silver and have small diamonds around the outside of the bracelet. There are only a limited number of these bracelets left, so get one while you can and add to your collection of bracelets.', 'silver-bracelet', '2022-11-22', '0000-00-00', 12, 1),
(15, 'Gold Chunky Bracelet', 20, 'women-bracelet', 'images/salebraclet4.jpg', 'This is our special edition chunky gold bracelet. It is slightly bigger than the rest of the bracelets we have, but this is what makes it unique. Unlike some of the other bracelets, it has a clasp where you can join the bracelet together according to the size of your wrist. It has a gold chain and a gold clasp.', 'gold-chunky-bracelet', '2022-11-22', '0000-00-00', 3, 1),
(16, 'Patterned Gold Bracelet', 18, 'women-bracelet', 'images/salebraclet5.jpg', 'This is another chunky gold bracelet. It is bigger than our regular bracelets, but still just as glamorous and sparkly. It is gold and has a unique pattern around the outside of the bracelet, making it a one-of-a-kind bracelet. This has no clasp around the outside, but it is suitable for all people.', 'patterned-gold-bracelet', '2022-11-22', '0000-00-00', 7, 1),
(17, 'Silver Guardian Angel Bracelet', 17, 'women-bracelet', 'images/shop/bracelets/guardian-angel-bracelet.jpg', 'Give your look a luxe touch with this bracelet. Featuring a silver material with a dainty angel design, what`s not to love? Just add to any fit for the perfect finish.', 'guardian-angel-bracelet', '2022-11-28', '2022-11-29', 9, 0),
(18, 'Plain Silver Bracelet', 13, 'women-bracelet', 'images/shop/bracelets/plain-silver-bracelet.jpg', 'Get ready to make this tennis bracelet a staple for your everyday fit doll. Featuring a real silver plated material with diamante detailing, we are obsessed.', 'plain-silver-bracelet', '2022-11-28', '2022-11-29', 5, 0),
(19, 'Teardrop Shaped Gemstone Silver Bracelet', 25, 'women-bracelet', 'images/shop/bracelets/teardrop-bracelet.jpg', 'A great design for all to wear. Layer it with other bracelets or simply wear it on its own.', 'teardrop-bracelet', '2022-11-28', '2022-11-29', 11, 0),
(20, 'Plain Silver Bangle', 15, 'women-bracelet', 'images/shop/bracelets/plain-silver-bangle-bracelet.jpg', 'Add a subtle touch of luxe to your outfit of the day with this bracelet doll. Featuring a silver material with a chunky bangle design and square crystal detail, we are obsessed.', 'plain-silver-bangle-bracelet', '2022-11-28', '2022-11-29', 5, 0),
(21, 'Silver Butterfly Bracelet', 18, 'women-bracelet', 'images/shop/bracelets/silver-butterfly-bracelet.jpg', '925 Sterling Silver Little Butterfly Bracelet, Lovely Duo Chain Animal Bracelet, Dainty Adjustable Bracelet, Gift for Her', 'silver-butterfly-bracelet', '2022-11-28', '2022-11-29', 3, 0),
(22, 'Oval Cut Gemstone Bracelet', 25, 'women-bracelet', 'images/shop/bracelets/oval-cut-gemstone-bracelet.jpg', 'Medjugorje Rosary bracelet with grains in crystal. The rose shaped grains are baked with a very low temperature by local craftsmen in Medjugorje.', 'oval-cut-gemstone-bracelet', '2022-11-28', '2022-11-29', 1, 0),
(23, 'Green Amber Square Gemstone Bracelet', 27, 'women-bracelet', 'images/shop/bracelets/green-amber-square-gemstone-bracelet.jpg', 'An elegant Green Amber Link Bracelet. Featuring a simple oval Baltic Amber piece, framed with a sparkling sterling silver rope. Available in 3 beautiful colours with matching pendant, earrings and rings.', 'green-amber-square-gemstone-bracelet', '2022-11-28', '2022-11-29', 10, 0),
(24, 'Gold Heart Necklace', 18, 'women-necklace', 'images/shop/necklaces/gold-heart-necklace.jpg', 'A simple plain gold heart pendant perfect for engraving an initial, name or word. Plain or engraved, this lovely pendant is ideal for every day wear. Gift to a loved one or wear as a pretty, simple necklace.', 'gold-heart-necklace', '2022-11-28', '2022-11-29', 9, 0),
(25, 'Gold Four Leaf Clover Necklace', 18, 'women-necklace', 'images/shop/necklaces/gold-four-leaf-clover-necklace.jpg', 'Solid Gold Clover Necklace - Dainty Four Leaf Clover Necklace - Clover Necklace with Initials - Gift For Her - Christmas Gift', 'gold-four-leaf-clover-necklace', '2022-11-28', '2022-11-29', 9, 0),
(26, '3 Heart Necklace', 22, 'women-necklace', 'images/shop/necklaces/3-heart-necklace.jpg', 'A beautiful silver chain with three silver heart beads. A fabulously fashionable necklace and the perfect gift for valentines day!', '3-heart-necklace', '2022-11-28', '2022-11-29', 9, 0),
(27, 'Flower with Pearl Necklace', 20, 'women-necklace', 'images/shop/necklaces/flower-pearl-necklace.jpg', 'Our hand picked flower charm necklace features stunning 24 carat gold plated or silver plated flower charms.', 'flower-pearl-necklace', '2022-11-28', '2022-11-29', 9, 0),
(28, 'Mermaid Necklace', 20, 'women-necklace', 'images/shop/necklaces/mermaid-necklace.jpg', 'Rose Gold Mermaids Locket Necklace, Gold Seashell Locket Necklace, Mermaid Jewelry, Rose Mermaid Locket Necklace, Gift for her', 'mermaid-necklace', '2022-11-28', '2022-11-29', 9, 0),
(29, 'Hollow Heart Necklace', 16, 'women-necklace', 'images/shop/necklaces/hollow-heart-necklace.jpg', 'Small Sterling Silver Necklace ~ Silver Heart Necklace. A petite sterling silver open heart ribbon style pendant necklace', 'hollow-heart-necklace', '2022-11-28', '2022-11-29', 9, 0),
(30, 'Poppies Necklace', 27, 'women-necklace', 'images/shop/necklaces/poppies-necklace.jpg', 'This is a must-have necklace for the summer season doll. Featuring a poppy renaissance design. Style with your fave outfit to complete the look', 'poppies-necklace', '2022-11-28', '2022-11-29', 9, 0),
(31, 'Emerald Gold Hoop Earrings', 24, 'women-earrings', 'images/shop/earrings/emerald-gold-hoop-earrings.jpg', 'Check out our colourful hoop earrings. These are our new emerald hoop earrings, with emerald gems around the earring, making the hoop gold. It is colourful, sparkly and shiny, making it go wel with any outfit.', 'emerald-gold-hoop-earrings', '2022-11-28', '2022-11-29', 1, 0),
(32, 'Double Hoop Diamond Earrings', 25, 'women-earrings', 'images/shop/earrings/double-hoop-diamond-earrings.jpg', 'These are our double hooped silver diamond earrings. They have two hoops with are interlinked together, making it your non-traditional styled earrings. One hoop has got diamonds, and the other hoop is silver. These earrings are one-of-a-kind and will definitely make you stand out from the crowd.', 'double-hoop-diamond-earrings', '2022-11-28', '2022-11-29', 3, 0),
(33, 'Pearl Earrings', 20, 'women-earrings', 'images/shop/earrings/pearl-earrings.jpg', 'Our pearl earrings may seem simple but they are special and attractive. It is a small pearl attached to a small hoop connected to a gold stud, which is definitely going to brighten up yours or anyone else’s day, so get your pair now!', 'pearl-earrings', '2022-11-28', '2022-11-29', 9, 0),
(34, 'Diamond Star Earrings', 27, 'women-earrings', 'images/shop/earrings/diamond-star-earrings.jpg', 'Unlike our Starburst earrings our diamond star earrings are silver and filled with diamonds. They are on a silver stud and are so small and cute. They are very shiny and in the light they are sure to glisten and bling. So, check out these earrings and buy now.', 'diamond-star-earrings', '2022-11-28', '2022-11-29', 7, 0),
(35, 'Pastel Heart Earrings', 20, 'women-earrings', 'images/shop/earrings/pastel-heart-earrings.jpg', 'Heart shaped earrings are cute but having them a pastel colour puts it on another level. These are our small pastel coloured heart earrings with a silver or gold hoop. They are really cute and goes perfect on any day.', 'pastel-heart-earrings', '2022-11-28', '2022-11-29', 1, 0),
(36, 'Diamond & Gold Round Earrings', 30, 'women-earrings', 'images/shop/earrings/diamond-gold-round-earrings.jpg', 'Our new diamond and gold earrings are sure to stand out from the crowd. They are a single diamond with a gold outer rim with a gold stud. They are shiny and glisten in the sun, perfect for the sun and parties.', 'diamond-gold-round-earrings', '2022-11-28', '2022-11-29', 7, 0),
(37, 'Flower Earrings', 25, 'women-earrings', 'images/shop/earrings/flower-earrings.jpg', 'Flowers are adored by everyone, so we made them into earrings. They are white small flowers with a yellow centre attached to a silver stud. These powerful earrings are sure to make a statement with any outfit or event planned.', 'flower-earrings', '2022-11-28', '2022-11-29', 11, 0),
(38, 'Purple Gemstone Ring', 25, 'women-ring', 'images/shop/rings/purple-gemstone-ring.jpg', '3', 'purple-gemstone-ring', '2022-11-28', '2022-11-29', 9, 0),
(39, 'Black Diamond Ring', 25, 'women-ring', 'images/shop/rings/black-diamond-ring.jpg', '3', 'black-diamond-ring', '2022-11-28', '2022-11-29', 4, 0),
(40, 'Gold & Black Heart Ring', 20, 'women-ring', 'images/shop/rings/gold-black-heart-ring.jpg', '3', 'gold-black-heart-ring', '2022-11-28', '2022-11-29', 3, 0),
(41, 'Infinite Hearts Ring', 25, 'women-ring', 'images/shop/rings/infinite-hearts-ring.jpg', '3', 'infinite-hearts-ring', '2022-11-28', '2022-11-29', 9, 0),
(42, 'Silver Love Ring', 25, 'women-ring', 'images/shop/rings/silver-love-ring.jpg', 'Sterling silver love script ring. Sterling silver love script ring. Available in sterling silver (.925) or 9ct yellow gold plate over sterling silver (.925).', 'silver-love-ring', '2022-11-28', '2022-11-29', 15, 0),
(43, 'Joined Hearts Ring', 27, 'women-ring', 'images/shop/rings/joined-hearts-ring.jpg', 'Two hearts entwined together make this stunning ring the ultimate symbol of love. Hand-finished in sterling silver, this Pandora heart ring is set with shimmering cubic zirconia stones and finished with two heart-shaped stones, evoking love and friendship. The perfect romantic gesture for Valentines Day, birthdays and anniversaries, or simply to say: I love you.', 'joined-hearts-ring', '2022-11-28', '2022-11-29', 12, 0),
(44, 'Pink & Gold Bracelet Watch', 40, 'women-watch', 'images/shop/watches/pink-gold-bracelet-watch.jpg', 'This is one of our favourite watches which are very popular and are selling out fast. It is a gold watch face with diamonds around the edge of the watch face. It has a light pink braided strap and comes with the pink and gold bracelets attached to the side. It is perfect for any occasion and is easily adjustable to any wrist size, so get your watch now!', 'pink-gold-bracelet-watch', '2022-11-28', '2022-11-29', 9, 0),
(45, 'Minimalistic Gold & White Watch', 45, 'women-watch', 'images/shop/watches/minimalistic-gold-white-watch.jpg', 'Looks are simple, but it is huge in style and is very timeless. This watch has a gold strap and a white watch face with gold numbers. It is a classic watch which goes with any outfit everyday.', 'minimalistic-gold-white-watch', '2022-11-28', '2022-11-29', 6, 0),
(46, 'Silver & Grey Watch', 38, 'women-watch', 'images/shop/watches/silver-grey-watch.jpg', 'Our silver and grey watch has a grey leather strap and silver watch face and hands. This may look simple, but again, it is very stylish and easy to put on and to take off. This makes it perfect for anybody on any day.', 'silver-grey-watch', '2022-11-28', '2022-11-29', 8, 0),
(47, 'Casual Timeless Watch', 35, 'women-atch', 'images/shop/watches/casual-timeless-watch.jpg', 'Our casual watch has no numbers which is different from all other watches. The time can be read by looking the where the grooves are and where the watch hands are pointing. This watch is white and has a silver strap, making the all-white watch stand out and really look glamorous.', 'casual-timeless-watch', '2022-11-28', '2022-11-29', 2, 0),
(48, 'Rose Gold Stars Watch', 45, 'women-watch', 'images/shop/watches/rose-gold-stars-watch.jpg', 'This watch is slightly different from the rest. It has a rose-gold strap and black watch face. The numbers and watch hands are rose-gold which really pops out from the background. This watch might not be for everyone, but it is for someone and that may be you. So, get yours now!', 'rose-gold-stars-watch', '2022-11-28', '2022-11-29', 12, 0),
(49, 'Wooden Strap Watch', 38, 'women-watch', 'images/shop/watches/wooden-strap-watch.jpg', 'One-of-a-kind watches are something which we want to bring to you. Another unique watch is out wooden strap watch. The watch face is white with bronze watch hands and numbers and is enclosed with a wooden case. It has a wooden strap which is something new and exciting. This watch wraps perfectly around the wrist and can be adjusted to any size. It is not for everyone, however, this watch is new and unique and deserves the attention, so buy one now!', 'wooden-strap-watch', '2022-11-28', '2022-11-29', 9, 0),
(52, 'Mens Brown Laced Bracelet', 11, 'men-bracelet', 'images/mens/bracelets/mens-brown-bracelet2.jpg', 'This is the brown bracelet which has a unique design. It features 8 coils on the bracelet, with 4 being on one side and the other 4 being on the other side. This bracelet is not chunky but it is big, making it a statement piece and really fun to wear.', 'mens-brown-laced-bracelet', '2022-11-30', '2022-12-01', 9, 0),
(53, 'Mens Black Charm Bracelet', 15, 'men-bracelet', 'images/mens/bracelets/mens-black-bracelet.jpg', 'Having a black bracelet with charms on it sounds weird but actually it is very eye-catching and is really comfortable to wear. This bracelet features black beads around the whole of the bracelet with a silver bead in the middle. It has a clasp and it is silver, making it really easy to put on.', 'mens-black-charm-bracelet', '2022-11-30', '2022-12-01', 19, 0),
(54, 'Mens Chunky Gold Bracelet', 19, 'men-bracelet', 'images/mens/bracelets/mens-gold-bracelet.jpg', 'This is gold links bracelet which features an easy-to-use clasp. It is quite chunky, making it easy to put on and take off, as well it being eye-catching and very popular.', 'mens-chunky-gold-bracelet', '2022-11-30', '2022-12-01', 3, 0),
(55, 'Mens White Beaded Bracelet', 15, 'men-bracelet', 'images/mens/bracelets/mens-white-bracelet.jpg', 'This is different from the other products that we sell because it includes a different colour. The beads around the bracelet are white and slightly transparent. This feature makes it different from our products which means that you can choose from a range of products. It has an easy to use hook to close the bracelet.', 'mens-white -beaded-bracelet', '2022-11-30', '2022-12-01', 6, 0),
(56, 'Mens Brown and Gold Bracelet', 10, 'men-bracelet', 'images/mens/bracelets/mens-brown-bracelet.jpg', 'This is a brown bracelet with multiple fabric chains coming out of it with a gold casing which closes the bracelet. This is a slip on bracelet meaning that it is easy to use. This is a trendy bracelet, so get yours now!', 'mens-brown-gold-bracelet', '2022-11-30', '2022-12-01', 14, 0),
(57, 'Mens Silver Bracelet', 15, 'men-bracelet', 'images/mens/bracelets/mens-silver-bracelet.jpg', 'Having a bracelet in silver is a must, so this is what we have for you. A silver links bracelet with a silver clasp at the end. This is quite chunky, which makes it appealing and very popular. Buy yours today!', 'mens-silver-bracelet', '2022-11-30', '2022-12-01', 7, 0),
(58, 'Silver Pendant Necklace', 20, 'men-chain', 'images/mens/chains/men-pendant-necklace.jpg', 'This is our silver pendant necklace which has a small circle attached to the bottom with a spider design inside. This necklace is unique as not many people would go for it, however it is something different and is a statement piece. So, bring this necklace to life by buying one now and styling it in a unique way.', 'silver-pendant-necklace', '2022-11-30', '2022-12-01', 8, 0),
(59, 'Stone Necklace', 19, 'men-chain', 'images/mens/chains/mens-stone-necklace.jpg', 'This is our stone necklace, which has grey balls all around the necklace with a silver clasp. It is very comfortable to wear and it is really stylish, making it a good accessory for any outfit.', 'stone-necklace', '2022-11-30', '2022-12-01', 13, 0),
(60, 'Silver Chain', 19, 'men-chain', 'images/mens/chains/mens-silver-chain.jpg', 'Chains are a classic, so we wanted to bring one to you. This is our classic silver chain which has an clasp at the top, making it easy to put on and comfortable to wear. This chain works well with any outfit on any day, making it the perfect everyday wear chain.', 'silver-chain', '2022-11-30', '2022-12-01', 4, 0),
(61, 'Mens Black and Silver Charm Bracelet', 15, 'men-chain', 'images/mens/chains/mens-black-charm-necklace.jpg', 'This is a black necklace with a silver key-like design on the bottom and silver clasp. This is very unique due to the charm that has been attached, making it different and stand out. This will make for a perfect gift for you or someone else, so why not get one now?', 'mens-black-silver-bracelet', '2022-11-30', '2022-12-01', 12, 0),
(62, 'Mens Chunky Gold Necklace', 25, 'men-chain', 'images/mens/chains/mens-gold-chunky-necklace.jpg', 'This is another necklace which has a pendant on the bottom however the colour is gold. The design features a small oval with intricate detailing in the middle of the pendant. This necklace is one of the best-selling necklaces, so grab yours now.', 'Mens Chunky Gold Necklace', '2022-11-30', '2022-12-01', 3, 0),
(63, 'Mens Gold Necklace', 20, 'men-chain', 'images/mens/chains/mens-gold-necklace.jpeg', 'This one is one of our more simpler necklaces which is just gold. There are no pendants or charms, it is just the chain which is perfect for those people who don’t know what style they prefer.', 'Mens Gold Necklace', '2022-11-30', '2022-12-01', 5, 0),
(64, 'Silver Hooped Earrings', 14, 'men-earrings', 'images/mens/earrings/silver-man-earrings.jpg', 'Hooped earrings might not be that popular, but we want to change that. So, we have gone with a simple but classic design of hooped earrings. The colour is silver which means that it can go with any outfit and pops out more than other colours. Change up your style with these classic silver hoop earrings and stand out from the rest.', 'Silver Hooped Earrings', '2022-11-30', '2022-12-01', 10, 0),
(65, 'Diamond Stud earrings', 27, 'men-earrings', 'images/mens/earrings/diamond-earrings.jpg', 'Having a pair of these earrings is a classic choice for the perfect outfit, so grab your earrings today! These are out classic diamond stud earrings with a silver backing to them, making them the perfect choice.', 'Diamond Stud earrings', '2022-11-30', '2022-12-01', 6, 0),
(66, 'Gold Diamond Earrings', 29, 'men-earrings', 'images/mens/earrings/diamond-man-earring.jpg', 'This is similar to our Mens Diamond Stud Earrings, however, these ones are gold. The stud at the back is gold and the diamond is encased in a gold protective layer. These are also popular because they go well with a lot of things and although it may be simple, it has been made well.', 'Gold Diamond Earrings', '2022-11-30', '2022-12-01', 9, 0),
(67, 'Black Diamond Earrings', 20, 'men-earrings', 'images/mens/earrings/mens-swarowski-earring.jpg', 'These earrings are hugely popular as they are very unique. The diamond itself is black and the backing is silver. These are unique, making it a great choice for special occasions and they are simple but very sparkly and classic. Buy your pair now before they are sold out!', 'Black Diamond Earrings', '2022-11-30', '2022-12-01', 4, 0),
(68, 'Circular Black Earrings', 20, 'men-earrings', 'images/mens/earrings/round-mens-earrings.jpg', 'This one is different from the rest as we have nothing like it. These are our circular black earrings with silver roman numerals around the earrings which resemble a watch. In the middle there is a diamond and the back of the earring is silver as well. These are also very unique and go well with any style of clothing, so buy yours today!', 'Circular Black Earrings', '2022-11-30', '2022-12-01', 9, 0),
(69, 'Silver Ball Studded Earrings', 13, 'men-earrings', 'images/mens/earrings/mens-silver-stud-earrings.jpg', 'Simple doesn’t mean plain, it means that the product has been made well, and these earrings are exactly that. They are silver ball studded earrings which are very comfortable to wear. Some people prefer to wear simple earrings and we wanted to give them that choice with these earrings. They are perfect for everyday wear and they are not too big either, making them the perfect choice for a lot of people.', 'Silver Ball Studded Earrings', '2022-11-30', '2022-12-01', 13, 0),
(70, 'Silver ring', 17, 'men-ring', 'images/mens/rings/mens-silver-ring.jpg', 'Having silver jewellery is a good thing, so why not add to your collection by buying a bold silver ring. This is a great choice for everyday wear as it is suitable for any occasion or outfit.', 'Silver ring', '2022-11-30', '2022-12-01', 7, 0),
(71, 'Gold Gem Ring', 21, 'men-ring', 'images/mens/rings/mens-gold-gem-ring.jpg', 'Go for something different and upgrade your style with a beautiful gold-gemmed ring. This ring has gold gems around the whole ring, and the actual colour of the ring is gold as well. This is something different, so why not try it out?', 'Gold Gem Ring', '2022-11-30', '2022-12-01', 5, 0),
(72, 'Silver Detailed Ring', 19, 'men-ring', 'images/mens/rings/mens-silver-detailed-ring.jpg', 'This might be another silver ring, however, it is different as it has beautiful detailing around the ring. The background of this detail is dark grey as well, making it stand out. So why not go for a silver ring but an upgraded version of it?', 'Silver Detailed Ring', '2022-11-30', '2022-12-01', 10, 0),
(73, 'Grey and Blue Ring', 18, 'men-ring', 'images/mens/rings/mens-grey-ring.jpg', 'It may look like an ordinary ring, but the outside of the ring is grey, with a blue inside. This makes it unique because the colour really pops out, making it look different, which elevates the other accessories.', 'Grey and Blue Ring', '2022-11-30', '2022-12-01', 9, 0),
(74, 'Colourful Ring', 20, 'men-ring', 'images/mens/rings/mens-coloured-ring.jpg', 'Having colour is a good thing making this special ring a good one. This is a gold, silver and bronze ring, combining all of the great colours in one. The colours are in a stripe which goes around the whole of the ring. This is unique and is eye-catching as there are not many out there like this. Therefore, get your unique ring here.', 'Colourful Ring', '2022-11-30', '2022-12-01', 9, 0),
(75, 'Mens Chunky Black Ring', 13, 'men-ring', 'images/mens/rings/mens-black-ring.jpg', 'Sometimes we want to have a ring which is different and is a statement piece. This is what our new black ring is. This is a chunky black ring, which is great for everyday wear and looks great with other types of jewellery.', 'Mens Chunky Black Ring', '2022-11-30', '2022-12-01', 10, 0),
(76, 'Brown Leather Strap Watch', 37, 'men-watch', 'images/mens/watches/brown-leather-watch.jpg', 'Here we have one of our classic brown leather watches. It has a white watch face with silver watch hands and a brown strap. This strap is easily adjustable and is very comfortable to put on. So, grab your classic watch now.', 'Brown Leather Strap Watch', '2022-11-30', '2022-12-01', 9, 0),
(77, 'Gold Detailed Watch', 42, 'men-watch', 'images/mens/watches/golden-watch.jpg', 'This is one of our newer watches that we have available. It is a gold watch with a black watch face and gold watch hands. There are no numbers on the clock only the lines and it has extra detailing on the actual watch face itself. The strap is gold with detailing as well to make it stand out from the crowd and it goes well with any style of clothing.', 'Gold Detailed Watch', '2022-11-30', '2022-12-01', 6, 0),
(78, 'Sleek Black Watch', 35, 'men-watch', 'images/mens/watches/dark-gray-watch.jpg', 'Black watches look clean and really stand out from other watches, so why not get yours now from here? This watch is black with silver watch hands and black strap. Like all of our watches, this one is easily adjustable and very comfortable to wear. It has extra detailing on the watch, making it look very sleek and professional.', 'Sleek Black Watch', '2022-11-30', '2022-12-01', 10, 0),
(79, 'Black Tech Watch', 35, 'men-watch', 'images/mens/watches/waterproof-watch.jpg', 'This black tech-style watch which is one of our new additions to our collection. It is a different style than to the rest of the watches we have, meaning that you have a choice in what style you prefer. It has a black adjustable strap and the watch face is black as well. It has buttons on both of the sides as an extra design feature. This is perfect for those who prefer to have a watch that is suitable for everyday type wear.', 'Black Tech Watch', '2022-11-30', '2022-12-01', 15, 0),
(80, 'Black and Gold Detailed Watch', 37, 'men-watch', 'images/mens/watches/black-gold-watch.jpg', 'This is our black and gold watch with extra detailing. The outer links of the watch are black and the inside ones are gold. The watch face is black and the watch hands and numbers are gold. This makes the watch stand out from the rest because it is classy and perfect for any occasion. The watch is easily adjustable and is comfortable to wear. This one is popular, so get yours now while you can!', 'Black and Gold Detailed Watch', '2022-11-30', '2022-12-01', 13, 0),
(81, 'Silver Classic Watch', 40, 'men-watch', 'images/mens/watches/silver-band-watch.jpg', 'Having a silver watch is a must-have, so get yours from out shop. This is a classic silver watch with black detailing in the middle. It is quite popular as the watch is a classic and really stands out. It has a beautiful watch design and is suitable for everyday wear, so get it now!', 'Silver Classic Watch', '2022-11-30', '2022-12-01', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `join_date` date NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `admin`, `email`, `password`, `join_date`, `fname`, `lname`) VALUES
(6, 'hamzah', 1, 'hcmzah@gmail.com', '$2y$10$P0.Dsev4rwYjDIZsU8KcTe1UpH5FOj042GyPdDeFZ1gz6SKwQHXYy', '2022-11-30', 'Hamzah', 'Hussain');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_line1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `address_line2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`id`, `user_id`, `address_line1`, `address_line2`, `city`, `postcode`, `mobile`) VALUES
(1, 6, '65 sdadwd road3', 'dasdwqdqd2', 'birmingham2', 'b19 3sj2', '074015548322');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
