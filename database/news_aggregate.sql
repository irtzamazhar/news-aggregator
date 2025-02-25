-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 25, 2025 at 09:56 PM
-- Server version: 8.0.32
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_aggregate`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `url`, `source`, `author`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 'White House claims ‘more than 1 million’ federal workers responded to Doge’s ultimatum email – live', NULL, 'https://www.theguardian.com/us-news/live/2025/feb/25/donald-trump-elon-musk-email-latest-us-politics-news-live', 'The Guardian', NULL, '2025-02-25 16:49:46', '2025-02-25 15:33:29', '2025-02-25 16:55:32'),
(2, 'Australia news live: Hastie warns ADF is ‘going to get weaker’ as China tests US allies with ‘gunboat diplomacy’', NULL, 'https://www.theguardian.com/australia-news/live/2025/feb/26/australia-news-live-chalmers-us-tariffs-anthony-albanese-peter-dutton-senate-estimates-cost-of-living-ntwnfb', 'The Guardian', NULL, '2025-02-25 16:52:58', '2025-02-25 15:33:29', '2025-02-25 16:55:32'),
(3, 'Chelsea v Southampton, Crystal Palace v Aston Villa, and more: football – live', NULL, 'https://www.theguardian.com/football/live/2025/feb/25/chelsea-v-southampton-crystal-palace-v-aston-villa-and-more-football-live', 'The Guardian', NULL, '2025-02-25 16:55:02', '2025-02-25 15:33:29', '2025-02-25 16:55:32'),
(4, 'Starmer’s message after slashing aid is simple: of course you should be alarmed', NULL, 'https://www.theguardian.com/politics/2025/feb/25/starmers-message-after-slashing-aid-is-simple-of-course-you-should-be-alarmed', 'The Guardian', NULL, '2025-02-25 15:17:20', '2025-02-25 15:33:29', '2025-02-25 16:08:19'),
(5, 'Morning Mail: Kean hits back at ‘bullying’ of climate body, Musk backlash grows, Eurovision pick revealed', NULL, 'https://www.theguardian.com/australia-news/2025/feb/26/morning-mail-kean-hits-back-at-bullying-of-climate-body-musk-backlash-grows-eurovision-pick-revealed', 'The Guardian', NULL, '2025-02-25 14:53:31', '2025-02-25 15:33:29', '2025-02-25 16:08:19'),
(6, 'Taliban says ‘misunderstanding’ led to arrest of British couple in Afghanistan', NULL, 'https://www.theguardian.com/world/2025/feb/25/taliban-says-misunderstanding-led-to-arrest-of-british-couple-in-afghanistan', 'The Guardian', NULL, '2025-02-25 14:53:19', '2025-02-25 15:33:29', '2025-02-25 16:08:19'),
(7, 'Tim Westwood inquiry report: what new allegations against him have emerged?', NULL, 'https://www.theguardian.com/media/2025/feb/25/tim-westwood-inquiry-report-what-new-allegations-against-him-have-emerged', 'The Guardian', NULL, '2025-02-25 15:35:27', '2025-02-25 15:33:29', '2025-02-25 16:55:32'),
(8, 'House Republicans to vote on spending deal that could slash Medicaid funding', NULL, 'https://www.theguardian.com/us-news/2025/feb/25/republicans-spending-deal-medicaid-cuts', 'The Guardian', NULL, '2025-02-25 14:36:51', '2025-02-25 15:33:29', '2025-02-25 16:08:19'),
(9, 'Starmer can only hope slashing aid to boost defence wins Trump’s favour', NULL, 'https://www.theguardian.com/politics/2025/feb/25/starmer-can-only-hope-aid-grab-raid-to-lift-defence-budget-wins-trumps-favour', 'The Guardian', NULL, '2025-02-25 14:27:22', '2025-02-25 15:33:29', '2025-02-25 15:33:29'),
(10, 'Farage’s trip to meet Musk was part-funded by former fraudster George Cottrell', NULL, 'https://www.theguardian.com/politics/2025/feb/25/farages-trip-to-meet-musk-was-part-funded-by-former-fraudster-george-cottrell', 'The Guardian', NULL, '2025-02-25 14:25:52', '2025-02-25 15:33:29', '2025-02-25 15:33:29'),
(11, 'Apple Vows to Build A.I. Servers in Houston and Spend $500 Billion in U.S.', 'The company pledged the multibillion-dollar investment over the next four years and said it would create 20,000 jobs. The Texas facility is set to open in 2026.', 'https://www.nytimes.com/2025/02/24/business/apple-tariffs-jobs-investment.html', 'New York Times', 'By Meaghan Tobin, Tripp Mickle and Jason Karaian', '2025-02-24 02:25:17', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(12, 'Earth’s 1st Asteroid Mining Prospector Heads to the Launchpad', 'The dream of mining metals in deep space crashed and burned in the 2010s. AstroForge’s Odin mission to survey a potentially metallic asteroid is packed and ready to lift off.', 'https://www.nytimes.com/2025/02/23/science/astroforge-launch-asteroid-mining.html', 'New York Times', 'By Jonathan O’Callaghan', '2025-02-23 00:00:36', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(13, 'Big Day for Crypto Goes South in a Hurry After a Giant Hack', 'Hours after Coinbase said the S.E.C. was dropping a lawsuit against it, another major cryptocurrency exchange reported a potentially record-setting theft.', 'https://www.nytimes.com/2025/02/22/technology/crypto-exchange-bybit-hack.html', 'New York Times', 'By David Yaffe-Bellany', '2025-02-22 00:02:07', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(14, 'How ‘Based’ Is Grok 3? + Robinhood C.E.O. Vlad Tenev on Markets for Everything + Vibecoding 101', '“Elon Musk is willing to spend a phenomenal amount of money and basically do everything he can to stay with the head of the pack on A.I. progress.”', 'https://www.nytimes.com/2025/02/21/podcasts/hardfork-grok-robinhood.html', 'New York Times', 'By Kevin Roose, Casey Newton, Whitney Jones, Rachel Cohn, Rachel Dry, Alyssa Moxley, Dan Powell, Elisheba Ittoop, Marion Lozano, Rowan Niemisto and Diane Wong', '2025-02-21 02:00:03', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(15, 'Under Government Pressure, Apple Pulls Security Feature in Britain', 'Law enforcement in the country was pressuring the company to create a tool that would act like a back door into customers’ data.', 'https://www.nytimes.com/2025/02/21/technology/apple-security-feature-uk.html', 'New York Times', 'By Tripp Mickle', '2025-02-21 09:10:16', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(16, 'OpenAI Uncovers Evidence of A.I.-Powered Chinese Surveillance Tool', 'The company said a Chinese operation had built the tool to identify anti-Chinese posts on social media services in Western countries.', 'https://www.nytimes.com/2025/02/21/technology/openai-chinese-surveillance.html', 'New York Times', 'By Cade Metz', '2025-02-21 04:30:06', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(17, 'Coinbase Says S.E.C. Will Drop Crypto Lawsuit', 'The end of a court fight with the largest U.S. crypto company would be a big win for an industry that financially backed President Trump.', 'https://www.nytimes.com/2025/02/21/technology/coinbase-sec-lawsuit.html', 'New York Times', 'By David Yaffe-Bellany and Matthew Goldstein', '2025-02-21 03:25:07', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(18, 'A.I. Is Changing How Silicon Valley Builds Start-Ups', 'Tech start-ups typically raised huge sums to hire armies of workers and grow fast. Now artificial intelligence tools are making workers more productive and spurring tales of “tiny team” success.', 'https://www.nytimes.com/2025/02/20/technology/ai-silicon-valley-start-ups.html', 'New York Times', 'By Erin Griffith', '2025-02-20 05:13:39', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(19, 'Does Elon Musk Still Care About Selling Cars?', 'Mr. Musk, one of President Trump’s main advisers, has not outlined a plan to reverse falling sales at the electric car company of which he is chief executive.', 'https://www.nytimes.com/2025/02/20/business/elon-musk-tesla-trump.html', 'New York Times', 'By Jack Ewing', '2025-02-20 05:12:49', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(20, 'With Truth Social, Trump Has Official Mouthpiece and a Channel for Revenue', 'The president’s company, Trump Media & Technology Group, represents a clear mingling of his official duties and his business interests.', 'https://www.nytimes.com/2025/02/19/us/politics/truth-social-trump-media.html', 'New York Times', 'By Sharon LaFraniere and Matthew Goldstein', '2025-02-19 09:25:17', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(21, 'Microsoft Says It Has Created a New State of Matter to Power Quantum Computers', 'Microsoft’s new “topological qubit” is not based on a solid, liquid or gas. It is another phase of matter that many experts did not think was possible.', 'https://www.nytimes.com/2025/02/19/technology/microsoft-quantum-computing-topological-qubit.html', 'New York Times', 'By Cade Metz', '2025-02-19 06:00:10', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(22, 'Nikola, E.V. Start-Up That Once Thrilled Investors, Files for Bankruptcy', 'The company, which once enjoyed a surging stock price, struggled to turn its plans for electric and hydrogen trucks into a viable business.', 'https://www.nytimes.com/2025/02/19/business/nikola-electric-truck-bankruptcy.html', 'New York Times', 'By Neal E. Boudette', '2025-02-19 03:12:18', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(23, 'The Cryptocurrency Scam That Turned a Small Town Against Itself', 'How did a successful, financially sophisticated banker gamble his community’s money away?', 'https://www.nytimes.com/2025/02/19/magazine/cryptocurrency-scam-kansas-heartland-bank.html', 'New York Times', 'By David Yaffe-Bellany', '2025-02-19 00:00:54', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(24, 'HP to Buy Parts of Humane, Maker of the Ai Pin, for $116 Million', 'Humane, which marketed its Ai Pin as the next big thing after smartphones, had raised $240 million from investors, including OpenAI’s Sam Altman. The pin will be discontinued.', 'https://www.nytimes.com/2025/02/18/technology/hp-humane-ai-pin.html', 'New York Times', 'By Erin Griffith and Tripp Mickle', '2025-02-18 14:54:05', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(25, 'OpenAI’s Former Chief Technology Officer Starts Her Own Company', 'Mira Murati, who left OpenAI last year, has helped establish Thinking Machines Lab, a new artificial intelligence start-up.', 'https://www.nytimes.com/2025/02/18/technology/openai-mira-murati-startup.html', 'New York Times', 'By Cade Metz', '2025-02-18 08:30:05', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(26, 'They’ve Been Waiting Years to Go Public. They’re Still Waiting.', 'Some tech companies are delaying or pulling their listing plans as the Trump administration’s tariff announcements and other changes cause market volatility and uncertainty.', 'https://www.nytimes.com/2025/02/18/technology/tech-ipo-delays.html', 'New York Times', 'By Erin Griffith', '2025-02-18 04:44:37', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(27, 'Prominent Cryptocurrency Investor Faces Senate Tax Inquiry', 'The Finance Committee’s top Democrat sent a letter last month to Dan Morehead, the founder of Pantera Capital, about the investigation.', 'https://www.nytimes.com/2025/02/14/technology/dan-morehead-crypto-senate-taxes.html', 'New York Times', 'By David Yaffe-Bellany, Jesse Drucker and Matthew Goldstein', '2025-02-14 16:02:49', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(28, 'With Trump’s Help, Intel Could Hand Control of Chip Plants to TSMC', 'The Silicon Valley giant is trying to cut a deal it hopes would help it pull out of a yearslong slump.', 'https://www.nytimes.com/2025/02/14/technology/intel-tsmc-talks-trump.html', 'New York Times', 'By Tripp Mickle and Ana Swanson', '2025-02-14 14:40:33', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(29, 'OpenAI Rejects Elon Musk’s $97.4 Billion Bid for Control of the Company', 'Bret Taylor, the chairman of OpenAI’s board, said the artificial intelligence company was “not for sale.” Mr. Musk is separately raising money for his A.I. start-up, xAI.', 'https://www.nytimes.com/2025/02/14/technology/openai-elon-musk.html', 'New York Times', 'By Cade Metz, Mike Isaac and Jesus Jiménez', '2025-02-14 11:31:00', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(30, 'A.I. Accelerates in Paris + Can A.I. Fix Your Love Life?', 'It’s a Valentine’s Day Special!', 'https://www.nytimes.com/2025/02/14/podcasts/hardfork-ai-dating-apps.html', 'New York Times', 'By Kevin Roose, Casey Newton, Rachel Cohn, Whitney Jones, Rachel Dry, Chris Wood, Dan Powell, Marion Lozano and Rowan Niemisto', '2025-02-14 02:00:06', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(31, 'A Mathematician Who Makes the Best of Things', 'Alessio Figalli studies optimal transport, a field of math that ranges from the movements of clouds to the workings of chatbots.', 'https://www.nytimes.com/2025/02/14/science/mathematics-figalli-optimal-transport.html', 'New York Times', 'By Siobhan Roberts', '2025-02-14 00:00:17', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(32, 'Banks Sell $4.7 Billion of X’s Debt, in a Sign of Investor Demand', 'The social media company is attracting investor interest because of Elon Musk’s close ties to President Trump and a recent jump in revenue.', 'https://www.nytimes.com/2025/02/13/technology/elon-musk-x-debt-sale.html', 'New York Times', 'By Lauren Hirsch, Joe Rennison and Kate Conger', '2025-02-13 17:14:48', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(33, 'TikTok Returns to Apple and Google App Stores', 'The popular social media app was removed to comply with a new law that banned it in the United States. President Trump has paused enforcement of the ban.', 'https://www.nytimes.com/2025/02/13/technology/tiktok-apple-google-app-stores.html', 'New York Times', 'By Sapna Maheshwari, Tripp Mickle and Nico Grant', '2025-02-13 15:14:04', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(34, 'Blue Origin, Jeff Bezos’ Rocket Company, Cuts 10% of Its Employees', 'In an email to employees, the company’s chief executive said the company had become bloated during its growth in recent years.', 'https://www.nytimes.com/2025/02/13/technology/blue-origin-layoffs-jeff-bezos.html', 'New York Times', 'By Karen Weise and Kenneth Chang', '2025-02-13 11:02:23', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(35, 'Elon Musk Says He Will Drop OpenAI Bid if Company Preserves Nonprofit Mission', 'In a court filing, Mr. Musk said he and other investors would pull their $97.4 billion bid if OpenAI withdrew its plan to change its structure.', 'https://www.nytimes.com/2025/02/13/technology/elon-musk-openai-nonprofit.html', 'New York Times', 'By Cade Metz', '2025-02-13 07:10:56', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(36, 'For Trump and Fox News, New Policies Are Simply ‘Common Sense’', 'President Trump and the network have used the phrase to suggest that his policies are the right ones and popular, though polling suggests otherwise.', 'https://www.nytimes.com/2025/02/13/technology/trump-fox-news-common-sense.html', 'New York Times', 'By Stuart A. Thompson', '2025-02-13 00:03:26', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(37, 'Elon Musk’s X Settles Trump Lawsuit', 'The social media site agreed to pay in the range of $10 million to settle with the president, who had sued over the suspension of his account in 2021.', 'https://www.nytimes.com/2025/02/12/technology/musk-x-settles-trump-lawsuit.html', 'New York Times', 'By Maggie Haberman and Kate Conger', '2025-02-12 14:39:55', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(38, 'OpenAI Questions Rationale of Elon Musk’s Bid to Control the Company', 'The company answered the billionaire’s offer in a legal filing, accusing him of hypocrisy.', 'https://www.nytimes.com/2025/02/12/technology/elon-musk-openai-response.html', 'New York Times', 'By Cade Metz and Mike Isaac', '2025-02-12 13:55:38', '2025-02-25 15:33:32', '2025-02-25 16:55:35'),
(39, 'Google Calendar Deletes Women’s History Month and Other Cultural Events', 'The Silicon Valley giant said it made the change last year because it was difficult to keep up with every occasion, but some users questioned the decision.', 'https://www.nytimes.com/2025/02/12/technology/google-black-history-womens-history.html', 'New York Times', 'By Nico Grant', '2025-02-12 12:25:11', '2025-02-25 15:33:32', '2025-02-25 15:33:32'),
(40, 'Corrections and clarifications', NULL, 'https://www.theguardian.com/news/2025/feb/25/corrections-and-clarifications', 'The Guardian', NULL, '2025-02-25 16:00:03', '2025-02-25 16:07:28', '2025-02-25 16:55:32'),
(41, 'Wes Streeting to axe thousands of jobs at NHS England after ousting of chief executive', NULL, 'https://www.theguardian.com/society/2025/feb/25/wes-streeting-to-axe-thousands-of-jobs-at-nhs-england-after-ousting-of-chief-executive', 'The Guardian', NULL, '2025-02-25 15:47:21', '2025-02-25 16:07:28', '2025-02-25 16:55:32'),
(42, 'Apple’s Dictation System Transcribes the Word ‘Racist’ as ‘Trump’', 'The company said it was working to fix the problem after iPhone users began reporting the issue.', 'https://www.nytimes.com/2025/02/25/technology/iphone-dictation-trump-racist.html', 'New York Times', 'By Tripp Mickle and Eli Tan', '2025-02-25 10:42:29', '2025-02-25 16:07:32', '2025-02-25 16:55:35'),
(43, 'Rachel Maddow says MSNBC laying off ‘non-white’ hosts and staff is ‘indefensible’', NULL, 'https://www.theguardian.com/us-news/2025/feb/25/msnbc-layoffs-rachel-maddow', 'The Guardian', NULL, '2025-02-25 16:43:11', '2025-02-25 16:55:32', '2025-02-25 16:55:32'),
(44, 'Wolves’ early slips punished by Fulham’s Sessegnon and Muniz', NULL, 'https://www.theguardian.com/football/2025/feb/25/wolves-fulham-premier-league-match-report', 'The Guardian', NULL, '2025-02-25 16:40:07', '2025-02-25 16:55:32', '2025-02-25 16:55:32'),
(45, 'Premier League top scorers 2024-25: who is leading race for Golden Boot?', NULL, 'https://www.theguardian.com/football/2025/jan/14/premier-league-top-scorers-2024-25-who-is-leading-race-for-golden-boot', 'The Guardian', NULL, '2025-02-25 16:33:18', '2025-02-25 16:55:32', '2025-02-25 16:55:32'),
(46, 'Newsom threatens to pull funds unless California cities crack down on homelessness', NULL, 'https://www.theguardian.com/us-news/2025/feb/25/gavin-newsom-california-homeless-funding', 'The Guardian', NULL, '2025-02-25 16:20:30', '2025-02-25 16:55:32', '2025-02-25 16:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2025_02_24_124013_create_articles_table', 1),
(2, '0001_01_01_000000_create_users_table', 2),
(3, '0001_01_01_000001_create_cache_table', 3),
(4, '0001_01_01_000002_create_jobs_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7XEvDRSVg6lMEzrs4S6faz5xuVRYlwTrAH6sK6nt', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekZyTldPcDZiRFhPQzFEd05CWnFyMm1Eb0pvQ0k4QjYyS3hydWJ0ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740515912),
('cczIFg1m7xQB76YvkDiDxEamqR7QCbwwbAsg6Z9A', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkw5VExscktVcktNQlJxdXRJbVhKck9ibG16SFU3dXlvQWVLcWhpSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvYXJ0aWNsZXM/ZGF0ZT0yMDI1LTAyLTI1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1740518119);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
