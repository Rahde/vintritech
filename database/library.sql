-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2020 at 04:10 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Norman, Donald A.');

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `audience`, `book_designer`, `content`, `contributions`, `copyright_date`, `cover_artist`, `physical_format`, `date_published`, `dew_decimal`, `physical_dimensions`, `edition`, `edition_name`, `excerpt`, `first_publish_year`, `isbn`, `isbn13`, `language`, `latest_revision`, `ocaid`, `overview`, `pages`, `pagination`, `printer`, `publish_country`, `publish_places`, `publisher`, `reading_level`, `region`, `subtitle`, `tag_line`, `title`, `title_long`, `website`, `original_price`, `purchase_date`, `current_branch`, `current_status`, `due_date`, `hold_count`, `number_of_copies`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'General', 'Nicole Caputo', 'Nonfiction', NULL, 2013, 'Jaques Carelman - \"Coffe Pot for Masochists\"', 'Paperback', '2013-11-05 07:00:00', NULL, '8.2 x 6.5 x 1 inches', 5, 'Revised and Expanded Edition', 'The Design of Everyday Things is a powerful primer on how -- and why -- some products satisfy customers while others only frustrate them.', 2013, 81023404, '978-0465050659', 'english', 5, 'OL25726927M', 'The Design of Everyday Things shows that good, usable design is possible. The rules are simple, make things visible, exploit natural relationships that couple function and control, and make intelligent use of constraints. The goal, guide the user effortle', 368, 'cm', 'Basic Books', 'United States of America', 'New York, New York', 'Basic Books, A Member of the Perseus Books Group', 14, 'North America', NULL, 'The ultimate guide to human-centered design', 'The design of everyday things', 'Psychology of everyday things The design of everyday things Revised and expanded edition', 'www.jnd.org', 17.99, '2015-03-06 07:00:00', 'Bodleian Library', 'on loan', '2021-03-02 07:00:00', 2, 1, 'https://productdork.com/uploads/default/original/1X/ddbda1150301e89cdf0119d84f2a7fb8930beffb.png', '2020-04-20 06:00:00', '2020-04-20 06:00:00');

--
-- Dumping data for table `book_authors`
--

INSERT INTO `book_authors` (`book_id`, `author_id`) VALUES
(1, 1);

--
-- Dumping data for table `book_collections`
--

INSERT INTO `book_collections` (`book_id`, `collection_id`) VALUES
(1, 1),
(1, 3),
(1, 2);

--
-- Dumping data for table `book_genres`
--

INSERT INTO `book_genres` (`book_id`, `genre_id`) VALUES
(1, 1),
(1, 2),
(1, 4),
(1, 3);

--
-- Dumping data for table `book_subjects`
--

INSERT INTO `book_subjects` (`book_id`, `subject_id`) VALUES
(1, 3),
(1, 1),
(1, 2),
(1, 4);

--
-- Dumping data for table `book_tags`
--

INSERT INTO `book_tags` (`book_id`, `tag_id`) VALUES
(1, 2),
(1, 3),
(1, 1),
(1, 5),
(1, 4);

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `collection`) VALUES
(1, 'Ergonomics'),
(2, 'Manufacturing'),
(3, 'Industrial Management');

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `genre`) VALUES
(1, 'art'),
(2, 'business'),
(3, 'psychology'),
(4, 'nonfiction');

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `book_id`, `status`, `check_out_by`, `check_out_date`, `check_out_location`, `check_out_condition`, `check_in_date`, `check_in_location`, `check_in_condition`, `check_in_librarian_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '031249576-7', '2020-01-01 07:00:00', 'Bodleian Library', 10, '2021-02-11 07:00:00', 'Bodleian Library', 10, 'brianjk_03591', NULL, NULL),
(2, 1, 1, '000001468-9', '2018-01-04 07:00:00', 'Troy Public Library', 10, '2018-06-03 06:00:00', 'Troy Public Library', 10, 'juliusc_00074', NULL, NULL),
(3, 1, 1, '001165596-1', '2017-02-03 07:00:00', 'Bibliotheca Alexandrina', 10, '2017-08-02 06:00:00', 'Bibliotheca Alexandrina', 10, 'alextg_00599', NULL, NULL);

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_04_20_151624_create_books_table', 1),
(4, '2020_04_20_151630_create_collections_table', 1),
(5, '2020_04_20_151640_create_authors_table', 1),
(6, '2020_04_20_151659_create_genres_table', 1),
(7, '2020_04_20_151719_create_reviews_table', 1),
(8, '2020_04_20_151752_create_subjects_table', 1),
(9, '2020_04_20_151809_create_tags_table', 1),
(10, '2020_04_20_151849_create_weights_table', 1),
(11, '2020_04_20_151907_create_loans_table', 1),
(12, '2020_04_20_151954_book_authors_table', 1),
(13, '2020_04_20_152010_book_collections_table', 1),
(14, '2020_04_20_152022_book_genres_table', 1),
(15, '2020_04_20_152036_book_subjects_table', 1),
(16, '2020_04_20_152100_book_tags_table', 1),
(17, '2020_04_21_200908_alter_table_books', 2);

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `book_id`, `quote`, `by`, `created_at`, `updated_at`) VALUES
(5, 1, 'Even classics can be updated and improved ... Highly recommended.', 'Choice', '2020-04-20 06:00:00', '2020-04-20 06:00:00'),
(6, 1, 'This book changed the field of design. As the pace of technological change accelerates, the principles in this book are increasingly important. The new examples and ideas about design and product development make it essential reading.', 'Patrick Whitney, Dean, Institute of Design, and Steelcase - Robert C. Pew Professor of Design, Illinois Institute of Technology', '2020-04-20 06:00:00', '2020-04-20 06:00:00'),
(7, 1, 'Twenty-five years ago The Design of Everyday Things was instrumental in orienting my approach to design. With this latest revised and expanded edition, Don Norman has given me a host of new ideas to explore as well as reminding me of the fundamental principles of great and meaningful design. Part operating manual for designers and part manifesto on the power of designing for people, The Design of ', 'Tim Brown, CEO, IDEO, and author of Change by Design', '2020-04-20 06:00:00', '2020-04-20 06:00:00'),
(8, 1, 'Design may be our top competitive edge. This book is a joy--fun and of the utmost importance.', 'Tom Peters, author of In Search of Excellence', '2020-04-20 06:00:00', '2020-04-20 06:00:00');

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject`) VALUES
(1, 'design'),
(2, 'nonfiction'),
(3, 'business'),
(4, 'psychology');

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`) VALUES
(1, 'software'),
(2, 'apple'),
(3, 'design'),
(4, 'UI/UX'),
(5, 'usability');

--
-- Dumping data for table `weights`
--

INSERT INTO `weights` (`id`, `book_id`, `measurment`, `unit`) VALUES
(1, 1, 12.80, 'ounces'),
(2, 1, 322.00, 'g');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
