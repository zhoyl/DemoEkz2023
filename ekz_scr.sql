USE [alekseeva_imp1]
GO
/****** Object:  Table [dbo].[DemoCategories]    Script Date: 28.11.2023 11:26:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoCategories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_DemoCategories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DemoPostavhik]    Script Date: 28.11.2023 11:26:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoPostavhik](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DemoPostavhik] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DemoProducts]    Script Date: 28.11.2023 11:26:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoProducts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article] [nvarchar](50) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[edIzmeren] [nvarchar](50) NOT NULL,
	[cost] [int] NOT NULL,
	[sizeMax] [nchar](10) NOT NULL,
	[id_Proizvoditel] [int] NOT NULL,
	[id_Postavhik] [int] NOT NULL,
	[id_Categories] [int] NOT NULL,
	[sale] [int] NOT NULL,
	[kol] [int] NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[image] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DemoProducts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DemoProizvoditel]    Script Date: 28.11.2023 11:26:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoProizvoditel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DemoProizvoditel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DemoRole]    Script Date: 28.11.2023 11:26:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoRole](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
 CONSTRAINT [PK_DemoRole] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DemoUser]    Script Date: 28.11.2023 11:26:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[id_role] [int] NULL,
	[lastname] [nvarchar](50) NULL,
	[firstname] [nvarchar](100) NULL,
 CONSTRAINT [PK_DemoUser] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DemoCategories] ON 

INSERT [dbo].[DemoCategories] ([id], [name]) VALUES (1, N'Школьные пренадлежности')
INSERT [dbo].[DemoCategories] ([id], [name]) VALUES (2, N'Школьные принадлежности')
INSERT [dbo].[DemoCategories] ([id], [name]) VALUES (3, N'Для офиса')
INSERT [dbo].[DemoCategories] ([id], [name]) VALUES (4, N'Бумага офисная')
INSERT [dbo].[DemoCategories] ([id], [name]) VALUES (5, N'Тетради школьные')
SET IDENTITY_INSERT [dbo].[DemoCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[DemoPostavhik] ON 

INSERT [dbo].[DemoPostavhik] ([id], [name]) VALUES (1, N'Комус')
INSERT [dbo].[DemoPostavhik] ([id], [name]) VALUES (2, N'Буквоед')
SET IDENTITY_INSERT [dbo].[DemoPostavhik] OFF
GO
SET IDENTITY_INSERT [dbo].[DemoProducts] ON 

INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (1, N'А112Т4', N'Ручка шариковая', N'шт.', 12, N'30        ', 1, 1, 1, 2, 6, N'Ручка шариковая с синими чернилами,толщина стержня 7 мм', N'photo\А112Т4.jpg')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (2, N'A346R4', N'Ручка шариковая автоматическая', N'шт.', 35, N'20        ', 2, 1, 2, 3, 23, N'Ручка шариковая автоматическая с синими чернилами, диаметр шарика 0,9 мм', N'photo\A346R4.jpg')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (3, N'T564P5', N'Набор шариковых ручек одноразовых', N'уп.', 50, N'15        ', 2, 1, 2, 9, 5, N'Набор шариковых ручек одноразовых Attache Economy Spinner 10 цветов (толщина линии 0.5 мм)', N'photo\T564P5.jpg')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (4, N'B730E2', N'Ручка шариковая', N'шт.', 41, N'10        ', 3, 1, 2, 3, 45, N'Ручка шариковая одноразовая автоматическая Unimax Fab GP синяя (толщина линии 0.5 мм)', N'photo\B730E2.jpg')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (5, N'G278R6', N'Ручка шариковая', N'шт.', 15, N'30        ', 4, 2, 3, 7, 23, N'Ручка шариковая FLEXOFFICE CANDEE 0,6 мм, синяя', N'photo\G278R6.png')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (6, N'R259E6', N'Бумага офисная', N'уп.', 299, N'25        ', 5, 2, 4, 4, 32, N'Бумага офисная Svetocopy NEW A4 80г 500л', N'photo\R259E6.jpg')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (7, N'H452A3', N'Тетрадь', N'шт.', 10, N'8         ', 6, 2, 5, 3, 25, N'Тетрадь, 24 листа, Зелёная обложка Hatber/Хатбер, офсет, клетка с полями', N'photo\H452A3.png')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (8, N'A543T6', N'Ручка шариковая', N'шт.', 13, N'30        ', 8, 2, 3, 6, 12, N'Ручка шариковая Erich Krause, R-301 ORANGE 0.7 Stick, синий', N'photo\A543T6.jpg')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (9, N'F719R5', N'Папка-скоросшиватель', N'шт.', 18, N'20        ', 6, 2, 3, 3, 8, N'Папка-скоросшиватель, А4 Hatber/Хатбер 140/180мкм АССОРТИ, пластиковая с перфорацией прозрачный верх', N'photo\F719R5.jpg')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (10, N'D419T7', N'Клей-карандаш', N'шт.', 61, N'18        ', 8, 2, 3, 4, 26, N'Клей-карандаш Erich Krause 15 гр.', N'photo\D419T7.png')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (11, N'N592T4', N'Стикеры', N'уп.', 34, N'15        ', 2, 1, 3, 2, 17, N'Стикеры Attache 76x76 мм пастельные желтые (1 блок, 100 листов)', N'photo\picture.png')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (12, N'N459R6', N'Стикеры', N'уп.', 194, N'25        ', 2, 1, 3, 3, 9, N'Стикеры Attache Selection 51х51 мм неоновые 5 цветов (1 блок, 250 листов)', N'photo\picture.png')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (13, N'S276E6', N'Скрепки', N'уп.', 46, N'30        ', 7, 1, 3, 2, 14, N'Скрепки Комус металлические никелированные 33 мм (100 штук в упаковке)', N'photo\picture.png')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (14, N'S453G7', N'Скрепки', N'уп.', 21, N'15        ', 2, 1, 3, 4, 20, N'Скрепки 28 мм Attache металлические (100 штук в упаковке)', N'photo\picture.png')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (15, N'J539R3', N'Кнопки', N'уп.', 96, N'20        ', 7, 1, 3, 3, 24, N'Кнопки канцелярские Комус металлические цветные (50 штук в упаковке)', N'photo\picture.png')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (16, N'Z539E3', N'Лента клейкая', N'шт.', 16, N'15        ', 6, 2, 3, 2, 14, N'Лента клейкая 12мм*33м прозрачная, Hatber/Хатбер', N'photo\picture.png')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (17, N'A297U6', N'Ручка гелевая', N'шт.', 52, N'20        ', 8, 2, 2, 4, 18, N'Ручка гелевая ErichKrause® G-Cube®, цвет чернил черный', N'photo\picture.png')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (18, N'A567R4', N'Ручка шариковая', N'шт.', 64, N'30        ', 1, 2, 2, 2, 32, N'Шариковая ручка PILOT SuperGrip 0,7 мм синяя BPGP-10R-F-L', N'photo\picture.png')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (19, N'K932R4', N'Корректирующая лента', N'шт.', 70, N'25        ', 9, 2, 3, 3, 16, N'Корректор лента 5мм*4м, блистер, GoodMark', N'photo\picture.png')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (20, N'K345R5', N'Корректирующая лента', N'шт.', 87, N'20        ', 2, 1, 3, 3, 12, N'Корректирующая лента Attache Economy 5 мм x 5 м', N'photo\picture.png')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (21, N'K753R3', N'Корректирующая жидкость', N'шт.', 50, N'30        ', 2, 1, 2, 2, 5, N'Корректирующая жидкость (штрих) Attache быстросохнущая 20 мл', N'photo\picture.png')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (22, N'S563T6', N'Степлер', N'шт.', 231, N'25        ', 2, 1, 3, 4, 17, N'Степлер Attache 8215 до 25 листов черный', N'photo\picture.png')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (23, N'S425T6', N'Скобы', N'уп.', 25, N'20        ', 2, 1, 3, 2, 16, N'Скобы для степлера №24/6 Attache оцинкованные (1000 штук в упаковке)', N'photo\picture.png')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (24, N'A340R5', N'Маркер', N'шт.', 66, N'15        ', 9, 2, 3, 4, 27, N'Маркер перманентный GoodMark 2-х сторонний.для СD/DVD черный', N'photo\picture.png')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (25, N'A384T5', N'Тетрадь', N'уп.', 87, N'20        ', 6, 2, 2, 3, 23, N'Тетрадь, 18 листов, А5 линейка Hatber/Хатбер Серия Зеленая 10шт в блистере', N'photo\picture.png')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (26, N'K502T9', N'Карандаш-корректор', N'шт.', 70, N'25        ', 9, 2, 3, 2, 7, N'Карандаш-корректор GoodMark, морозостойкий, 8мл, металлический наконечник', N'photo\picture.png')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (27, N'S512T7', N'Скобы', N'уп.', 25, N'15        ', 9, 2, 3, 3, 32, N'Скобы №10 1000шт, к/к, GoodMark', N'photo\picture.png')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (28, N'D367R4', N'Клей ПВА', N'шт.', 26, N'20        ', 6, 2, 2, 4, 16, N'Клей ПВА 85г Hatber/Хатбер', N'photo\picture.png')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (29, N'M892R4', N'Ножницы', N'шт.', 209, N'15        ', 2, 1, 2, 5, 13, N'Ножницы 195 мм Attache с пластиковыми прорезиненными анатомическими ручками бирюзового/черного цвета', N'photo\picture.png')
INSERT [dbo].[DemoProducts] ([id], [article], [title], [edIzmeren], [cost], [sizeMax], [id_Proizvoditel], [id_Postavhik], [id_Categories], [sale], [kol], [description], [image]) VALUES (30, N'Z390R4', N'Лента клейкая', N'шт.', 195, N'20        ', 7, 1, 3, 2, 9, N'Клейкая лента упаковочная Комус 50 мм x 100 м 50 мкм прозрачная', N'photo\picture.png')
SET IDENTITY_INSERT [dbo].[DemoProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[DemoProizvoditel] ON 

INSERT [dbo].[DemoProizvoditel] ([id], [name]) VALUES (1, N'Pilot')
INSERT [dbo].[DemoProizvoditel] ([id], [name]) VALUES (2, N'Attache')
INSERT [dbo].[DemoProizvoditel] ([id], [name]) VALUES (3, N'Unimax')
INSERT [dbo].[DemoProizvoditel] ([id], [name]) VALUES (4, N'FLEXOFFICE CANDEE')
INSERT [dbo].[DemoProizvoditel] ([id], [name]) VALUES (5, N'Svetocopy')
INSERT [dbo].[DemoProizvoditel] ([id], [name]) VALUES (6, N'Hatber')
INSERT [dbo].[DemoProizvoditel] ([id], [name]) VALUES (7, N'Комус')
INSERT [dbo].[DemoProizvoditel] ([id], [name]) VALUES (8, N'Erich Krause')
INSERT [dbo].[DemoProizvoditel] ([id], [name]) VALUES (9, N'GoodMark')
SET IDENTITY_INSERT [dbo].[DemoProizvoditel] OFF
GO
SET IDENTITY_INSERT [dbo].[DemoRole] ON 

INSERT [dbo].[DemoRole] ([id], [title]) VALUES (1, N'Администратор')
INSERT [dbo].[DemoRole] ([id], [title]) VALUES (2, N'Клиент')
INSERT [dbo].[DemoRole] ([id], [title]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[DemoRole] OFF
GO
SET IDENTITY_INSERT [dbo].[DemoUser] ON 

INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (1, N'loginDEjrm2018', N'Cpb+Im', 2, N'Никифоров ', N'Всеволод Иванович')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (2, N'loginDEpxl2018', N'P6h4Jq', 1, N'Воронов ', N'Донат Никитевич')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (3, N'loginDEwgk2018', N'&mfI9l', 2, N'Игнатьева ', N'Евгения Валентиновна')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (4, N'loginDEpou2018', N'gX3f5Z', 1, N'Буров ', N'Федот Егорович')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (5, N'loginDEjwl2018', N'D4ZYHt', 3, N'Иван ', N'Семёновна')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (6, N'loginDEabf2018', N'*Tasm+', 2, N'Денисов ', N'Дамир Филатович')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (7, N'loginDEwjm2018', N'k}DJKo', 2, N'Ершов ', N'Максим Геласьевич')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (8, N'loginDEjvz2018', N'&|bGTy', 3, N'Копылов ', N'Куприян Пётрович')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (9, N'loginDEuyv2018', N'8hhrZ}', 3, N'Носов ', N'Валерьян Дмитрьевич')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (10, N'loginDExdm2018', N'DH68L9', 1, N'Силин ', N'Игорь Авдеевич')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (11, N'loginDEeiv2018', N'H*BxlS', 3, N'Дроздова ', N'Александра Мартыновна')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (12, N'loginDEfuc2018', N'VuM+QT', 2, N'Дроздов ', N'Аркадий Геласьевич')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (13, N'loginDEoot2018', N'usi{aT', 3, N'Боброва ', N'Варвара Евсеевна')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (14, N'loginDElhk2018', N'Okk0jY', 3, N'Чернова ', N'Агата Данииловна')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (15, N'loginDEazg2018', N's3bb|V', 2, N'Лыткина ', N'Ульяна Станиславовна')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (16, N'loginDEaba2018', NULL, 1, N'Лаврентьев ', N'Леонид Игнатьевич')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (17, N'loginDEtco2018', N'tTKDJB', 2, N'Кулаков ', N'Юрий Владленович')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (18, N'loginDEsyq2018', N'2QbpBN', 3, N'Соловьёв ', N'Андрей Александрович')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (19, N'loginDEpxi2018', N'+5X&hy', 2, N'Корнилова ', N'Марфа Макаровна')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (20, N'loginDEicr2018', N'3+|Sn{', 2, N'Белоусова ', N'Любовь Георгьевна')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (21, N'loginDEcui2018', N'Zi1Tth', 3, N'Анисимов ', N'Никита Гордеевич')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (22, N'loginDEpxc2018', N'G+nFsv', 2, N'Стрелкова ', N'Фаина Федосеевна')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (23, N'loginDEqrd2018', N'sApUbt', 1, N'Осипов ', N'Евгений Иванович')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (24, N'loginDEsso2018', NULL, 3, N'Владимирова ', N'Иванна Павловна')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (25, N'loginDErsy2018', N'{Aa6nS', 3, N'Кудрявцева ', N'Жанна Демьяновна')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (26, N'loginDEvpz2018', N'mS0UxK', 3, N'Матвиенко ', N'Яков Брониславович')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (27, N'loginDEfog2018', N'glICay', 2, N'Селезнёв ', N'Егор Артёмович')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (28, N'loginDEpii2018', N'Ob}RZB', 2, N'Брагин ', N'Куприян Митрофанович')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (29, N'loginDEhyk2018', N'*gN}Tc', 1, N'Гордеев ', N'Виктор Эдуардович')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (30, N'loginDEdxi2018', N'ywLUbA', 3, N'Мартынов ', N'Онисим Брониславович')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (31, N'loginDEzro2018', N'B24s6o', 3, N'Никонова ', N'Евгения Павловна')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (32, N'loginDEuxg2018', N'K8jui7', 2, N'Полякова ', N'Анна Денисовна')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (33, N'loginDEllw2018', N'jNtNUr', 2, N'Макарова ', N'Пелагея Антониновна')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (34, N'loginDEddg2018', N'gGGhvD', 1, N'Андреева ', N'Анна Вячеславовна')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (35, N'loginDEpdz2018', NULL, 2, N'Кудрявцева ', N'Кира Ефимовна')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (36, N'loginDEyiw2018', N'cnj3QR', 3, N'Шилова ', N'Кира Егоровна')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (37, N'loginDEqup2018', N'95AU|R', 1, N'Ситников ', N'Игорь Борисович')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (38, N'loginDExil2018', N'w+++Ht', 1, N'Русаков ', N'Борис Христофорович')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (39, N'loginDEkuv2018', N'Ade++|', 3, N'Капустина ', N'Ульяна Игоревна')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (40, N'loginDEmox2018', N'Je}9e7', 3, N'Беляков ', N'Семён Германнович')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (41, N'loginDEvug2018', N'lEa{Cn', 2, N'Гурьев ', N'Ириней Игнатьевич')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (42, N'loginDEzre2018', N'N*VX+G', 2, N'Мишин ', N'Христофор Леонидович')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (43, N'loginDEbes2018', N'NaVtyH', 3, N'Лазарева ', N'Антонина Христофоровна')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (44, N'loginDEkfg2018', N'r1060q', 2, N'Маркова ', N'Ираида Сергеевна')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (45, N'loginDEyek2018', N'KY2BL4', 2, N'Носкова ', N'Пелагея Валерьевна')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (46, N'loginDEloq2018', N'NZV5WR', 1, N'Баранов ', N'Станислав Дмитрьевич')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (47, N'loginDEjfb2018', N'TNT+}h', 3, N'Ефремов ', N'Демьян Артёмович')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (48, N'loginDEueq2018', N'GqAUZ6', 3, N'Константинов ', N'Всеволод Мэлсович')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (49, N'loginDEpqz2018', N'F0Bp7F', 3, N'Ситникова ', N'Ираида Андреевна')
INSERT [dbo].[DemoUser] ([id], [login], [password], [id_role], [lastname], [firstname]) VALUES (50, N'loginDEovk2018', N'JyJM{A', 1, N'Матвеев ', N'Кондрат Иванович')
SET IDENTITY_INSERT [dbo].[DemoUser] OFF
GO
ALTER TABLE [dbo].[DemoProducts]  WITH CHECK ADD  CONSTRAINT [FK_DemoProducts_DemoCategories] FOREIGN KEY([id_Categories])
REFERENCES [dbo].[DemoCategories] ([id])
GO
ALTER TABLE [dbo].[DemoProducts] CHECK CONSTRAINT [FK_DemoProducts_DemoCategories]
GO
ALTER TABLE [dbo].[DemoProducts]  WITH CHECK ADD  CONSTRAINT [FK_DemoProducts_DemoPostavhik] FOREIGN KEY([id_Postavhik])
REFERENCES [dbo].[DemoPostavhik] ([id])
GO
ALTER TABLE [dbo].[DemoProducts] CHECK CONSTRAINT [FK_DemoProducts_DemoPostavhik]
GO
ALTER TABLE [dbo].[DemoProducts]  WITH CHECK ADD  CONSTRAINT [FK_DemoProducts_DemoProizvoditel] FOREIGN KEY([id_Proizvoditel])
REFERENCES [dbo].[DemoProizvoditel] ([id])
GO
ALTER TABLE [dbo].[DemoProducts] CHECK CONSTRAINT [FK_DemoProducts_DemoProizvoditel]
GO
ALTER TABLE [dbo].[DemoUser]  WITH CHECK ADD  CONSTRAINT [FK_DemoUser_DemoRole] FOREIGN KEY([id_role])
REFERENCES [dbo].[DemoRole] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DemoUser] CHECK CONSTRAINT [FK_DemoUser_DemoRole]
GO
