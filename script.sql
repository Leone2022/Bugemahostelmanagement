USE [master]
GO
/****** Object:  Database [BugemahostelMS]    Script Date: 5/8/2025 8:15:18 AM ******/
CREATE DATABASE [BugemahostelMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BugemahostelMS', FILENAME = N'C:\Users\HP ELITEBOOK 840 G5\BugemahostelMS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BugemahostelMS_log', FILENAME = N'C:\Users\HP ELITEBOOK 840 G5\BugemahostelMS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BugemahostelMS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BugemahostelMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BugemahostelMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BugemahostelMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BugemahostelMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BugemahostelMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BugemahostelMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [BugemahostelMS] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BugemahostelMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BugemahostelMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BugemahostelMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BugemahostelMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BugemahostelMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BugemahostelMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BugemahostelMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BugemahostelMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BugemahostelMS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BugemahostelMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BugemahostelMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BugemahostelMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BugemahostelMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BugemahostelMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BugemahostelMS] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BugemahostelMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BugemahostelMS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BugemahostelMS] SET  MULTI_USER 
GO
ALTER DATABASE [BugemahostelMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BugemahostelMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BugemahostelMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BugemahostelMS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BugemahostelMS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BugemahostelMS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BugemahostelMS] SET QUERY_STORE = OFF
GO
USE [BugemahostelMS]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/8/2025 8:15:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Amenities]    Script Date: 5/8/2025 8:15:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Amenities](
	[AmenityId] [int] IDENTITY(1,1) NOT NULL,
	[HostelId] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[IconClass] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Amenities] PRIMARY KEY CLUSTERED 
