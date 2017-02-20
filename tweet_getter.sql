-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2017 at 11:04 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tweet_getter`
--

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` varchar(150) NOT NULL,
  `value` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `value`) VALUES
('MAX_TWEET_RETRIEVE', '20'),
('PERIOD', '10000'),
('TWITTER_USERNAME', 'foxnews');

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE IF NOT EXISTS `tweets` (
  `id` varchar(25) NOT NULL,
  `text` varchar(200) NOT NULL,
  `retweet_count` int(11) NOT NULL,
  `user_name` varchar(150) NOT NULL,
  `profile_image_url` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `text`, `retweet_count`, `user_name`, `profile_image_url`, `created_at`) VALUES
('833366374529409024', '.@KatrinaPierson: "As president, [@realDonaldTrump''s] going to continue to be a winner." https://t.co/S0o3wF4Vud', 216, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:23:21'),
('833364617028055040', 'Last night on @WattersWorld, @PeteHegseth compared President @realDonaldTrump to GOP leaders of the past. https://t.co/JUQPG4cBfM', 268, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:16:22'),
('833364236529184770', 'Fox News Poll: 68% believe that compared to Obama, the media has been tougher on @POTUS. https://t.co/pWXvsoalbo', 275, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:14:51'),
('833362221849726976', 'Being Pulled on Stage by Pres. @realDonaldTrump Was ''Dream Come True'' for FL Man https://t.co/Z6as8BEEcW https://t.co/rfKodnBX94', 366, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:06:51'),
('833360055596621824', 'Priebus says US intel officials call campaign-Russia story ''garbage,'' tries to end controversy | https://t.co/ESeipuXa8h', 189, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 16:58:14'),
('833359666205884418', 'Fox News Poll: More trust President @realDonaldTrump to tell the truth than reporters. https://t.co/8h2o2vMce3', 303, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 16:56:42'),
('833356918710099968', '.@RandPaul: "ObamaCare must be repealed. We can''t do partial repeal. We have to do complete repeal." https://t.co/M47BCveKZg', 301, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 16:45:47'),
('833355019349008390', 'As his rally in Florida, @POTUS reminded his supporters that he and the GOP have always been underestimated.… https://t.co/M9rdLtMwZY', 267, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 16:38:14'),
('833350305114882051', 'Melania Trump attacked for reciting ''The Lord''s Prayer'' at campaign rally  https://t.co/6tXpOcPkP9 https://t.co/gitzWR0hnR', 425, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 16:19:30'),
('833349100028452865', '#MiloYiannopoulos to be keynote speaker at CPAC. https://t.co/mfMp5zps9K', 280, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 16:14:42'),
('833344759330635780', '140 Somali refugees in U.S. since suspension. https://t.co/yS2qkkakSq', 236, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 15:57:28'),
('833344072551129089', 'RT @SundayFutures: .@Kasparov63 on #Putin''s next move: "I know he will strike and it is only a question of when." @MariaBartiromo @FoxNews', 23, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 15:54:44'),
('833342896132734977', 'RT @SundayFutures: Former Sen George Mitchell on #Russia spy ship: "It''s a way for Putin to distract his own people... Their economy is in…', 63, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 15:50:03'),
('833342336734203905', 'National Security Advisor candidates. https://t.co/BL1IsjycyV', 146, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 15:47:50'),
('833339821292716033', '.@RandPaul: "ObamaCare must be repealed. We can''t do partial repeal. We have to do complete repeal." https://t.co/c2R18Jyfwz', 322, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 15:37:50'),
('833338879214309378', '.@RandPaul: "The House leadership, I think, is pushing ''ObamaCare Lite'' and I think what we need is complete repeal… https://t.co/XBldDJjHVr', 339, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 15:34:06'),
('833337441545228288', 'RT @SundayFutures: Fmr FBI Dir Jim Kallstrom on govt leaks: "I think the administration should name a special prosecutor (to investigate)."…', 95, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 15:28:23'),
('833336592311873536', 'National Zoo prepares to say goodbye to giant panda Bao Bao https://t.co/QQAG0znJcO https://t.co/IwOlBqadLm', 81, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 15:25:00'),
('833334693923786752', 'Lankford: Same 7 countries the Obama Admin &amp; Congress identified as state sponsors of terrorism or possessing no fu… https://t.co/A7Je7p6sTR', 380, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 15:17:28'),
('833334040392564738', 'RT @SundayFutures: .@RepPeteKing on gov''t leaks: "they may be holdovers in the NSC... what''s been leaked... seriously violates the law"@Mar…', 117, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 15:14:52'),
('833367965013786625', 'Fox News Poll: Better for the country if journalists... https://t.co/xxOZWp2Xiv', 60, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:29:40'),
('833368462806437889', 'RT @EricShawnTV: I anchor at 12 noon EST @Foxnews, Who will get the nod as @realDonaldTrump''s new Natl. Sec. Advisor? @AmbJohnBolton has hi…', 10, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:31:39'),
('833368421563764740', 'On @ffweekend, @larryelder discussed how illegal immigration disadvantages those living in inner cities.… https://t.co/uwwTubNz7a', 155, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:31:29'),
('833368930483712000', 'Don''t Miss a ''#First100 Days'' Town Hall on Immigration - This Tuesday February 1st at 7p ET on Fox News Channel!… https://t.co/ykpCggHTef', 14, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:33:30'),
('833369269064826881', 'Yesterday morning, President @realDonaldTrump launched another broadside against the mainstream media. https://t.co/ojqGzmJ2vJ', 153, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:34:51'),
('833369187321999360', '.@VP: "The promise to share the burden of our defense has gone unfulfilled for too many for too long." https://t.co/ZqJts2UpTb', 128, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:34:32'),
('833369936084885504', 'Don''t Miss a ''#First100 Days'' Town Hall on Immigration - This Tuesday February 21st at 7p ET on Fox News Channel!… https://t.co/ghdlWxry1f', 56, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:37:30'),
('833370842822213632', 'Fox News Poll: Feelings about what @POTUS says. https://t.co/kpxzbdG1nS', 117, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:41:06'),
('833370774866186240', 'Fox News Poll: Important for Trump in first 100 days - % extremely/very. https://t.co/HVneOdH2D0', 83, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:40:50'),
('833370697644834816', 'Fox News Poll: @POTUS''s job approval. https://t.co/zoOUjMmpDj', 105, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:40:32'),
('833370974695272448', 'Coal Miner: "People understand that [@POTUS] is for the working person." https://t.co/wWIPjcuHA4', 283, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:41:38'),
('833370889894916096', 'Presidential rallies after inauguration. https://t.co/5qZYJ6FiSY', 227, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:41:18'),
('833371411163054082', 'Fox News Poll: Majority believe @POTUS is a strong leader. https://t.co/pv5ABtQ24l', 349, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:43:22'),
('833371649206603776', '.@SheriffClarke on Violent Philly Protests: ''This Stuff Is Disastrous'' https://t.co/7q3QZtFtbx https://t.co/DVjOFPammE', 146, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:44:19'),
('833374316846841856', 'On @ffweekend, coal miner Kevin Hughes slammed those he says claim to be for the environment but don''t practice wha… https://t.co/APyE4D1uem', 254, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:54:55'),
('833374391811452928', '.@RandPaul: "I would actually say we''ve done more in the last four weeks than we''ve done in the last six years." https://t.co/g2VtwRNZGH', 665, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:55:13'),
('833374571038375940', '.@Ford plans to open 2 new plants in Mexico. https://t.co/Ywwrun51f4', 114, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:55:55'),
('833374518383112192', 'Yale Univeristy Group Seeks to Allow Women into All-Male Fraternities https://t.co/77I3BP3fWu https://t.co/Rl1rQhmYSb', 64, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:55:43'),
('833374682787221504', 'On "Cashin'' In," Lisa Boothe slammed the media''s treatment of @POTUS. https://t.co/L9vYMvQn8t', 264, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:56:22'),
('833375311458770944', '.@SheriffClarke: "Steve Bannon is a good man. Steve Bannon is an honest man. He''s a fair individual."… https://t.co/coo1Pm8szy', 215, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:58:52'),
('833375253942378497', 'Trump FL Campaign Rally Coordinator: ''This Is His 1st Re-Election Rally'' https://t.co/YjIPvh4WtW https://t.co/d2pnsXvINx', 86, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:58:38'),
('833375482225770497', 'RPT: Trump''s Border Wall Could Save Americans Nearly $64 Billion Over 10 Years\nhttps://t.co/z460CUPCLz', 763, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 17:59:32'),
('833375626933501953', 'Oroville Dam repairs underway, water releases likely to decrease. https://t.co/nc8sZipxoV', 66, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 18:00:07'),
('833375883880648704', 'At yesterday''s #TrumpRally, @FLOTUS opened her remarks with the Lord''s Prayer. https://t.co/x0lbp8uK1Q', 476, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 18:01:08'),
('833376864341094400', 'Yesterday, @POTUS explained why @AbeShinzo thanked him when they met. #TrumpRally https://t.co/STfEL8TcyD', 127, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 18:05:02'),
('833378583007498240', '.@POTUS brought a supporter up on stage with him, who speaks to the crowd: "Mr. President, thank you sir."… https://t.co/TnaROwSuKJ', 290, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 18:11:52'),
('833381073622966272', '.@POTUS: "When the media lies to people, I will never, ever let them get away with it." https://t.co/Qzkq1TEWn5 https://t.co/svr2bzPJzP', 417, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 18:21:46'),
('833383032698523648', '.@POTUS: "I''ve directed @TheJusticeDept to take a firm, firm stance to protect our cops, sheriffs, and police."… https://t.co/ismLtTUa6V', 276, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 18:29:33'),
('833383605586030592', 'At his rally in Melbourne, Florida, @POTUS slammed the media for its treatment of him and of its consumers.… https://t.co/GhWBJS7H3c', 310, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 18:31:49'),
('833385328773853184', 'At his rally in Melbourne, Florida, President Donald J. Trump offered uplifting words about the United States.… https://t.co/DMiRgKVWTV', 307, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 18:38:40'),
('833385850465579008', 'In her remarks introducing @POTUS, @FLOTUS made it clear that personal attacks won''t change her.… https://t.co/1ZE99gHaFL', 351, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 18:40:44'),
('833387170077483008', 'National Security Advisor candidates. https://t.co/WY4iyX1MwC', 86, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 18:45:59'),
('833387328227930113', '#MiloYiannopoulos to be keynote speaker at CPAC. https://t.co/Y87fj49rkU', 205, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 18:46:37'),
('833389416441851905', '140 Somali refugees in U.S. since suspension. https://t.co/xDpqZDRswN', 150, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 18:54:55'),
('833392265083109377', 'As his rally in Florida, @POTUS reminded his supporters that he and the GOP have always been underestimated.… https://t.co/aB8K15RVaD', 197, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 19:06:14'),
('833392405927714816', '.@RandPaul: "ObamaCare must be repealed. We can''t do partial repeal. We have to do complete repeal." https://t.co/abhW9K5Koi', 201, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 19:06:47'),
('833392325569155074', 'RT @EricShawnTV: I anchor at 4 pm EST @FoxNews after @FoxNewsSunday &amp; @WSJ Report. Who will be the new Natl. Security Advisor? Watch: https…', 11, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 19:06:28'),
('833392463905566720', 'Being Pulled on Stage by Pres. @realDonaldTrump Was ''Dream Come True'' for FL Man https://t.co/Z6as8BEEcW https://t.co/iwSOrgoxdM', 340, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 19:07:01'),
('833393198617784320', 'Last night on @WattersWorld, @PeteHegseth compared President @realDonaldTrump to GOP leaders of the past. https://t.co/nkcFiNblvU', 238, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 19:09:56'),
('833393870675202049', '.@KatrinaPierson: "As president, [@realDonaldTrump''s] going to continue to be a winner." https://t.co/cqETKdHwaq', 278, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 19:12:37'),
('833394369096986625', 'On @ffweekend, @larryelder discussed how illegal immigration disadvantages those living in inner cities.… https://t.co/RxNPluXfz3', 230, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 19:14:35'),
('833395581288591361', 'If Oroville Dam failed, residents likely would not be advised in time  https://t.co/UB4cHtfLvC https://t.co/Mi10GTugh9', 141, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 19:19:24'),
('833396432363151360', '.@FoxNewsSunday: Chris Wallace''s full interview with WH Chief of Staff @Reince Priebus - Part 1. https://t.co/uBS7nWcTqF', 248, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 19:22:47'),
('833397811127349249', '.@FoxNewsSunday: Chris Wallace''s full interview with WH Chief of Staff @Reince Priebus - Part 2. https://t.co/jio4RV0XEq', 220, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 19:28:16'),
('833398956449107968', '.@RushLimbaugh: "It is preposterous to believe that the Russians had any effect on the outcome of voting in this co… https://t.co/cEkabAHwl0', 784, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 19:32:49'),
('833401839114559488', '.@RushLimbaugh: "Donald Trump has nobody helping him other than the people who voted for him. Obama had the media.… https://t.co/ccA9W3HiXv', 1806, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 19:44:16'),
('833403251571699712', 'As his rally in Florida yesterday, @POTUS invoked unity near the close of his remarks. https://t.co/Qzkq1TWxLF https://t.co/iGwvn5wJQf', 677, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 19:49:53'),
('833407665124548609', '.@SheriffClarke on Violent Philly Protests: ''This Stuff Is Disastrous'' https://t.co/7q3QZtFtbx https://t.co/X0WPzdQU58', 365, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 20:07:25'),
('833407953910759424', 'During President @POTUS''s campaign rally, he surprised everyone by pulling one man, Gene Huber, up on stage.… https://t.co/mm8VlfPfl8', 17, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 20:08:34'),
('833408407822540800', 'During @POTUS''s campaign rally, he surprised everyone by pulling one man, Gene Huber, up on stage.… https://t.co/MAHJvW4vbH', 221, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 20:10:23'),
('833411271248719872', 'At his rally in Florida yesterday, @POTUS pledged to always support law enforcement. https://t.co/Qzkq1TWxLF https://t.co/kMtWSqDX6Q', 414, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 20:21:45'),
('833413414018023426', '.@judgealexferrer: Miami-Dade Dropping Sanctuary Status Is ''Harbinger'' of What''s to Come\nhttps://t.co/5ybIrWSYp4', 206, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 20:30:16'),
('833415154889060353', 'RPT: President @realDonaldTrump ''s Border Wall Could Save Americans Nearly $64 Billion Over 10 Years\nhttps://t.co/z460CUPCLz', 828, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 20:37:11'),
('833417756217315328', 'Yale University Group Seeks to Allow Women into All-Male Fraternities https://t.co/77I3BP3fWu https://t.co/IwXjBA8eFB', 113, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 20:47:31'),
('833420740267540480', 'On @ffweekend, coal miner Kevin Hughes slammed those he says claim to be for the environment but don''t practice wha… https://t.co/iDZZRyzzfR', 416, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 20:59:23'),
('833422114506031105', 'Iraqi Forces launch western Mosul offensive. https://t.co/7dafKnV4z8 https://t.co/3qUywDXenN', 108, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 21:04:50'),
('833422923868336128', 'Secretary Mattis: U.S. Soldiers helping Iraq retake western Mosul from ISIS. https://t.co/7dafKnV4z8 https://t.co/5ahDWUd8JQ', 300, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 21:08:03'),
('833423691765673984', 'Trump Administration considers designating Iran''s Revolutionary Guard as terrorists. https://t.co/WpAJVXkFlk https://t.co/uf4kEpGupe', 213, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 21:11:07'),
('833424934500188161', 'As his rally in Florida, @POTUS reminded his supporters that he and the GOP have always been underestimated.… https://t.co/G8CaNbvxsp', 160, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 21:16:03'),
('833425333554708481', 'Former @POTUS pal @UncleRUSH leads ''I Am A Muslim Too'' rally against president https://t.co/wNja97dBxD', 72, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 21:17:38'),
('833426228229062656', 'Father, son killed in head-on collision with each other https://t.co/Eoy23iPg2D https://t.co/fUCCnplMIT', 129, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 21:21:11'),
('833428272536891392', '.@FoxNewsSunday: Chris Wallace''s full interview with WH Chief of Staff @Reince Priebus - Part 1.… https://t.co/IFY3ycmsnb', 90, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 21:29:19'),
('833430023726055424', 'Fox Poll: 47% of voters say Trump Administration is working on things that will help their family. https://t.co/2vAEh9fQwX', 306, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 21:36:16'),
('833430114088083459', '.@FoxNewsSunday: Chris Wallace''s full interview with WH Chief of Staff @Reince Priebus - Part 2.… https://t.co/l7k4jkCMdK', 110, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 21:36:38'),
('833430567337078784', 'Limbaugh: "It is preposterous to believe that the Russians had any effect on the outcome of voting in this country.… https://t.co/kXgbj0SxKj', 582, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 21:38:26'),
('833430553290534912', 'Fox Poll: 50% of registered voters feel confident in @POTUS''s judgment in a crisis. https://t.co/6yjX9OWg7L', 355, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 21:38:22'),
('833431828006461440', 'Limbaugh: "Donald Trump has nobody helping him other than the people who voted for him." https://t.co/9gx4MorSSK https://t.co/2MQsUHOh2H', 1196, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 21:43:26'),
('833433103255339011', '''Golden Girls''-Themed Cafe Opens in New York City\nhttps://t.co/DShlRZF2Z2', 131, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 21:48:30'),
('833433674838310913', 'Former Trump pal Russell Simmons leads ''I Am A Muslim Too'' rally against president https://t.co/zNmEJEgs48 https://t.co/wPoPZihvE6', 182, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 21:50:47'),
('833434916671070210', 'World''s first private animal terminal opens at JFK. https://t.co/FgF6ISqM0F', 145, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 21:55:43'),
('833437243243130880', 'At his rally in Florida yesterday, @POTUS pledged to always support law enforcement. https://t.co/Qzkq1TWxLF https://t.co/t03ZIAob2Z', 420, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 22:04:57'),
('833440373557035013', 'During @POTUS''s campaign rally, he surprised everyone by pulling one man, Gene Huber, up on stage.… https://t.co/rJ70n9Ort5', 289, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 22:17:24'),
('833441999466405892', 'Report: President Trump''s Border Wall Could Save Americans Nearly $64 Billion Over 10 Years\nhttps://t.co/z460CUPCLz', 3705, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 22:23:51'),
('833443631944040449', 'RT @EricShawnTV: I anchor at 6 pm EST @FoxNews. What''s next for @POTUS @realDonaldTrump. @Woodruffbets from @DailyBeast looks ahead: https:…', 15, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 22:30:21'),
('833444508394196993', '.@SheriffClarke on Violent Philly Protests: ''This Stuff Is Disastrous'' https://t.co/7q3QZtFtbx https://t.co/CuO8waWbfY', 520, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 22:33:50'),
('833445318276575232', 'Man in photograph described as suspect in deaths of Indiana teens\nhttps://t.co/rjUofNH716', 178, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 22:37:03'),
('833445423457112064', '''Star Wars: The Last Jedi'' title confirmed to be plural and fans are freaking out\nhttps://t.co/uaNPqkZeTw', 298, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 22:37:28'),
('833445765213204481', 'As his rally in Florida yesterday, @POTUS invoked unity near the close of his remarks. https://t.co/Qzkq1TWxLF https://t.co/RA5NwKv5kM', 647, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 22:38:49'),
('833446293829607424', '.@RandPaul: "I would actually say we''ve done more in the last four weeks than we''ve done in the last six years." https://t.co/ureVyjv9Md', 1036, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 22:40:55'),
('833446412058710017', '.@RandPaul: "ObamaCare must be repealed. We can''t do partial repeal. We have to do complete repeal." https://t.co/3i9ebX4R1k', 542, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 22:41:23'),
('833446737935228928', 'Fox News Poll: More trust President @realDonaldTrump to tell the truth than reporters. https://t.co/6BocQb7uWC', 852, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 22:42:41'),
('833453368022556673', 'Trump clarifies ''Sweden'' remark at rally, says he was referring to Fox News report https://t.co/Ixs97paP9J', 374, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 23:09:02'),
('833462252325974016', 'Netanyahu rebuffed secret peace deal offer, ex-US officials claim https://t.co/u1dGTbkuEQ', 131, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 23:44:20'),
('833465987878023173', 'WATCH: What the US could learn from Sweden''s refugee crisis https://t.co/3HwkGkNsHS via @TuckerCarlson', 790, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-19 23:59:11'),
('833473009197383682', 'RT @EricShawnTV: Calls for @POTUS @realDonaldTrump to ramp up pressure on Iran after terrorist training camps report. Watch @Foxnews: https…', 165, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-20 00:27:05'),
('833479797934264324', 'Flood fears renewed as another storm aims for California https://t.co/cbivnbrbXv #FoxNewsUS', 153, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-20 00:54:03'),
('833512119010205698', 'Limbaugh blasts media attacks on Trump as pointless, ''kind of comical'' https://t.co/CpY5gOhT8n via @FoxNewsSunday', 617, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-20 03:02:29'),
('833505261730009089', 'Ex-Olympian among US gymnasts claiming sexual abuse by team doctor https://t.co/0AX7odjP7i', 155, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-20 02:35:14'),
('833496977287553025', 'Cheap eats cafe in France wins, then loses Michelin star https://t.co/BQqeGZA79k @fxnleisure', 60, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-20 02:02:19'),
('833489223378411521', 'Tucson mayor reports being carjacked at gunpoint https://t.co/8uyD4F6jVZ #FoxNewsUS', 308, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-20 01:31:30'),
('833519100085338112', 'Trump to meet with @OfficialCBC after all https://t.co/1ZhhGZbMoT via @foxnewspolitics', 268, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-20 03:30:14'),
('833525336092532736', 'Rand Paul: US is ''lucky John McCain''s not in charge'' https://t.co/PVJO86W8Pp', 1057, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-20 03:55:00'),
('833532887282638848', 'Revised travel ban reportedly targets same seven countries, exempts green card holders https://t.co/qKKO39PUAh', 389, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-20 04:25:01'),
('833539931100180480', 'DHS Kelly proposes hiring more immigration officers, fast-tracking deportations https://t.co/fD5naZsJMq', 446, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-20 04:53:00'),
('833545468705665028', 'Kraft withdraws its offer to merge with Unilever https://t.co/2Ov4e1dOHg via @FoxBusiness', 66, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-20 05:15:00'),
('833547832036450304', 'US Navy sends warships on freedom of navigation operation through South China Sea https://t.co/AFuYJnUEJ5 https://t.co/ZD0fnghaQz', 321, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-20 05:24:24'),
('833562269392834560', 'Dozens of workers lose their jobs for participating in Day Without Immigrants protest https://t.co/XDfyf54SU6 https://t.co/kN3V2k0lDN', 301, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-20 06:21:46'),
('833562269392834560', 'Dozens of workers lose their jobs for participating in Day Without Immigrants protest https://t.co/XDfyf54SU6 https://t.co/kN3V2k0lDN', 301, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-20 06:21:46'),
('833555381750083584', 'Scientists, environmental activists protest in Boston against threat to science https://t.co/Rv6Dnchw6B https://t.co/uRSU9rCShJ', 60, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-20 05:54:24'),
('833569718392938497', 'Canadian recycling plant workers find more than $100G stashed in TV set https://t.co/w99P0FfjJM', 47, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-20 06:51:22'),
('123123123123123123', 'testingupdate', 125, 'testerupdate', 'imageupdate.png', '0000-00-00 00:00:00'),
('833579241987928064', 'Ex-Olympian among US gymnasts claiming sex abuse by team doctor  https://t.co/0AX7od2dII', 32, 'Fox News', 'http://pbs.twimg.com/profile_images/794654746342662144/hHnFe4Sx_normal.jpg', '2017-02-20 07:29:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
