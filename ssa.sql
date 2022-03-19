-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2022 at 01:40 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ssa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CompanyName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CompanyLogo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RegistrationNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IncorporationCountry` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PrincipleBusiness` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CompanyEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CompanyWebsite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Investor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MailingAddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Addressline1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `City` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `State` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ROLES` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Incorporation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `user_id`, `name`, `email`, `Phone`, `CompanyName`, `CompanyLogo`, `listed`, `RegistrationNumber`, `IncorporationCountry`, `PrincipleBusiness`, `CompanyEmail`, `CompanyWebsite`, `income`, `Investor`, `MailingAddress`, `Addressline1`, `City`, `Zip`, `State`, `Country`, `ROLES`, `Incorporation`, `role`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'gugagyw@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-19 04:38:14', '2022-03-19 04:38:14'),
(2, NULL, NULL, 'lalihamudi@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-19 04:38:19', '2022-03-19 04:38:19');

-- --------------------------------------------------------

--
-- Table structure for table `data_rooms`
--

CREATE TABLE `data_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `developer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invester_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rooms`
--

INSERT INTO `data_rooms` (`id`, `developer_id`, `invester_id`, `project_name`, `message`, `created_at`, `updated_at`) VALUES
(4, '3', '2', 'Georgia Delgado', 'asdadw', '2022-03-19 06:21:57', '2022-03-19 06:21:57'),
(5, '3', '2', 'Georgia Delgado', 'dsad sad sad sa', '2022-03-19 06:22:21', '2022-03-19 06:22:21'),
(6, '3', '2', 'Georgia Delgado', 'dgdfg', '2022-03-19 06:30:48', '2022-03-19 06:30:48'),
(7, '3', '2', 'Georgia Delgado', 'ddasdasd asdas', '2022-03-19 06:30:57', '2022-03-19 06:30:57'),
(8, '3', '2', 'Georgia Delgado', 'sadsada', '2022-03-19 06:31:16', '2022-03-19 06:31:16');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fronts`
--

CREATE TABLE `fronts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(53, '2014_10_12_000000_create_users_table', 1),
(54, '2014_10_12_100000_create_password_resets_table', 1),
(55, '2019_08_19_000000_create_failed_jobs_table', 1),
(56, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(57, '2022_01_23_083710_create_fronts_table', 1),
(58, '2022_01_23_091430_create_projects_table', 1),
(59, '2022_01_26_063110_create_admins_table', 1),
(60, '2022_01_28_054621_create_profiles_table', 1),
(61, '2022_01_29_070215_create_companies_table', 1),
(62, '2022_02_19_140807_create_platforms_table', 1),
(63, '2022_02_22_081546_create_projetcs_table', 1),
(64, '2022_02_23_200424_create_project_overviews_table', 1),
(65, '2022_02_23_200522_create_project_teasers_table', 1),
(66, '2022_02_23_200619_create_project_sites_table', 1),
(67, '2022_02_23_200649_create_project_operations_table', 1),
(68, '2022_02_23_200708_create_project_contracts_table', 1),
(69, '2022_02_23_200728_create_project_taxes_table', 1),
(70, '2022_02_23_200749_create_project_shareholders_table', 1),
(71, '2022_02_23_200810_create_project_debts_table', 1),
(72, '2022_02_23_200835_create_project_financials_table', 1),
(73, '2022_02_23_200855_create_project_revenues_table', 1),
(74, '2022_02_23_205335_create_project_environmentals_table', 1),
(75, '2022_02_26_120809_create_employees_table', 1),
(76, '2022_03_02_164136_create_request_projects_table', 1),
(77, '2022_03_09_202432_create_n_d_a_s_table', 1),
(78, '2022_03_18_172015_create_data_rooms_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `n_d_a_s`
--

CREATE TABLE `n_d_a_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inves_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nda_dev` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nda_inves` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nda_user_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `nda_dev_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `nda_inves_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `n_d_a_s`
--

INSERT INTO `n_d_a_s` (`id`, `user_id`, `inves_user_id`, `nda_dev`, `nda_inves`, `nda_user_status`, `nda_dev_status`, `nda_inves_status`, `created_at`, `updated_at`) VALUES
(1, '3', '1', '1647664877.pdf', NULL, '2', '2', '2', '2022-03-19 04:41:17', '2022-03-19 04:41:17'),
(2, '2', '1', NULL, '1647664894.pdf', '2', '2', '2', '2022-03-19 04:41:34', '2022-03-19 04:41:34');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `platforms`
--

CREATE TABLE `platforms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Capacity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `projectLevel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevenueType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevenueCurrency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OpportunityBrief` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MarketLandscape` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ReasonInvest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AboutSponsor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PlatformInvestment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `platforms`
--

INSERT INTO `platforms` (`id`, `Name`, `Type`, `Capacity`, `projectLevel`, `Country`, `Status`, `user_id`, `RevenueType`, `RevenueCurrency`, `Image`, `OpportunityBrief`, `MarketLandscape`, `ReasonInvest`, `AboutSponsor`, `PlatformInvestment`, `created_at`, `updated_at`) VALUES
(1, 'Jescie Edwards', 'Utility SOlar', '82', '94', 'Myanmar', 'Greenfield', '3', 'Spot revenue stream info', 'TRL', '1647664840.jpg', 'Non quod nostrum ill', 'Enim consequuntur cu', 'Sit aliquid hic aut', 'Nostrud quia quo ex', 'Consequuntur aperiam', '2022-03-19 04:40:40', '2022-03-19 04:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DOB` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TaxResidence` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CountryResidence` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PrimaryCitizenship` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MAILINGADDRESS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Addressline1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Addressline2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `City` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `State` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ROLES` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Passport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `name`, `email`, `Phone`, `Title`, `DOB`, `TaxResidence`, `CountryResidence`, `PrimaryCitizenship`, `MAILINGADDRESS`, `Addressline1`, `Addressline2`, `City`, `Zip`, `State`, `Country`, `ROLES`, `role`, `Passport`, `created_at`, `updated_at`) VALUES
(1, '2', 'Gwendolyn Stevenson', 'gugagyw@mailinator.com', '83513', 'sulocawyq@mailinator.com', '2008-09-27', 'Guyana', 'Ghana', 'Egypt', 'ditovuf@mailinator.com', 'lovykudog@mailinator.com', 'hevahidexo@mailinator.com', 'nazogi@mailinator.com', 'tavufev@mailinator.com', 'lypepej@mailinator.com', 'Hungary', 'Broker / Agent', 'Individual', '1647664750.jpg', '2022-03-19 04:38:14', '2022-03-19 04:39:10'),
(2, '3', 'Quynn Warner', 'lalihamudi@mailinator.com', '97712', 'gazubasyf@mailinator.com', '2010-06-06', 'Armenia', 'Gambia', 'New Caledonia', 'nylugad@mailinator.com', 'poqa@mailinator.com', 'jozyvyh@mailinator.com', 'ronuxuqi@mailinator.com', 'foxuhy@mailinator.com', 'sagiq@mailinator.com', 'El Salvador', 'Asset Owner', 'Individual', '1647664815.jpg', '2022-03-19 04:38:19', '2022-03-19 04:40:15');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_contracts`
--

CREATE TABLE `project_contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ProjectId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BuildingPermitsAvailable` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EnvironmentalPermitsAvailable` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InterconnectionPermitsAvailable` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GeneralRisks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TransitRisks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Construction_ErectionRisks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ThirdPartyLiability` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProfessionalIndemnity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InsuranceCosts` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InsuranceCostsCurrency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CommentAboutInsurance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectDeveloperEPC` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EPC_Contract` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProcurementContractor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EngineeringContractor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ConstructionContractor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_debts`
--

CREATE TABLE `project_debts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ProjectId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShareOfProject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RepaymentSchedule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FixedRate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LenderName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DebtType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MinimumDSCR` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LoanTerm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DebtDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StructureComments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InterestRate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PrincipalCurrency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PrincipalAmount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_environmentals`
--

CREATE TABLE `project_environmentals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ProjectId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Assessment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ManagementPlan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Consultant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_financials`
--

CREATE TABLE `project_financials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ProjectId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TotalProjectCost` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CivilEngineeringAmount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TotalProjectAmount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectCostSpentDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectCurrencySpentDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CivilEngineeringCurrency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DesignAmount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectManagementAmount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Evacuation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContingencyAmount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FinancialComments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_operations`
--

CREATE TABLE `project_operations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ProjectId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MaintenanceYearlyCosts` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OverheadYearlyCosts` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OM_ContractInPlace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OM_YearlyCosts` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OM_Currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OM_Contractor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CommentsOMCosts` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OperationalRisks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ThirdParty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Yield_PerformancesRisks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InsuranceCosts` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InsuranceCurrency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CommentsAboutInsuranceCosts` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OM_EscalationRate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InsurerName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CommentsRegardingOM_Insurance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WarrantyEndDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ItemsNotWarranty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_overviews`
--

CREATE TABLE `project_overviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ProjectName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `User_Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_user_id` int(11) DEFAULT NULL,
  `request_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `Offtaker` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PPA_Status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ChoosePlatform` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DateCommissioning` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Evacuation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SiteIdentified` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectStage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `City` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Developer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EPC_Contractor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EPC_Structure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PostalCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OwnershipStructure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SpecialPurposeVehicle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requested` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_overviews`
--

INSERT INTO `project_overviews` (`id`, `ProjectName`, `ProjectEmail`, `User_Name`, `ProjectType`, `ProjectStatus`, `user_id`, `request_user_id`, `request_status`, `Offtaker`, `PPA_Status`, `ChoosePlatform`, `grid`, `DateCommissioning`, `Evacuation`, `SiteIdentified`, `ProjectStage`, `Country`, `City`, `Developer`, `Region`, `EPC_Contractor`, `EPC_Structure`, `Street`, `PostalCode`, `OwnershipStructure`, `SpecialPurposeVehicle`, `Image`, `requested`, `created_at`, `updated_at`) VALUES
(1, 'Georgia Delgado', 'lalihamudi@mailinator.com', 'Quynn Warner', 'Shafira Mckee', '0', '3', NULL, '0', 'Yes', 'No', 'Jescie Edwards', 'Yes', '1984-08-02', 'No', 'Yes', 'Brownfield--Procurement', 'Sri Lanka', 'Jayme Lindsay', 'Build, Own, and Operate the asset(s) (BOO)', 'Kimberly Compton', 'No', 'OTHER', 'Jesse Riggs', 'Kuame Mcclain', 'Other', 'No', '1647664852.jpg', NULL, '2022-03-19 04:40:52', '2022-03-19 04:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `project_revenues`
--

CREATE TABLE `project_revenues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ProjectId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Revenue2022` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Revenue2021` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Revenue2020` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Revenue2019` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Revenue2018` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OperationalCosts2022` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OperationalCosts2021` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OperationalCosts2020` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OperationalCosts2019` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OperationalCosts2018` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Depreciation2022` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Depreciation2021` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Depreciation2020` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Depreciation2019` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Depreciation2018` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tax2022` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tax2021` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tax2020` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tax2019` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tax2018` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Profit2022` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Profit2021` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Profit2020` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Profit2019` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Profit2018` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Capital2022` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Capital2021` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Capital2020` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Capital2019` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Capital2018` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cashflow2022` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cashflow2021` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cashflow2020` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cashflow2019` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cashflow2018` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comments2022` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comments2021` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comments2020` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comments2019` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comments2018` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_shareholders`
--

CREATE TABLE `project_shareholders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ProjectId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShareholderFullName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShareholdersComments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Shareholding` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UltimateBeneficiaryName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_sites`
--

CREATE TABLE `project_sites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ProjectId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SiteAccessibleTruck` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logistics` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SiteArea` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SiteUnit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SiteMainUsage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContractSigned` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SiteOwnerPPAoff_taker` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SiteOwnerPayment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SiteContractType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SiteCostPerYear` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SiteCurrency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DurationLease` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SiteAccess` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CommentsSite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RoadSurvey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_taxes`
--

CREATE TABLE `project_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ProjectId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CorporateIncomeTax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ImportDutiesVAT` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Schedule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WithholdingTax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OtherTax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DepreciationTerm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DepreciationTermYear` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VAT_GST_Revenue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TaxesComments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VAT_GST_Expense` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InitialAllowance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_teasers`
--

CREATE TABLE `project_teasers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ProjectId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OpportunityBrief` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MarketLandscape` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ReasonIinvest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AboutSponsor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TeaserOffTaker` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projetcs`
--

CREATE TABLE `projetcs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_projects`
--

CREATE TABLE `request_projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nda_developer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `nda_investor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `request_status_inves` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `request_status_dev` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `project_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_user_role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `projectid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `request_user_id` int(11) DEFAULT NULL,
  `request_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `request_status_admin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `Offtaker` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PPA_Status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ChoosePlatform` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DateCommissioning` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Evacuation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SiteIdentified` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectStage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `City` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Developer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EPC_Contractor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EPC_Structure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PostalCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OwnershipStructure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SpecialPurposeVehicle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requested` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_projects`
--

INSERT INTO `request_projects` (`id`, `user_id`, `name`, `email`, `role`, `nda_developer`, `nda_investor`, `request_status_inves`, `request_status_dev`, `project_user_id`, `project_user_role`, `projectid`, `status`, `ProjectName`, `ProjectEmail`, `ProjectType`, `ProjectStatus`, `request_user_id`, `request_status`, `request_status_admin`, `Offtaker`, `PPA_Status`, `ChoosePlatform`, `grid`, `DateCommissioning`, `Evacuation`, `SiteIdentified`, `ProjectStage`, `Country`, `City`, `Developer`, `Region`, `EPC_Contractor`, `EPC_Structure`, `Street`, `PostalCode`, `OwnershipStructure`, `SpecialPurposeVehicle`, `Image`, `requested`, `created_at`, `updated_at`) VALUES
(1, '2', 'Gwendolyn Stevenson', 'gugagyw@mailinator.com', 'Individual', '1', '1', '1', '1', '3', NULL, '1', NULL, 'Georgia Delgado', 'lalihamudi@mailinator.com', 'Shafira Mckee', '0', 2, '0', '1', 'Yes', 'No', 'Jescie Edwards', 'Yes', '1984-08-02', 'No', 'Yes', 'Brownfield--Procurement', 'Sri Lanka', 'Jayme Lindsay', 'Build, Own, and Operate the asset(s) (BOO)', 'Kimberly Compton', 'No', 'OTHER', 'Jesse Riggs', 'Kuame Mcclain', 'Other', 'No', '1647664852.jpg', NULL, '2022-03-19 04:40:57', '2022-03-19 04:55:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NULL',
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_otp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `response` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `termsConditions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LoginWith` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `otp`, `v_otp`, `status`, `profile`, `response`, `avatar`, `Image`, `termsConditions`, `LoginWith`, `provider`, `provider_id`, `access_token`, `user_name`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$HRVkDExdlIaz0JUBm/6Nu.jd65yfM9NZFzjmxuXRvuU.r3vWQUZjm', 'NULL', NULL, '0', '1', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-19 04:34:37', '2022-03-19 04:34:37'),
(2, 'Gwendolyn Stevenson', 'gugagyw@mailinator.com', NULL, '$2y$10$czF6eLTLsZ4VL2EXgEKcuewplTKze/9XYxCEy2F9jzZ9goKb00HF6', 'Individual', NULL, '1', '1', '1', '1', NULL, NULL, 'Readed', 'Email', NULL, NULL, NULL, NULL, NULL, '2022-03-19 04:38:12', '2022-03-19 04:39:10'),
(3, 'Quynn Warner', 'lalihamudi@mailinator.com', NULL, '$2y$10$X2i6DnEBDjw3a6HnZHGZse6Lj92IcIUdDGMvtEe1SheBXFNHDaSPG', 'Individual', NULL, '1', '1', '1', '1', NULL, NULL, 'Readed', 'Email', NULL, NULL, NULL, NULL, NULL, '2022-03-19 04:38:17', '2022-03-19 04:40:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_email_unique` (`email`);

--
-- Indexes for table `data_rooms`
--
ALTER TABLE `data_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fronts`
--
ALTER TABLE `fronts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `n_d_a_s`
--
ALTER TABLE `n_d_a_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `platforms`
--
ALTER TABLE `platforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profiles_email_unique` (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_contracts`
--
ALTER TABLE `project_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_debts`
--
ALTER TABLE `project_debts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_environmentals`
--
ALTER TABLE `project_environmentals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_financials`
--
ALTER TABLE `project_financials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_operations`
--
ALTER TABLE `project_operations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_overviews`
--
ALTER TABLE `project_overviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_revenues`
--
ALTER TABLE `project_revenues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_shareholders`
--
ALTER TABLE `project_shareholders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_sites`
--
ALTER TABLE `project_sites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_taxes`
--
ALTER TABLE `project_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_teasers`
--
ALTER TABLE `project_teasers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projetcs`
--
ALTER TABLE `projetcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_projects`
--
ALTER TABLE `request_projects`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rooms`
--
ALTER TABLE `data_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fronts`
--
ALTER TABLE `fronts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `n_d_a_s`
--
ALTER TABLE `n_d_a_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `platforms`
--
ALTER TABLE `platforms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_contracts`
--
ALTER TABLE `project_contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_debts`
--
ALTER TABLE `project_debts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_environmentals`
--
ALTER TABLE `project_environmentals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_financials`
--
ALTER TABLE `project_financials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_operations`
--
ALTER TABLE `project_operations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_overviews`
--
ALTER TABLE `project_overviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_revenues`
--
ALTER TABLE `project_revenues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_shareholders`
--
ALTER TABLE `project_shareholders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_sites`
--
ALTER TABLE `project_sites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_taxes`
--
ALTER TABLE `project_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_teasers`
--
ALTER TABLE `project_teasers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projetcs`
--
ALTER TABLE `projetcs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_projects`
--
ALTER TABLE `request_projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