(
	[AmenityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Announcements]    Script Date: 5/8/2025 8:15:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announcements](
	[AnnouncementId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[PostedDate] [datetime2](7) NOT NULL,
	[PostedBy] [nvarchar](max) NOT NULL,
	[ExpiryDate] [datetime2](7) NULL,
	[HostelId] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsUrgent] [bit] NOT NULL,
 CONSTRAINT [PK_Announcements] PRIMARY KEY CLUSTERED 
(
	[AnnouncementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/8/2025 8:15:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/8/2025 8:15:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/8/2025 8:15:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/8/2025 8:15:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/8/2025 8:15:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/8/2025 8:15:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[UserRole] [nvarchar](max) NULL,
	[StudentId] [nvarchar](max) NULL,
	[Course] [nvarchar](max) NULL,
	[Year] [nvarchar](max) NULL,
	[ParentName] [nvarchar](max) NULL,
	[ParentContact] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Nationality] [nvarchar](max) NULL,
	[EmergencyContactName] [nvarchar](max) NULL,
	[EmergencyContactPhone] [nvarchar](max) NULL,
	[ProfilePicture] [nvarchar](max) NULL,
	[IdentificationType] [nvarchar](max) NULL,
	[IdentificationNumber] [nvarchar](max) NULL,
	[CurrentRoomNumber] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[AssignmentDate] [datetime2](7) NULL,
	[Country] [nvarchar](max) NULL,
	[CurrentHostelId] [int] NULL,
	[IsBoarding] [bit] NOT NULL,
	[IsCurrentlyInHostel] [bit] NOT NULL,
	[IsTemporaryAssignment] [bit] NOT NULL,
	[IsVerified] [bit] NOT NULL,
	[LastCheckInTime] [datetime2](7) NULL,
	[LastCheckOutTime] [datetime2](7) NULL,
	[ProbationEndDate] [datetime2](7) NULL,
	[RoomId] [int] NULL,
	[VerificationDate] [datetime2](7) NULL,
	[ApprovalDate] [datetime2](7) NULL,
	[ApprovedBy] [nvarchar](max) NULL,
	[IsApproved] [bit] NOT NULL,
	[RegistrationDate] [datetime2](7) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 5/8/2025 8:15:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 5/8/2025 8:15:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[RoomId] [int] NOT NULL,
	[BookingDate] [datetime2](7) NOT NULL,
	[CheckInDate] [datetime2](7) NOT NULL,
	[CheckOutDate] [datetime2](7) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Status] [int] NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[ApprovedBy] [nvarchar](max) NULL,
	[ApprovalDate] [datetime2](7) NULL,
	[RejectionReason] [nvarchar](max) NULL,
 CONSTRAINT [PK_Bookings] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hostels]    Script Date: 5/8/2025 8:15:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hostels](
	[HostelId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Gender] [int] NOT NULL,
	[Capacity] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[WardenName] [nvarchar](max) NULL,
	[WardenContact] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[DistanceFromCampus] [decimal](18, 2) NOT NULL,
	[ManagementType] [int] NOT NULL,
	[HostelCode] [nvarchar](max) NULL,
	[YouTubeVideoId] [nvarchar](max) NULL,
	[LandlordId] [nvarchar](max) NULL,
	[WardenId] [nvarchar](max) NULL,
 CONSTRAINT [PK_Hostels] PRIMARY KEY CLUSTERED 
(
	[HostelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaintenanceRequests]    Script Date: 5/8/2025 8:15:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaintenanceRequests](
	[RequestId] [int] IDENTITY(1,1) NOT NULL,
	[RoomId] [int] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
	[ResolvedById] [nvarchar](max) NULL,
	[ResolvedAt] [datetime2](7) NULL,
	[StaffNotes] [nvarchar](max) NULL,
	[IsUrgent] [bit] NOT NULL,
	[ReportedById] [nvarchar](450) NULL,
	[Resolution] [nvarchar](max) NULL,
 CONSTRAINT [PK_MaintenanceRequests] PRIMARY KEY CLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 5/8/2025 8:15:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Message] [nvarchar](500) NOT NULL,
	[Link] [nvarchar](255) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ReadAt] [datetime2](7) NULL,
	[IsRead] [bit] NOT NULL,
	[Type] [int] NOT NULL,
	[TargetUserId] [nvarchar](max) NULL,
	[SenderUserId] [nvarchar](max) NULL,
	[SenderName] [nvarchar](max) NULL,
	[RecipientId] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 5/8/2025 8:15:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[BookingId] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[PaymentDate] [datetime2](7) NOT NULL,
	[Method] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[TransactionReference] [nvarchar](max) NULL,
	[ReceiptNumber] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
	[ProofOfPaymentUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 5/8/2025 8:15:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[RoomId] [int] IDENTITY(1,1) NOT NULL,
	[RoomNumber] [nvarchar](max) NOT NULL,
	[HostelId] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[Capacity] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[PricePerSemester] [decimal](18, 2) NOT NULL,
	[Status] [int] NOT NULL,
	[CurrentOccupancy] [int] NOT NULL,
	[NeedsAttention] [bit] NOT NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentActivities]    Script Date: 5/8/2025 8:15:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentActivities](
	[ActivityId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[ActivityType] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Timestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_StudentActivities] PRIMARY KEY CLUSTERED 
(
	[ActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250327071417_InitialCreate', N'9.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250401124525_UpdateModels', N'9.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250413184351_AddNotificationsAndApproval', N'9.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250419203250_AddHostelManagementType', N'9.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250420121545_AddManagementTypeToHostel', N'9.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250420162028_AddHostelCodeField', N'9.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250420231656_MakeHostelCodeNullable', N'9.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250421091702_AddYouTubeVideoField', N'9.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250422212218_AddProofOfPaymentUrl', N'9.0.3')
GO
SET IDENTITY_INSERT [dbo].[Amenities] ON 

INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (5, 4, N'Laudry areas', N'Where we wash our cloths', N'fas fa-check-circle', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (6, 4, N'TV', N'Entertainment', N'fas fa-tv', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (7, 4, N'wifi', N'High-speed wireless internet access throughout the building.', N'fas fa-wifi', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (8, 4, N'cleaning', N'Regular cleaning services for common areas and optional room cleaning.', N'fas fa-broom', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (9, 4, N'security', N'24/7 security personnel and CCTV surveillance for student safety.', N'fas fa-shield-alt', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (10, 5, N'Roof top', N'chilling place', N'fas fa-check-circle', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (11, 5, N'Hot water', N'has hot water', N'fas fa-check-circle', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (12, 5, N'wifi', N'High-speed wireless internet access throughout the building.', N'fas fa-wifi', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (13, 5, N'cleaning', N'Regular cleaning services for common areas and optional room cleaning.', N'fas fa-broom', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (14, 5, N'security', N'24/7 security personnel and CCTV surveillance for student safety.', N'fas fa-shield-alt', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (15, 5, N'kitchen', N'Shared kitchen facilities with refrigerator and basic cooking equipment.', N'fas fa-utensils', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (16, 6, N'tv', N'chilling place', N'fas fa-tv', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (17, 6, N'wifi', N'High-speed wireless internet access throughout the building.', N'fas fa-wifi', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (18, 6, N'cleaning', N'Regular cleaning services for common areas and optional room cleaning.', N'fas fa-broom', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (19, 6, N'security', N'24/7 security personnel and CCTV surveillance for student safety.', N'fas fa-shield-alt', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (20, 7, N'wifi', N'High-speed wireless internet access throughout the building.', N'fas fa-wifi', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (21, 7, N'cleaning', N'Regular cleaning services for common areas and optional room cleaning.', N'fas fa-broom', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (22, 7, N'security', N'24/7 security personnel and CCTV surveillance for student safety.', N'fas fa-shield-alt', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (26, 9, N'cleaning', N'Regular cleaning services for common areas and optional room cleaning.', N'fas fa-broom', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (27, 9, N'security', N'24/7 security personnel and CCTV surveillance for student safety.', N'fas fa-shield-alt', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (28, 9, N'kitchen', N'Shared kitchen facilities with refrigerator and basic cooking equipment.', N'fas fa-utensils', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (29, 10, N'wifi', N'High-speed wireless internet access throughout the building.', N'fas fa-wifi', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (30, 10, N'cleaning', N'Regular cleaning services for common areas and optional room cleaning.', N'fas fa-broom', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (31, 10, N'security', N'24/7 security personnel and CCTV surveillance for student safety.', N'fas fa-shield-alt', 1)
INSERT [dbo].[Amenities] ([AmenityId], [HostelId], [Name], [Description], [IconClass], [IsActive]) VALUES (32, 10, N'kitchen', N'Shared kitchen facilities with refrigerator and basic cooking equipment.', N'fas fa-utensils', 1)
SET IDENTITY_INSERT [dbo].[Amenities] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'00df7608-3cad-42e4-9c68-b545d7e2e83e', N'Student', N'STUDENT', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'17294a7a-de88-4050-8aa5-5a3ffdce2011', N'Dean', N'DEAN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'721c968f-aef8-4c41-b790-5231aed85818', N'Warden', N'WARDEN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b7525f4d-c7cf-47a5-9ed1-dfcfcc8bd9ce', N'Admin', N'ADMIN', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'39f76439-4199-4c87-a718-7c3930b8f99f', N'00df7608-3cad-42e4-9c68-b545d7e2e83e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4bbdbce3-0c64-48a1-b48d-9631039b657e', N'00df7608-3cad-42e4-9c68-b545d7e2e83e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'86db4821-ac85-47c0-bedf-57951bc2758f', N'00df7608-3cad-42e4-9c68-b545d7e2e83e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd00bef25-78a1-46a0-b9e6-347c050a7f27', N'00df7608-3cad-42e4-9c68-b545d7e2e83e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e77139c7-1241-4c53-a1d4-cad4cd55278b', N'00df7608-3cad-42e4-9c68-b545d7e2e83e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ea74ae1f-f3fb-4be9-ba02-cb191c53cef3', N'00df7608-3cad-42e4-9c68-b545d7e2e83e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ebe0f1d2-1c3f-4eb9-9bc7-5e005c085c37', N'00df7608-3cad-42e4-9c68-b545d7e2e83e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'74a4a167-e100-48fe-9737-77ce22c3cf26', N'17294a7a-de88-4050-8aa5-5a3ffdce2011')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9d246352-5be3-42e5-9380-973b7d90d6af', N'721c968f-aef8-4c41-b790-5231aed85818')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2519927c-8503-4435-b824-c5de26219f45', N'b7525f4d-c7cf-47a5-9ed1-dfcfcc8bd9ce')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserRole], [StudentId], [Course], [Year], [ParentName], [ParentContact], [Address], [Nationality], [EmergencyContactName], [EmergencyContactPhone], [ProfilePicture], [IdentificationType], [IdentificationNumber], [CurrentRoomNumber], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AssignmentDate], [Country], [CurrentHostelId], [IsBoarding], [IsCurrentlyInHostel], [IsTemporaryAssignment], [IsVerified], [LastCheckInTime], [LastCheckOutTime], [ProbationEndDate], [RoomId], [VerificationDate], [ApprovalDate], [ApprovedBy], [IsApproved], [RegistrationDate]) VALUES (N'2519927c-8503-4435-b824-c5de26219f45', N'System', N'Administrator', N'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'admin@bugema.ac.ug', N'ADMIN@BUGEMA.AC.UG', N'admin@bugema.ac.ug', N'ADMIN@BUGEMA.AC.UG', 1, N'AQAAAAIAAYagAAAAEBlP+bgKj0JGW4RZwVr3d4PEzW/d8sjFmt0jj2MA0hgec9VkSAg7bkh/IwQltF5KFg==', N'IPOWAXFNE65MEJINWP4XTFLMJM6LO5GI', N'5bf0d6b2-d180-4ed8-a06e-2575b0291efb', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserRole], [StudentId], [Course], [Year], [ParentName], [ParentContact], [Address], [Nationality], [EmergencyContactName], [EmergencyContactPhone], [ProfilePicture], [IdentificationType], [IdentificationNumber], [CurrentRoomNumber], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AssignmentDate], [Country], [CurrentHostelId], [IsBoarding], [IsCurrentlyInHostel], [IsTemporaryAssignment], [IsVerified], [LastCheckInTime], [LastCheckOutTime], [ProbationEndDate], [RoomId], [VerificationDate], [ApprovalDate], [ApprovedBy], [IsApproved], [RegistrationDate]) VALUES (N'39f76439-4199-4c87-a718-7c3930b8f99f', N'Thandekile', N'Mabuza', N'Student', N'22/BWS/BU/R/0014', N'Social work and administration', N'First Year', N'Walvaton Mabuza', N'0771691101', N'Bulawayo', N'ZIMBABWEAN', N'Leone Chirodza', N'0781657234', N'/images/students/6c26429f-753c-4057-83e1-123b54a9ceff_IMG-20240502-WA0060-removebg-preview.png', NULL, NULL, N'C1', N'thandekilencube@gmail.com', N'THANDEKILENCUBE@GMAIL.COM', N'thandekilencube@gmail.com', N'THANDEKILENCUBE@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEBSDaVM/rTunvnaxEthvZYaQcA3xLymhWEmopqrqTKsB83r9wjnH8T1CwJ1Gg+u6yw==', N'OFWCTTNBM4NONULEAVST65AOH7X4D7JA', N'2c9edf97-ab96-4e75-98b0-a7e230fc8499', NULL, 0, 0, NULL, 1, 0, CAST(N'2025-05-04T18:17:06.3362372' AS DateTime2), N'ZIMBABWE', 4, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2025-04-22T05:33:22.0602577' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserRole], [StudentId], [Course], [Year], [ParentName], [ParentContact], [Address], [Nationality], [EmergencyContactName], [EmergencyContactPhone], [ProfilePicture], [IdentificationType], [IdentificationNumber], [CurrentRoomNumber], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AssignmentDate], [Country], [CurrentHostelId], [IsBoarding], [IsCurrentlyInHostel], [IsTemporaryAssignment], [IsVerified], [LastCheckInTime], [LastCheckOutTime], [ProbationEndDate], [RoomId], [VerificationDate], [ApprovalDate], [ApprovedBy], [IsApproved], [RegistrationDate]) VALUES (N'4bbdbce3-0c64-48a1-b48d-9631039b657e', N'Peter', N'Sithole', N'Student', N'22/BWS/BU/R/0407', N'Theology', N'Fourth Year', N'Alex', N'07257682445', N'Pretoria 2354, Mandela Street', N'South Africa', N'alex', N'0876854467', N'/images/students/324e6275-39df-4a57-9de2-2924c2cd259f_20240216_190331.jpg', NULL, NULL, NULL, N'peter@gmail.com', N'PETER@GMAIL.COM', N'peter@gmail.com', N'PETER@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAELjCAlkaXkg2cSPZtlt++TSMCeSKfm/qzS+0/70qaUO9I/tNbpfXN3ukrULtvB6abA==', N'JVHO6BJZRJDI33YEFLEDDKLKAFNCJ3X7', N'95dee667-4dc1-4cd1-b850-645ac8efaf00', NULL, 0, 0, NULL, 1, 0, NULL, N'South Africa', NULL, 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-05-04T17:33:30.2309039' AS DateTime2), N'admin@bugema.ac.ug', 1, CAST(N'2025-05-04T17:21:02.0102212' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserRole], [StudentId], [Course], [Year], [ParentName], [ParentContact], [Address], [Nationality], [EmergencyContactName], [EmergencyContactPhone], [ProfilePicture], [IdentificationType], [IdentificationNumber], [CurrentRoomNumber], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AssignmentDate], [Country], [CurrentHostelId], [IsBoarding], [IsCurrentlyInHostel], [IsTemporaryAssignment], [IsVerified], [LastCheckInTime], [LastCheckOutTime], [ProbationEndDate], [RoomId], [VerificationDate], [ApprovalDate], [ApprovedBy], [IsApproved], [RegistrationDate]) VALUES (N'74a4a167-e100-48fe-9737-77ce22c3cf26', N'Dean', N'Students', N'Dean', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'dean@bugema.ac.ug', N'DEAN@BUGEMA.AC.UG', N'dean@bugema.ac.ug', N'DEAN@BUGEMA.AC.UG', 1, N'AQAAAAIAAYagAAAAELo0ldvhni8ZUZynU7s3Y72z/pXFGRBtQM3fDS0ArpEx8IYdYxKFWwhssjCQzKnPaQ==', N'DKAL2MQQJGB4LMFPBEKKWXAQGS3VZTT3', N'1b6d8209-8282-4838-92f7-079129ec495e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserRole], [StudentId], [Course], [Year], [ParentName], [ParentContact], [Address], [Nationality], [EmergencyContactName], [EmergencyContactPhone], [ProfilePicture], [IdentificationType], [IdentificationNumber], [CurrentRoomNumber], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AssignmentDate], [Country], [CurrentHostelId], [IsBoarding], [IsCurrentlyInHostel], [IsTemporaryAssignment], [IsVerified], [LastCheckInTime], [LastCheckOutTime], [ProbationEndDate], [RoomId], [VerificationDate], [ApprovalDate], [ApprovedBy], [IsApproved], [RegistrationDate]) VALUES (N'86db4821-ac85-47c0-bedf-57951bc2758f', N'Getrude', N'Mukyala', N'Student', N'22/BSE/BU/R/0008', N'Jonalism', N'Second Year', N'AUGUSTINE CHIRODZA', N'0771691101', N'First', N'Uganda', N'THANDEKILE MABUZA', N'0766167856', N'/images/students/f04acadb-2e66-40db-9680-c349595a28a0_HEADTEACHER.png', NULL, NULL, N'C1', N'getrude@bugema.ac.ug', N'GETRUDE@BUGEMA.AC.UG', N'getrude@bugema.ac.ug', N'GETRUDE@BUGEMA.AC.UG', 0, N'AQAAAAIAAYagAAAAEMEQwYEwqLavQk9y79yjqzM436kgUmkSilPVq4wpMPrX1ush6yySpYFvvDeNbyK5Yg==', N'7BQBRAFTY4DOCD2LG4QX32TKRY5QKKJD', N'ce75472b-eacb-4a1e-ae02-ff6a28b95c37', NULL, 0, 0, NULL, 1, 0, CAST(N'2025-04-22T13:17:56.3411841' AS DateTime2), N'Uganda', 4, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2025-04-22T13:16:06.2544944' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserRole], [StudentId], [Course], [Year], [ParentName], [ParentContact], [Address], [Nationality], [EmergencyContactName], [EmergencyContactPhone], [ProfilePicture], [IdentificationType], [IdentificationNumber], [CurrentRoomNumber], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AssignmentDate], [Country], [CurrentHostelId], [IsBoarding], [IsCurrentlyInHostel], [IsTemporaryAssignment], [IsVerified], [LastCheckInTime], [LastCheckOutTime], [ProbationEndDate], [RoomId], [VerificationDate], [ApprovalDate], [ApprovedBy], [IsApproved], [RegistrationDate]) VALUES (N'9d246352-5be3-42e5-9380-973b7d90d6af', N'Hostel', N'Warden', N'Warden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'warden@bugema.ac.ug', N'WARDEN@BUGEMA.AC.UG', N'warden@bugema.ac.ug', N'WARDEN@BUGEMA.AC.UG', 1, N'AQAAAAIAAYagAAAAEOriJPAvflP+32yneZDzIRH7g6bopANeuo8P1ZYyvryAezjCDtMB0ArAThQRVB3cwg==', N'VRDM3R4R6QJIPWPL7A4O5SEWFHQY53MD', N'a60753d1-ae86-46af-bbf3-4680a01abe14', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserRole], [StudentId], [Course], [Year], [ParentName], [ParentContact], [Address], [Nationality], [EmergencyContactName], [EmergencyContactPhone], [ProfilePicture], [IdentificationType], [IdentificationNumber], [CurrentRoomNumber], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AssignmentDate], [Country], [CurrentHostelId], [IsBoarding], [IsCurrentlyInHostel], [IsTemporaryAssignment], [IsVerified], [LastCheckInTime], [LastCheckOutTime], [ProbationEndDate], [RoomId], [VerificationDate], [ApprovalDate], [ApprovedBy], [IsApproved], [RegistrationDate]) VALUES (N'd00bef25-78a1-46a0-b9e6-347c050a7f27', N'LEONE', N'CHIRODZA', N'Student', N'22/BSE/BU/R/0007', N'SOFTWARE ENGINEERING', N'First Year', N'AUGUSTINE CHIRODZA', N'+27 72 868 9669', N'1933 Molebogeng street South Africa', N'ZIMBABWEAN', N'THANDEKILE MABUZA', N'0781657234', N'/images/students/ef152c6d-4570-4b3a-b56e-28158546bdc2_IMG-20240315-WA0022.jpg', NULL, NULL, NULL, N'leonechirodza@gmail.com', N'LEONECHIRODZA@GMAIL.COM', N'leonechirodza@gmail.com', N'LEONECHIRODZA@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEMTBgewOxqBgY3tVP2H/+lY4CJx6+WxkWl0EN8OnOfrD2L1qT9spK6kFE2X7dnRjpA==', N'YLKO6AGQ4JY6ESRAVQVDZM7LJTNFRTK7', N'48afed6a-6aae-4824-a641-9a22f9124dd4', NULL, 0, 0, NULL, 1, 0, NULL, N'ZIMBABWE', NULL, 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2025-04-22T05:30:52.1497258' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserRole], [StudentId], [Course], [Year], [ParentName], [ParentContact], [Address], [Nationality], [EmergencyContactName], [EmergencyContactPhone], [ProfilePicture], [IdentificationType], [IdentificationNumber], [CurrentRoomNumber], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AssignmentDate], [Country], [CurrentHostelId], [IsBoarding], [IsCurrentlyInHostel], [IsTemporaryAssignment], [IsVerified], [LastCheckInTime], [LastCheckOutTime], [ProbationEndDate], [RoomId], [VerificationDate], [ApprovalDate], [ApprovedBy], [IsApproved], [RegistrationDate]) VALUES (N'e77139c7-1241-4c53-a1d4-cad4cd55278b', N'Thembi', N'Antony', N'Student', N'25/BWS/BU/R/0045', N'Social work and administration', N'Second Year', N'AUGUSTINE CHIRODZA', N'0771695351', N'Bugema University', N'ZIMBABWEAN', N'Leone Chirodza', N'0766167856', N'/images/students/fb481942-6a8d-4a54-969f-1b78935d4712_Untitl1.png', NULL, NULL, NULL, N'thembi@gmail.com', N'THEMBI@GMAIL.COM', N'thembi@gmail.com', N'THEMBI@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEKpBzgzgHanqeuWpJh4EvvrgVSUnWY13FL7rB31RSOW4mGym/AgU+l0ZnmW/UBSg2g==', N'ZPWBBCAVBDYRIP2QRHJKSZUKVBYVRRXO', N'4d48ce69-e597-4287-8801-57a33255c7f1', NULL, 0, 0, NULL, 1, 0, NULL, N'Uganda', NULL, 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2025-05-07T10:49:35.0234121' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserRole], [StudentId], [Course], [Year], [ParentName], [ParentContact], [Address], [Nationality], [EmergencyContactName], [EmergencyContactPhone], [ProfilePicture], [IdentificationType], [IdentificationNumber], [CurrentRoomNumber], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AssignmentDate], [Country], [CurrentHostelId], [IsBoarding], [IsCurrentlyInHostel], [IsTemporaryAssignment], [IsVerified], [LastCheckInTime], [LastCheckOutTime], [ProbationEndDate], [RoomId], [VerificationDate], [ApprovalDate], [ApprovedBy], [IsApproved], [RegistrationDate]) VALUES (N'ea74ae1f-f3fb-4be9-ba02-cb191c53cef3', N'Francis', N'Lubwanja', N'Student', N'22/BSE/BU/R/0045', N'SOFTWARE ENGINEERING', N'Third Year', N'Donald', N'0771695351', N'Bugema University', N'ZIMBABWEAN', N'Leone - Chirodza', N'0766167856', N'/images/students/dc12bf2d-4e8a-4e69-8490-540e763b89ac_20241204_144948.jpg', NULL, NULL, NULL, N'francis@gmail.com', N'FRANCIS@GMAIL.COM', N'francis@gmail.com', N'FRANCIS@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEF3eS6j8KevAFXKWhtkMg9+hVxkDI7HVKLdJj64WT3vlECb1YovourBs2Yd/+hZX9A==', N'LLR4XQ6E7V4STEMRLUTGXEBIW2CWQ4IY', N'2e52801c-7939-41ef-8b97-f8cff5f4e1af', NULL, 0, 0, NULL, 1, 0, NULL, N'Uganda', NULL, 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, CAST(N'2025-05-04T17:17:57.2472640' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserRole], [StudentId], [Course], [Year], [ParentName], [ParentContact], [Address], [Nationality], [EmergencyContactName], [EmergencyContactPhone], [ProfilePicture], [IdentificationType], [IdentificationNumber], [CurrentRoomNumber], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AssignmentDate], [Country], [CurrentHostelId], [IsBoarding], [IsCurrentlyInHostel], [IsTemporaryAssignment], [IsVerified], [LastCheckInTime], [LastCheckOutTime], [ProbationEndDate], [RoomId], [VerificationDate], [ApprovalDate], [ApprovedBy], [IsApproved], [RegistrationDate]) VALUES (N'ebe0f1d2-1c3f-4eb9-9bc7-5e005c085c37', N'Leroy ', N'Chirodza', N'Student', N'24\DIT\BU\R\0008', N'Information Technology', N'First Year', N'AUGUSTINE CHIRODZA', N'+27 72 868 9669', N'1933 Molebogeng Street Mothotlung', N'ZIMBABWEAN', N'Leone Chirodza', N'0766167856', N'/images/students/0623dc17-b622-4183-81c2-29091cc26e23_WhatsApp Image 2025-04-22 at 5.34.52 AM.jpeg', NULL, NULL, NULL, N'leroychirodza@gmail.com', N'LEROYCHIRODZA@GMAIL.COM', N'leroychirodza@gmail.com', N'LEROYCHIRODZA@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEOUoU5bZlbXOImJ1ygpf3B+1wUJhHPQ2Bwz3TIFlzWGSAdcRaUOOIGH72g5GUT6NZw==', N'GTQQ44A5LRXLYSR3BKSUDWT5QCMMXLAX', N'3d3b3665-f112-43ee-86c0-378ef3283b56', NULL, 0, 0, NULL, 1, 0, NULL, N'ZIMBABWE', NULL, 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2025-04-22T05:39:02.2229555' AS DateTime2), N'dean@bugema.ac.ug', 1, CAST(N'2025-04-22T05:37:50.1421130' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Bookings] ON 

INSERT [dbo].[Bookings] ([BookingId], [UserId], [RoomId], [BookingDate], [CheckInDate], [CheckOutDate], [TotalAmount], [Status], [Comments], [ApprovedBy], [ApprovalDate], [RejectionReason]) VALUES (1, N'86db4821-ac85-47c0-bedf-57951bc2758f', 7, CAST(N'2025-04-23T00:26:00.8396622' AS DateTime2), CAST(N'2025-04-23T00:00:00.0000000' AS DateTime2), CAST(N'2025-08-23T00:00:00.0000000' AS DateTime2), CAST(800000.00 AS Decimal(18, 2)), 5, N'kkkkkkkkkkkkkkkkk', NULL, NULL, NULL)
INSERT [dbo].[Bookings] ([BookingId], [UserId], [RoomId], [BookingDate], [CheckInDate], [CheckOutDate], [TotalAmount], [Status], [Comments], [ApprovedBy], [ApprovalDate], [RejectionReason]) VALUES (2, N'ebe0f1d2-1c3f-4eb9-9bc7-5e005c085c37', 7, CAST(N'2025-04-23T00:30:10.0223794' AS DateTime2), CAST(N'2025-04-23T00:00:00.0000000' AS DateTime2), CAST(N'2025-08-23T00:00:00.0000000' AS DateTime2), CAST(800000.00 AS Decimal(18, 2)), 1, N'kkkkkkkkkkk', N'2519927c-8503-4435-b824-c5de26219f45', CAST(N'2025-05-01T05:59:15.8340334' AS DateTime2), NULL)
INSERT [dbo].[Bookings] ([BookingId], [UserId], [RoomId], [BookingDate], [CheckInDate], [CheckOutDate], [TotalAmount], [Status], [Comments], [ApprovedBy], [ApprovalDate], [RejectionReason]) VALUES (3, N'd00bef25-78a1-46a0-b9e6-347c050a7f27', 7, CAST(N'2025-04-30T10:34:56.0608966' AS DateTime2), CAST(N'2025-04-30T00:00:00.0000000' AS DateTime2), CAST(N'2025-08-30T00:00:00.0000000' AS DateTime2), CAST(800000.00 AS Decimal(18, 2)), 1, N'mmmmm', N'2519927c-8503-4435-b824-c5de26219f45', CAST(N'2025-05-01T05:58:59.5249939' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Bookings] OFF
GO
SET IDENTITY_INSERT [dbo].[Hostels] ON 

INSERT [dbo].[Hostels] ([HostelId], [Name], [Location], [Description], [Gender], [Capacity], [IsActive], [WardenName], [WardenContact], [ImageUrl], [DistanceFromCampus], [ManagementType], [HostelCode], [YouTubeVideoId], [LandlordId], [WardenId]) VALUES (4, N'CLIFFORD', N'AROUND THE ROAD, LESS THEN 100METER FROM MAIN GATE', N'FEMALE HOSTEL INSIDE CAMPUS WHICH HOUSES NURSES MAJORLY AND OTHER ', 1, 100, 1, N'Mrs Betty', N'+256 700 123 456', N'/images/hostels/f02bad49-74b5-40e5-9704-f0350b24c3a3_clifford.png', CAST(0.10 AS Decimal(18, 2)), 0, N'BUH001', N'=yHRsYbULVwo', NULL, NULL)
INSERT [dbo].[Hostels] ([HostelId], [Name], [Location], [Description], [Gender], [Capacity], [IsActive], [WardenName], [WardenContact], [ImageUrl], [DistanceFromCampus], [ManagementType], [HostelCode], [YouTubeVideoId], [LandlordId], [WardenId]) VALUES (5, N'NEW GENERATION', N'KIZIRI ROAD, BUGEMA UNIVERISTY( 1KM AWARE FROM MAIN GATE)', N'first class accomodation', 2, 60, 1, N'Mr Benjamin', N'+256 77 168 2299', N'/images/hostels/ea574b7c-bb1c-4d9d-87be-ff04b84ca707_NEW GENERATION.jpg', CAST(1.00 AS Decimal(18, 2)), 1, N'BUHA001', N'=yHRsYbULVwo', NULL, NULL)
INSERT [dbo].[Hostels] ([HostelId], [Name], [Location], [Description], [Gender], [Capacity], [IsActive], [WardenName], [WardenContact], [ImageUrl], [DistanceFromCampus], [ManagementType], [HostelCode], [YouTubeVideoId], [LandlordId], [WardenId]) VALUES (6, N'BENSDOFF', N'BUGEMA UNIVERSITY', N'Inside Campus Hostel', 1, 70, 1, N'Mrs Betty', N'+256 788 947 4382', N'/images/hostels/7049eab7-be11-4803-90d4-b398eafe11ba_BENSDOF.jpeg', CAST(0.00 AS Decimal(18, 2)), 0, N'BUH002', N'=yHRsYbULVwo', NULL, NULL)
INSERT [dbo].[Hostels] ([HostelId], [Name], [Location], [Description], [Gender], [Capacity], [IsActive], [WardenName], [WardenContact], [ImageUrl], [DistanceFromCampus], [ManagementType], [HostelCode], [YouTubeVideoId], [LandlordId], [WardenId]) VALUES (7, N'ANNEX MALE -', N'BUSIKA ROAD', N'Self Contained School hostel', 0, 49, 1, N'Mr Jiga', N'+256 77 198 2022', N'/images/hostels/b55456f8-001a-4c48-acd9-dafd408061fd_annex.jpg', CAST(1.00 AS Decimal(18, 2)), 0, N'BUH003', NULL, NULL, NULL)
INSERT [dbo].[Hostels] ([HostelId], [Name], [Location], [Description], [Gender], [Capacity], [IsActive], [WardenName], [WardenContact], [ImageUrl], [DistanceFromCampus], [ManagementType], [HostelCode], [YouTubeVideoId], [LandlordId], [WardenId]) VALUES (9, N'Royal', N'near the Bugema Forest, at Kalungu', N'Best Hostel with natural view', 2, 20, 1, N'Mrs Thandy', N'+256 77 658 8976', N'/images/hostels/81c6e33d-6639-4ab2-8dde-bbb245ffbd14_IMG-20240417-WA0024.jpg', CAST(1.00 AS Decimal(18, 2)), 1, N'BUHA003', N'=yHRsYbULVwo', NULL, NULL)
INSERT [dbo].[Hostels] ([HostelId], [Name], [Location], [Description], [Gender], [Capacity], [IsActive], [WardenName], [WardenContact], [ImageUrl], [DistanceFromCampus], [ManagementType], [HostelCode], [YouTubeVideoId], [LandlordId], [WardenId]) VALUES (10, N'SJ', N'small gate Kalungu Road', N'Neat, clean and comfortable', 2, 10, 1, N'Mr Daniel', N'+256 77 858 3376', N'/images/hostels/38375f12-e1a3-4d0d-b81a-4a4ae7cb4eef_IMG-20240417-WA0035.jpg', CAST(0.50 AS Decimal(18, 2)), 1, N'BUHA004', N'=yHRsYbULVwo', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Hostels] OFF
GO
SET IDENTITY_INSERT [dbo].[Notifications] ON 

INSERT [dbo].[Notifications] ([Id], [Title], [Message], [Link], [CreatedAt], [ReadAt], [IsRead], [Type], [TargetUserId], [SenderUserId], [SenderName], [RecipientId]) VALUES (1, N'New Student Registration', N'New student LEONE CHIRODZA has registered and is awaiting approval.', N'/Student/Review/d00bef25-78a1-46a0-b9e6-347c050a7f27', CAST(N'2025-04-22T05:30:53.4027722' AS DateTime2), NULL, 0, 1, NULL, NULL, NULL, N'')
INSERT [dbo].[Notifications] ([Id], [Title], [Message], [Link], [CreatedAt], [ReadAt], [IsRead], [Type], [TargetUserId], [SenderUserId], [SenderName], [RecipientId]) VALUES (2, N'New Student Registration', N'New student Thandekile Mabuza has registered and is awaiting approval.', N'/Student/Review/39f76439-4199-4c87-a718-7c3930b8f99f', CAST(N'2025-04-22T05:33:22.6873410' AS DateTime2), NULL, 0, 1, NULL, NULL, NULL, N'')
INSERT [dbo].[Notifications] ([Id], [Title], [Message], [Link], [CreatedAt], [ReadAt], [IsRead], [Type], [TargetUserId], [SenderUserId], [SenderName], [RecipientId]) VALUES (3, N'New Student Registration', N'New student Leroy  Chirodza has registered and is awaiting approval.', N'/Student/Review/ebe0f1d2-1c3f-4eb9-9bc7-5e005c085c37', CAST(N'2025-04-22T05:37:50.6651962' AS DateTime2), NULL, 0, 1, NULL, NULL, NULL, N'')
INSERT [dbo].[Notifications] ([Id], [Title], [Message], [Link], [CreatedAt], [ReadAt], [IsRead], [Type], [TargetUserId], [SenderUserId], [SenderName], [RecipientId]) VALUES (4, N'New Student Registration', N'New student Getrude Mukyala has registered and is awaiting approval.', N'/Student/Review/86db4821-ac85-47c0-bedf-57951bc2758f', CAST(N'2025-04-22T13:16:07.4721330' AS DateTime2), NULL, 0, 1, NULL, NULL, NULL, N'')
INSERT [dbo].[Notifications] ([Id], [Title], [Message], [Link], [CreatedAt], [ReadAt], [IsRead], [Type], [TargetUserId], [SenderUserId], [SenderName], [RecipientId]) VALUES (5, N'New Student Registration', N'New student Francis Lubwanja has registered and is awaiting approval.', N'/Student/Review/ea74ae1f-f3fb-4be9-ba02-cb191c53cef3', CAST(N'2025-05-04T17:17:57.6558035' AS DateTime2), NULL, 0, 1, NULL, NULL, NULL, N'')
INSERT [dbo].[Notifications] ([Id], [Title], [Message], [Link], [CreatedAt], [ReadAt], [IsRead], [Type], [TargetUserId], [SenderUserId], [SenderName], [RecipientId]) VALUES (6, N'New Student Registration', N'New student Peter Sithole has registered and is awaiting approval.', N'/Student/Review/4bbdbce3-0c64-48a1-b48d-9631039b657e', CAST(N'2025-05-04T17:21:02.1423603' AS DateTime2), NULL, 0, 1, NULL, NULL, NULL, N'')
INSERT [dbo].[Notifications] ([Id], [Title], [Message], [Link], [CreatedAt], [ReadAt], [IsRead], [Type], [TargetUserId], [SenderUserId], [SenderName], [RecipientId]) VALUES (7, N'New Student Registration', N'New student Thembi Antony has registered and is awaiting approval.', N'/Student/Review/e77139c7-1241-4c53-a1d4-cad4cd55278b', CAST(N'2025-05-07T10:49:36.1201009' AS DateTime2), NULL, 0, 1, NULL, NULL, NULL, N'')
SET IDENTITY_INSERT [dbo].[Notifications] OFF
GO
SET IDENTITY_INSERT [dbo].[Payments] ON 

INSERT [dbo].[Payments] ([PaymentId], [BookingId], [Amount], [PaymentDate], [Method], [Status], [TransactionReference], [ReceiptNumber], [Notes], [ProofOfPaymentUrl]) VALUES (1, 1, CAST(800000.00 AS Decimal(18, 2)), CAST(N'2025-04-23T00:26:01.2846941' AS DateTime2), 2, 0, N'fgr4444444567vb', NULL, N'Payment for Unknown Hostel, Room N1', N'/uploads/payments/aa257a8c-19af-46fd-be14-6647f2a27b77_ASSIGN&EDIT.jpg')
INSERT [dbo].[Payments] ([PaymentId], [BookingId], [Amount], [PaymentDate], [Method], [Status], [TransactionReference], [ReceiptNumber], [Notes], [ProofOfPaymentUrl]) VALUES (2, 2, CAST(800000.00 AS Decimal(18, 2)), CAST(N'2025-04-23T00:30:10.0478413' AS DateTime2), 0, 1, N'fgr4444444567vb', NULL, N'Payment for Unknown Hostel, Room N1
Verified by System Administrator on 5/1/2025 5:59:15 AM', N'/uploads/payments/3eaff0b9-f66a-4141-8aaa-b1e16bdaad14_ASSIGN&EDIT.jpg')
INSERT [dbo].[Payments] ([PaymentId], [BookingId], [Amount], [PaymentDate], [Method], [Status], [TransactionReference], [ReceiptNumber], [Notes], [ProofOfPaymentUrl]) VALUES (3, 3, CAST(8000000.00 AS Decimal(18, 2)), CAST(N'2025-04-30T10:34:56.3593369' AS DateTime2), 0, 1, N'fgr4444444567vb', NULL, N'Payment for Unknown Hostel, Room N1
Verified by System Administrator on 5/1/2025 5:58:59 AM', N'/uploads/payments/adff6acb-e17b-4865-b75b-9baf68046dd0_bugema-university-logo.png')
SET IDENTITY_INSERT [dbo].[Payments] OFF
GO
SET IDENTITY_INSERT [dbo].[Rooms] ON 

INSERT [dbo].[Rooms] ([RoomId], [RoomNumber], [HostelId], [Type], [Capacity], [Description], [PricePerSemester], [Status], [CurrentOccupancy], [NeedsAttention]) VALUES (5, N'C1', 4, 0, 2, N'its a nice room', CAST(270000.00 AS Decimal(18, 2)), 2, 2, 0)
INSERT [dbo].[Rooms] ([RoomId], [RoomNumber], [HostelId], [Type], [Capacity], [Description], [PricePerSemester], [Status], [CurrentOccupancy], [NeedsAttention]) VALUES (6, N'C2', 4, 1, 4, N'ITS NICE', CAST(270000.00 AS Decimal(18, 2)), 0, 0, 0)
INSERT [dbo].[Rooms] ([RoomId], [RoomNumber], [HostelId], [Type], [Capacity], [Description], [PricePerSemester], [Status], [CurrentOccupancy], [NeedsAttention]) VALUES (7, N'N1', 5, 0, 1, N'FIRST CLASS', CAST(800000.00 AS Decimal(18, 2)), 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Rooms] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentActivities] ON 

INSERT [dbo].[StudentActivities] ([ActivityId], [UserId], [UserName], [ActivityType], [Description], [Timestamp]) VALUES (1, N'24b15807-1861-4957-ae98-026bab3acb39', N'Sample Student', N'Account Approval', N'Account approved by admin@bugema.ac.ug', CAST(N'2025-04-21T12:19:22.2183755' AS DateTime2))
INSERT [dbo].[StudentActivities] ([ActivityId], [UserId], [UserName], [ActivityType], [Description], [Timestamp]) VALUES (2, N'd00bef25-78a1-46a0-b9e6-347c050a7f27', N'LEONE CHIRODZA', N'Registration', N'Student registered in the system and awaiting approval', CAST(N'2025-04-22T05:30:53.3473734' AS DateTime2))
INSERT [dbo].[StudentActivities] ([ActivityId], [UserId], [UserName], [ActivityType], [Description], [Timestamp]) VALUES (3, N'39f76439-4199-4c87-a718-7c3930b8f99f', N'Thandekile Mabuza', N'Registration', N'Student registered in the system and awaiting approval', CAST(N'2025-04-22T05:33:22.6854513' AS DateTime2))
INSERT [dbo].[StudentActivities] ([ActivityId], [UserId], [UserName], [ActivityType], [Description], [Timestamp]) VALUES (4, N'ebe0f1d2-1c3f-4eb9-9bc7-5e005c085c37', N'Leroy  Chirodza', N'Registration', N'Student registered in the system and awaiting approval', CAST(N'2025-04-22T05:37:50.6646260' AS DateTime2))
INSERT [dbo].[StudentActivities] ([ActivityId], [UserId], [UserName], [ActivityType], [Description], [Timestamp]) VALUES (5, N'ebe0f1d2-1c3f-4eb9-9bc7-5e005c085c37', N'Leroy  Chirodza', N'Account Approval', N'Account approved by dean@bugema.ac.ug', CAST(N'2025-04-22T05:39:02.3166435' AS DateTime2))
INSERT [dbo].[StudentActivities] ([ActivityId], [UserId], [UserName], [ActivityType], [Description], [Timestamp]) VALUES (6, N'86db4821-ac85-47c0-bedf-57951bc2758f', N'Getrude Mukyala', N'Registration', N'Student registered in the system and awaiting approval', CAST(N'2025-04-22T13:16:07.4349285' AS DateTime2))
INSERT [dbo].[StudentActivities] ([ActivityId], [UserId], [UserName], [ActivityType], [Description], [Timestamp]) VALUES (7, N'86db4821-ac85-47c0-bedf-57951bc2758f', N'Getrude Mukyala', N'Room Assignment', N'Assigned to C1 in Unknown Hostel', CAST(N'2025-04-22T13:17:56.4883260' AS DateTime2))
INSERT [dbo].[StudentActivities] ([ActivityId], [UserId], [UserName], [ActivityType], [Description], [Timestamp]) VALUES (8, N'ea74ae1f-f3fb-4be9-ba02-cb191c53cef3', N'Francis Lubwanja', N'Registration', N'Student registered in the system and awaiting approval', CAST(N'2025-05-04T17:17:57.6393689' AS DateTime2))
INSERT [dbo].[StudentActivities] ([ActivityId], [UserId], [UserName], [ActivityType], [Description], [Timestamp]) VALUES (9, N'4bbdbce3-0c64-48a1-b48d-9631039b657e', N'Peter Sithole', N'Registration', N'Student registered in the system and awaiting approval', CAST(N'2025-05-04T17:21:02.1415933' AS DateTime2))
INSERT [dbo].[StudentActivities] ([ActivityId], [UserId], [UserName], [ActivityType], [Description], [Timestamp]) VALUES (10, N'4bbdbce3-0c64-48a1-b48d-9631039b657e', N'Peter Sithole', N'Account Approval', N'Account approved by admin@bugema.ac.ug', CAST(N'2025-05-04T17:33:30.2420431' AS DateTime2))
INSERT [dbo].[StudentActivities] ([ActivityId], [UserId], [UserName], [ActivityType], [Description], [Timestamp]) VALUES (11, N'39f76439-4199-4c87-a718-7c3930b8f99f', N'Thandekile Mabuza', N'Room Assignment', N'Assigned to C1 in Unknown Hostel', CAST(N'2025-05-04T18:17:06.5058896' AS DateTime2))
INSERT [dbo].[StudentActivities] ([ActivityId], [UserId], [UserName], [ActivityType], [Description], [Timestamp]) VALUES (12, N'e77139c7-1241-4c53-a1d4-cad4cd55278b', N'Thembi Antony', N'Registration', N'Student registered in the system and awaiting approval', CAST(N'2025-05-07T10:49:36.0690150' AS DateTime2))
SET IDENTITY_INSERT [dbo].[StudentActivities] OFF
GO
/****** Object:  Index [IX_Amenities_HostelId]    Script Date: 5/8/2025 8:15:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_Amenities_HostelId] ON [dbo].[Amenities]
(
	[HostelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Announcements_HostelId]    Script Date: 5/8/2025 8:15:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_Announcements_HostelId] ON [dbo].[Announcements]
(
	[HostelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 5/8/2025 8:15:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 5/8/2025 8:15:18 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 5/8/2025 8:15:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 5/8/2025 8:15:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 5/8/2025 8:15:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 5/8/2025 8:15:18 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_CurrentHostelId]    Script Date: 5/8/2025 8:15:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_CurrentHostelId] ON [dbo].[AspNetUsers]
(
	[CurrentHostelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_RoomId]    Script Date: 5/8/2025 8:15:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_RoomId] ON [dbo].[AspNetUsers]
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 5/8/2025 8:15:18 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Bookings_RoomId]    Script Date: 5/8/2025 8:15:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_Bookings_RoomId] ON [dbo].[Bookings]
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Bookings_UserId]    Script Date: 5/8/2025 8:15:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_Bookings_UserId] ON [dbo].[Bookings]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MaintenanceRequests_ReportedById]    Script Date: 5/8/2025 8:15:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_MaintenanceRequests_ReportedById] ON [dbo].[MaintenanceRequests]
(
	[ReportedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaintenanceRequests_RoomId]    Script Date: 5/8/2025 8:15:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_MaintenanceRequests_RoomId] ON [dbo].[MaintenanceRequests]
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Payments_BookingId]    Script Date: 5/8/2025 8:15:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_Payments_BookingId] ON [dbo].[Payments]
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Rooms_HostelId]    Script Date: 5/8/2025 8:15:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_Rooms_HostelId] ON [dbo].[Rooms]
(
	[HostelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Announcements] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsUrgent]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsBoarding]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsCurrentlyInHostel]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsTemporaryAssignment]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsVerified]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsApproved]
GO
ALTER TABLE [dbo].[Hostels] ADD  DEFAULT ((0)) FOR [ManagementType]
GO
ALTER TABLE [dbo].[MaintenanceRequests] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsUrgent]
GO
ALTER TABLE [dbo].[Notifications] ADD  DEFAULT (N'') FOR [RecipientId]
GO
ALTER TABLE [dbo].[Rooms] ADD  DEFAULT ((0)) FOR [CurrentOccupancy]
GO
ALTER TABLE [dbo].[Rooms] ADD  DEFAULT (CONVERT([bit],(0))) FOR [NeedsAttention]
GO
ALTER TABLE [dbo].[Amenities]  WITH CHECK ADD  CONSTRAINT [FK_Amenities_Hostels_HostelId] FOREIGN KEY([HostelId])
REFERENCES [dbo].[Hostels] ([HostelId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Amenities] CHECK CONSTRAINT [FK_Amenities_Hostels_HostelId]
GO
ALTER TABLE [dbo].[Announcements]  WITH CHECK ADD  CONSTRAINT [FK_Announcements_Hostels_HostelId] FOREIGN KEY([HostelId])
REFERENCES [dbo].[Hostels] ([HostelId])
GO
ALTER TABLE [dbo].[Announcements] CHECK CONSTRAINT [FK_Announcements_Hostels_HostelId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Hostels_CurrentHostelId] FOREIGN KEY([CurrentHostelId])
REFERENCES [dbo].[Hostels] ([HostelId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Hostels_CurrentHostelId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Rooms_RoomId] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Rooms] ([RoomId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Rooms_RoomId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_Rooms_RoomId] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Rooms] ([RoomId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_Rooms_RoomId]
GO
ALTER TABLE [dbo].[MaintenanceRequests]  WITH CHECK ADD  CONSTRAINT [FK_MaintenanceRequests_AspNetUsers_ReportedById] FOREIGN KEY([ReportedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[MaintenanceRequests] CHECK CONSTRAINT [FK_MaintenanceRequests_AspNetUsers_ReportedById]
GO
ALTER TABLE [dbo].[MaintenanceRequests]  WITH CHECK ADD  CONSTRAINT [FK_MaintenanceRequests_Rooms_RoomId] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Rooms] ([RoomId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MaintenanceRequests] CHECK CONSTRAINT [FK_MaintenanceRequests_Rooms_RoomId]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Bookings_BookingId] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Bookings] ([BookingId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Bookings_BookingId]
GO
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD  CONSTRAINT [FK_Rooms_Hostels_HostelId] FOREIGN KEY([HostelId])
REFERENCES [dbo].[Hostels] ([HostelId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [FK_Rooms_Hostels_HostelId]
GO
USE [master]
GO
ALTER DATABASE [BugemahostelMS] SET  READ_WRITE 
GO
