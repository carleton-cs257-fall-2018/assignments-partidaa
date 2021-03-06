--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: authors; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE authors (
    id integer NOT NULL,
    last_name text,
    first_name text,
    birth_year integer,
    death_year integer
);


--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE authors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE authors_id_seq OWNED BY authors.id;


--
-- Name: brands; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE brands (
    name text,
    id text
);


--
-- Name: serving_size_unit; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE serving_size_unit (
    unit_size text,
    id integer NOT NULL
);


--
-- Name: serving_size_unit_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE serving_size_unit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: serving_size_unit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE serving_size_unit_id_seq OWNED BY serving_size_unit.id;


--
-- Name: stats; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE stats (
    item_name text,
    brand_id text,
    item_id text,
    upc double precision,
    item_type double precision,
    description text,
    ingredients text,
    calories double precision,
    calories_fat double precision,
    total_fat double precision,
    sat_fat double precision,
    trans_fat_acid double precision,
    poly_unsat_fat double precision,
    mono_unsat_fat double precision,
    cholesterol double precision,
    sodium double precision,
    total_carb double precision,
    dietary_fiber double precision,
    sugars double precision,
    protein double precision,
    vitamin_a double precision,
    vitamin_c double precision,
    calcium double precision,
    iron double precision,
    potassium double precision,
    servings_per_cont double precision,
    serving_size_qty double precision,
    serving_size_unit text,
    serving_size_grams double precision,
    metric_qty double precision,
    metric_uom text,
    images_front_full_url text,
    updated_at text,
    section_ids text,
    unit_id integer
);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY authors ALTER COLUMN id SET DEFAULT nextval('authors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY serving_size_unit ALTER COLUMN id SET DEFAULT nextval('serving_size_unit_id_seq'::regclass);


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY authors (id, last_name, first_name, birth_year, death_year) FROM stdin;
1	Gibson	William	1948	\N
\.


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('authors_id_seq', 1, true);


--
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: -
--

COPY brands (name, id) FROM stdin;
Similac	51db37c3176fe9790a899200
Stewart's	51db37b1176fe9790a8984ba
Yoplait	51db37bd176fe9790a898e85
Essential Everyday	51db37b0176fe9790a8983ec
Lancaster	51db37b7176fe9790a8989d4
From the Fields	526e6739c8e1000200000016
Wooden Shoe Cheese Co.	54734b1cf2b4991f5f7db682
Don Miguel	51db37b3176fe9790a898625
Great Value	51db37b1176fe9790a898466
Profile	546a09b186f80d902a7c084f
Kemps	51db37ca176fe9790a899838
Meijer	51db37b0176fe9790a8983e0
Giuseppe Alberti Grocery	52ceb423bba524e068000f0f
Tinkyada	51db37b8176fe9790a898b2c
Al Fresco	51db37cb176fe9790a899948
Ecce Panis	51db3806176fe9790a89af26
Tostitos	51db37c2176fe9790a8991d2
Keebler	51db37b9176fe9790a898be3
Swanson	51db37cd176fe9790a899b9e
Arnold	51db37c5176fe9790a899383
Sam's Choice	51db37ca176fe9790a8997de
Andrew & Everett	51db37b5176fe9790a8988ae
Zoglo's	51db380f176fe9790a89b1e0
Kraft	51db37b4176fe9790a8987c4
Market Day	51db37b2176fe9790a898573
Medical Weight Loss Clinic	545a52a98c56fa54160278a6
Lowes Foods	51db37b0176fe9790a8983f3
Herr's	51db37c2176fe9790a8991c3
Reese	51db37b1176fe9790a8984b9
Raisin Bran	51db37bf176fe9790a898fbf
Morning Fresh Farms	54982da9dffb5d754bfcc640
America's Choice	51db37b0176fe9790a8983ea
Safeway Kitchens	51db37b0176fe9790a8983bf
Goya	51db37b1176fe9790a89843b
Hurricane Bay	51db37c1176fe9790a8990ee
Popcorn Indiana	51db37e5176fe9790a89a5c7
Midwest Country Fare	51db37b1176fe9790a898467
Heritage Farm	51db37e9176fe9790a89a7e0
Hill Country Fare	51db37b9176fe9790a898bdc
Giant	51db37b0176fe9790a8983ef
Spartan	51db37cc176fe9790a899a4d
Detour	51db381c176fe9790a89b5ba
Juicy Juice	51db37d0176fe9790a899db2
Welch's	51db37b0176fe9790a8983f2
Fair Oaks Farms	51db37b6176fe9790a898944
Ghirardelli Chocolate	51db37c0176fe9790a89900f
Bumble Bee	51db37be176fe9790a898ef5
Gold Emblem	51db37b2176fe9790a8984d7
Borden	51db37b5176fe9790a8988dd
Hormel	51db37b6176fe9790a89899b
Meijer Organics	51db37b3176fe9790a8986e1
Truitt Brothers	51db37e1176fe9790a89a373
Monster	51db37c9176fe9790a89966f
Pepperidge Farm	51db37b2176fe9790a89857c
Rozzana	54807327c10733bc6f175476
Dove	51db37c6176fe9790a8994a4
Roman Brand	54c5abf8c44cbc0a0d918370
Sensational Sides	51db381e176fe9790a89b62a
Ronzoni	51db37d3176fe9790a899ee5
Roma Bakery	51db37c6176fe9790a89941c
Unknown	526831133203b9c3390001c8
Cape Cod	51db37c5176fe9790a8993a3
Home Dairies	51db3819176fe9790a89b4a9
Market Pantry	51db37b0176fe9790a8983f1
Hostess	51db37b9176fe9790a898c43
High Liner	51db37b2176fe9790a8985ca
Dell' Alpe	51db37cb176fe9790a899991
Trident	51db37c9176fe9790a8996c7
Herb Ox	51db37d3176fe9790a899eec
Kellogg's Eggo	54be3369463f929e29169805
Sunbeam	51db37c6176fe9790a899432
Wegmans	51db37b0176fe9790a8983be
Butter Braid	546a0930eda64c0d62056470
Kevita	51db37bd176fe9790a898ea0
De La Rosa	51db37c6176fe9790a8994a5
Dean's	51db37b9176fe9790a898bcd
Thomas'	51db37b9176fe9790a898bfb
Horizon Organic	51db37bc176fe9790a898dec
365 Everyday Value	51db37c2176fe9790a8991ad
Bossa Nova	51db37bd176fe9790a898e98
Tops	51db37b0176fe9790a8983b8
ProBar	51db37c9176fe9790a899621
Butch's	54b453995a2362207a2e5044
7-Up	51db37df176fe9790a89a28f
Appetitos	54b52e2608485b0e4e464995
Sprout Farmers Market	54efe41ec61cb7fa6ed61dac
Oh Boy Oberto	51db37d1176fe9790a899df3
Hansen's	51db37b5176fe9790a898841
jammin Nectars	51db37fa176fe9790a89abf9
Hy-Vee	51db37b0176fe9790a8983f0
Rainbow Acres Natural Food	552dbebbbcf0f9337cedba1b
Weight Watchers	51db37b3176fe9790a8986a9
Sun-Maid	51db37be176fe9790a898ecf
Nature's Own	51db37b9176fe9790a898bf4
Vigo	51db37b1176fe9790a8984c1
Rice Dream	51db37bc176fe9790a898e46
Eillien's	5466478aa772dae86152630c
Eagle Brand	51db37c3176fe9790a899241
Old Oak Farms	547dd4e03055844701f63506
M&M Meat Shops	5464c970836c82a55816587e
New York Style	51db37cb176fe9790a899866
Food Club	51db37b9176fe9790a898bd7
Martin's	51db37c6176fe9790a899402
Pasta Factory	51db37b3176fe9790a898661
Marie Callender's Grocery	52ceb0f8bba524e0680000b8
Pompeian	51db37b4176fe9790a8987ff
Crown Prince	51db37be176fe9790a898eff
Chex Mix	51db37ef176fe9790a89a938
McCormick	51db37b2176fe9790a898525
Lucerne	51db37bd176fe9790a898e8e
H-K Anderson	5537c36235bafb0e7d7bc192
Cavendish	51db37b2176fe9790a898594
Stone Mountain	51db37cf176fe9790a899ced
Food Should Taste Good	51db37e3176fe9790a89a4db
Windmill Farms Grain & Garden	54a08b9377cd7d8e5e601c61
Mrs. Budd's	51db3826176fe9790a89b77e
El Mexicano	51db37b6176fe9790a89893b
High Country Kombucha	51db37ce176fe9790a899c75
Eat Smart	51db37c2176fe9790a8991bc
Mateos	51db37c1176fe9790a899120
Divine Organics	53d7f4c4882b207a4b5243be
Hannaford	51db37b1176fe9790a898440
Parent's Choice	51db3818176fe9790a89b45a
Van de Kamp's	51db37cb176fe9790a8998a9
S&B	51db37ce176fe9790a899c64
Cali Water	55e173936b1ac4a57854c33c
Rockstar	51db37c9176fe9790a899674
Oberto	51db37d1176fe9790a899dff
Frys	546a060ceda64c0d6205638a
Wholesome Goodness	545a52d45f06a919304b001a
Optimum	51db382c176fe9790a89b860
Pressed Juicery	54eee7131b52a5fa69462d03
Raley's	51db37b1176fe9790a89846e
Nice!	51db37b1176fe9790a8984d3
La Mexicana Grocery	52ceb0e6bba524e06800002c
Carb Boom	51db37cd176fe9790a899b05
Eggo	51db37b2176fe9790a89859b
Private Selection	51db37ca176fe9790a89980c
La Duena	54c9d87fca1c9b3541c0797a
Marketside	51db37c9176fe9790a899692
Green Giant	51db37b9176fe9790a898b75
Taste of Inspirations	51db37b3176fe9790a8986a1
Goodbites	53fde027852aa5123bb6dcce
Rudy's Farm	51db37b2176fe9790a8985a6
Popcornopolis	539c866d4439661902a3d15a
The Deli Counter	51db37e7176fe9790a89a71a
ShopRite	51db37b9176fe9790a898bdb
Bread du Jour	51db37c5176fe9790a899399
Casa Cardenas	54fe80e9728292121dd4d323
My Essentials	51db37c5176fe9790a899358
Chobani	51db37bb176fe9790a898da9
Schwan's Butcher's Cut	54e299ac7704216e2658a175
Edy's	51db37e9176fe9790a89a7b2
PotatoFinger	51db37d7176fe9790a899fa7
Tofurky	51db37d2176fe9790a899e46
Campbell's	51db37c1176fe9790a89907e
Brew Pub Pizza	545b8d3b4a618f2d449d3188
Hanover	51db37c9176fe9790a8995f1
Beech-Nut	51db37c3176fe9790a8991f6
Color-a-Cookie	51db37b9176fe9790a898bad
Farmland	51db37b2176fe9790a898595
McCutcheon's	5268310d3203b9c339000120
Good Sense	51db37c9176fe9790a8995f5
Sanders	51db37c9176fe9790a899603
Red Island	51db37b2176fe9790a8984fd
Libby's	51db37b1176fe9790a898487
Cave Man	53eb774feda2225b554fe680
California Pizza Kitchen Grocery	51db37b3176fe9790a8986b6
Cafe Cremes	51db37b9176fe9790a898baa
Usana	54abffc98aeb5b0d0a6de066
Mu Mu Muesli	54fdbba9c24c51dd40e5c016
Simply To Go	5457c4580d5781691593ece2
Montchevre	51db37b7176fe9790a8989fa
DeBoles	51db37b8176fe9790a898b15
Jell-O	51db37b0176fe9790a8983d5
Stater Bros.	51db37bd176fe9790a898e92
Snak Club	51db37b1176fe9790a898429
Lea & Perrins	51db37b9176fe9790a898c1b
Shaw's	51db37b4176fe9790a898834
La Preferida	51db37bc176fe9790a898dfa
Lindt Lindor	534d35ea02a5a7910b462f64
Cascade Pride	51db37e5176fe9790a89a5bc
Season	51db37be176fe9790a898f2e
Nestle Dolcetto	54ca65276f1a024b0f9197aa
World Harbors	51db37c2176fe9790a8991a6
Back to Nature	51db37b5176fe9790a8988bb
Acme Bread	545a5281a1e8ac9e23de3608
Medi WEightloss	545ce7be90529ba36e4e1e71
Chobani Greek Yogurt	555f51fa68cd008d7af1e5a6
Barq's Diet	51db37e3176fe9790a89a46d
Fox's U-Bet	51db37c0176fe9790a89900e
Resource	51db37c9176fe9790a899653
The Pure Pantry	54072ca47f1cfd9d3a07a884
Burgers' Smokehouse	51db37e3176fe9790a89a4d3
Schiff	51db37f1176fe9790a89a9c5
Nalley	51db37b4176fe9790a8987e5
TasteTations	51db37d4176fe9790a899f12
Chef Solutions	54761f6ed6d142e27ffbd1ed
Breadsmith Grocery	51db37b8176fe9790a898af8
Our Family	51db37b0176fe9790a8983b6
Rosina	51db37b3176fe9790a898678
Archer Farms	51db37b0176fe9790a8983eb
T.G.I. Friday's	51db37b1176fe9790a898434
Rana	53cd1caa9628b8892a249f00
Salute Sante!	51db37e6176fe9790a89a6aa
180 Energy	51db37cb176fe9790a8999c0
Mantova	51db37b4176fe9790a8987d7
Philadelphia	51db37bc176fe9790a898e3a
Supremo Italiano	5501cc471f92d823593480ce
President's Choice	51db37b3176fe9790a8986b0
Go Lite!	5460ebc18e3df2917ff63341
Chef Hans'	51db37cf176fe9790a899cb8
Nasoya	51db37cb176fe9790a89987f
Musco Family Olive Co.	51db37b8176fe9790a898b4d
Gilda	51db37ff176fe9790a89ad67
Western Family	51db37cb176fe9790a8999a4
Wolfgang Puck	51db37e4176fe9790a89a555
Jenny's Cuisine	5457c49153af3d475e632af2
Labrada Nutrition	51db37b3176fe9790a898735
Rosenberger's Dairies	51db37bc176fe9790a898e4f
Texas Pete	51db37c2176fe9790a899183
Chabaso Bakery	51db37c5176fe9790a8993a9
Island Princess	547f1a4ba603b7a9696cdf19
Embasa	51db37dd176fe9790a89a0f4
AMPM	51db37c8176fe9790a8995b6
Fresh Gourmet	51db37b4176fe9790a898796
Godiva Chocolatier	51db37b3176fe9790a8986ea
Baci	51db37c6176fe9790a899467
La Croix	51db37c5176fe9790a89934b
Giant Eagle Market District	5457c0ca53af3d475e6329e8
Original	51db37cf176fe9790a899ce5
M-Azing	51db37c8176fe9790a8995d7
Tolerex	51db37c9176fe9790a89965a
CapriSun	51db3816176fe9790a89b365
Trucchi's Supermarkets	5538f8c1d578002052e739e6
J & Ds	51db37b4176fe9790a8987c2
Signature Pick 5	51db37b1176fe9790a89846d
Maple Leaf Natural Selections	553bf00dd2aa910638bbaf13
Trader Joe's	51db381b176fe9790a89b587
Morton & Bassett Spices	5564ed4e0620b94f48f419bd
Ultimate Nutrition	51db37ca176fe9790a899789
Wonka	51db37be176fe9790a898ee1
Honey Drop	54982f6b4112493933526359
Twizzlers	51db37d3176fe9790a899efd
Weber	51db37b2176fe9790a89854c
Fischer & Wieser	51db37e2176fe9790a89a461
Aah Bisto	51db37b5176fe9790a898866
Virginia Peanut Company	51db37c9176fe9790a8996a6
Gerber	51db37b6176fe9790a89896d
Jennie-O Turkey Store	51db37b3176fe9790a898644
Rancher's Reserve	51db37b8176fe9790a898aee
Orion	51db382e176fe9790a89b8db
Bonga	54072c9c7f1cfd9d3a07a881
Rowe Farms	551fae666e3c45d33db7f73a
Jfc International Inc.	51db37cf176fe9790a899c8e
Aleia's	51db37b9176fe9790a898b86
Dannon	51db37c5176fe9790a89933c
Immaculate Baking Co.	51db37b9176fe9790a898c49
It's Delish	51db37c3176fe9790a899268
Snapple	51db37b3176fe9790a898712
Pacific Gold	51db37cb176fe9790a8998aa
Comstock	51db37b1176fe9790a898476
Whole Foods	5268310f3203b9c33900015e
Brach's	51db37e7176fe9790a89a6f5
Snak King	51db37b2176fe9790a898543
La Yogurt	51db37bc176fe9790a898df6
Davis Meats	550fa3be8e6b0b9018425072
Southern Home	51db37b1176fe9790a8984b5
SunRype	51db37b0176fe9790a8983ed
Sprouts Farmers Market	5451514867447cde17be5fd8
Mama Rosie's	51db37b3176fe9790a898650
El Paso Chile Company	51db37dc176fe9790a89a08e
Nature Valley	51db37cb176fe9790a8998a7
Shenandoahs Pride	51db37bc176fe9790a898e53
Priyems Dosa Batter	5505889677b7c8f122a47f06
Bumble Bar	51db37bf176fe9790a898f53
Contadina	51db37e3176fe9790a89a4b7
Sensations	5478e7fdfb51561224943d49
Lean Pockets	51db381f176fe9790a89b66e
Black Tie	51db381b176fe9790a89b56c
Royal Dansk	51db37ba176fe9790a898cbd
Chatfield's	51db37cf176fe9790a899d3a
Stouffer's	51db37b2176fe9790a89858b
Wild Oats	51db37b0176fe9790a8983c2
Renaissance Farm	51db37b3176fe9790a898676
Atkins Advantage	51db381b176fe9790a89b579
StartKist Selects	53a02f4bab3d45464bb6877b
Roundy's Fisherman's Reserve	54bd19d0a09dabf70a684686
Fresh Express	51db37b6176fe9790a898966
Alvarado St. Bakery	51db37d1176fe9790a899e10
Safeway	51db37b0176fe9790a8983ba
Clover Valley	51db37bb176fe9790a898d7b
CJ	51db37ce176fe9790a899c5d
Kroger	51db37b9176fe9790a898bdd
Sage Valley	51db37d2176fe9790a899e8e
Sheng Kee Bakery	54fe4833ab7c0b1a68eb4489
Hampton Farms	51db37cd176fe9790a899b54
Voskos	51db37bd176fe9790a898e77
Firestone	54b52ed704e843bd19521244
HMR Entree	545ce74313fb28bc6d02a10e
Andy Boy	5453bbcbe29dd49a47880b09
Lundberg Family Farms	51db37ca176fe9790a89981a
Stephen's	51db37c0176fe9790a89903a
Lipton Beverage	51db37c9176fe9790a8996ef
HT Traders	529d0c3dae976a0000000009
Alaga	51db37e4176fe9790a89a576
Jenny Craig	51db37b3176fe9790a898733
Always Fresh, Always On	551eb12975545033054d5f03
Market Basket	51db37b1176fe9790a8984d0
Festin	51db37e0176fe9790a89a2f1
Metabolic Research Center	546b62c9ade15fe62e67f286
Bison	51db37b5176fe9790a8988d2
International Delight	51db37bc176fe9790a898deb
Pita Gourmet	54b56ec004e843bd19521560
Land O Lakes	51db37b7176fe9790a8989cb
Celestial Seasonings	51db37c4176fe9790a8992ed
Namaste Foods	51db37c3176fe9790a899289
Healthy Choice	51db37b3176fe9790a89863a
Yummy Earth	51db37be176fe9790a898ee4
Key Food	51db382d176fe9790a89b8c3
Hunter Farms	51db37bc176fe9790a898ded
Roundy's	51db37b8176fe9790a898af0
Frazier Family Foods	551eb1057af2ac495b48a3c1
New England Country Soup	51db37e0176fe9790a89a2df
Scarpetta Grocery	52ceb1eabba524e06800055e
Betty Crocker	51db37b0176fe9790a8983c7
Bachman	51db37c2176fe9790a8991b2
Magnum	51db3810176fe9790a89b215
Strathmore	51db37ef176fe9790a89a908
Martinelli's Gold MedalR	51db37c9176fe9790a8996d2
Gwaltney	51db37b2176fe9790a89859a
Crio Bru	545b9c34546fc72656d568ed
Dillions	54dcd2202c7abad33391e400
WinCo Foods	5457c38253af3d475e632a6f
Michele's	51db37ce176fe9790a899c10
CVS Pharmacy	51db37ba176fe9790a898cfa
French Bakery Inc.	554c4ed2ad93e45475aba77b
Nutrisystem	53d0085ffdb35bcf368daf5f
Tom Sturgis	51db3800176fe9790a89adf1
HCG Support Shake	55080f5847a43f8a4a0a4d17
Best Choice	51db37b1176fe9790a8984c7
Cap Candy	51db37c6176fe9790a899477
Juicy Fruit	51db37c9176fe9790a899695
O Organics	51db37b1176fe9790a898469
Pereg	51db37c6176fe9790a899414
Chompie's	51db37c5176fe9790a8993aa
Smart Ones	51db37f0176fe9790a89a99d
Laura Scudder's	51db37c9176fe9790a89970c
Yamamotoyama	51db37cf176fe9790a899cdc
Hungry Jack	51db37b9176fe9790a898b66
Smart Cuisine	54dc45874411e9fd3e66b782
Naked	51db37bc176fe9790a898e18
Devonsheer	51db37ba176fe9790a898d18
Colonial Kitchen	550204781f92d82359348256
Del Monte	51db37b0176fe9790a8983ca
Farm Fresh	51db37d7176fe9790a899fe7
Toll House	51db37c9176fe9790a8995ea
Schoep's	51db3810176fe9790a89b222
Shari Candies	51db37bd176fe9790a898ec0
Live G Free	547cd5d7e1f1478767ca0ddf
Natural Value	51db37b1176fe9790a8984af
Fischer's	51db37b6176fe9790a89894e
Devon Cream	51db37e8176fe9790a89a771
Eureka!	545a52135f06a919304affd0
Sea Best	51db37b2176fe9790a8985da
J. Skinner	51db3828176fe9790a89b7c0
Crunch Pak	51db37e4176fe9790a89a56d
Tuf	51db37e3176fe9790a89a4df
Stefano Foods	51db381b176fe9790a89b568
Sabra	51db37b3176fe9790a8986ce
Crowley	51db37bb176fe9790a898db4
Eclipse	51db37e0176fe9790a89a33e
KC Masterpiece	51db37c1176fe9790a8990fb
Cafe Bistro	526e670fc8e1000200000007
Laney Haney	56105aadcc0bbcaa197731e3
Michoacana	51db37f8176fe9790a89ab4b
GFS	5460eca4a7f2fb4538e91f52
Breakthrough Engineered Nutrition	51db37c9176fe9790a899724
Maggiano's	51db37b4176fe9790a8987cd
Mott's	51db37b5176fe9790a89884d
Vesuvio	55e6f026112130673dfb106c
Gold Medal	51db37c5176fe9790a8993c3
Scheckter's	51db37cc176fe9790a899a93
Santa Cruz	51db37c2176fe9790a8991d8
Rubicon	51db3812176fe9790a89b295
Tai Pei	51db37b3176fe9790a898696
Golden Home	5460ea84388fc43c2fa0729d
Hudsonville	51db3810176fe9790a89b212
A-Treat	550edf24222ed57433ff372a
Farmer Boy Restaurant	51db37b4176fe9790a898793
Napoleon	51db37ca176fe9790a8997d9
Signatures	5460ebd4cd31bf2c3808b6bc
Lloyd's Barbeque Company	51db37b7176fe9790a8989db
Juanita's	51db37c2176fe9790a8991c5
3-Hour Diet	51db37e5176fe9790a89a5dd
Red Baron	51db381b176fe9790a89b573
Cream-O-Land	545b8e00209f63214035eede
Alicita	51db37dc176fe9790a89a0d1
Barilla	51db37b4176fe9790a89875d
Saranac	51db37ce176fe9790a899bf9
Werner	51db3812176fe9790a89b2b1
Bolthouse Farms	51db37b9176fe9790a898b72
Entenmann's	51db37b9176fe9790a898c23
Stonemill	51db3825176fe9790a89b759
Old Orchard	51db37b2176fe9790a8985fd
Nature's Promise	51db37b1176fe9790a898468
George's Bakery	54f5b6ba6d947d10506cf2a9
Raw Revolution	51db37ca176fe9790a899843
Smithfield	51db37b2176fe9790a8985ac
Amoretti	54a2c596eebd703e1258209a
Kitchen Table Bakers	51db380a176fe9790a89b0a0
Simply Enjoy	51db37b1176fe9790a89846f
Tasty Bites	54c3089f875eeb9e61a80a41
Arizona	51db37b5176fe9790a898839
Blue Plate	51db37b4176fe9790a898763
Nabisco	51db37ba176fe9790a898c86
Black Diamond	51db37b5176fe9790a8988d1
Fratelli Beretta	51db37b6176fe9790a89895b
Old Wessex Ltd.	51db37cb176fe9790a8998d5
Mrs. Barr's Natural Foods	551f21db5b98dbc23e884f1f
Zoom	54c8170da2ba011e6faf5219
Planters	51db37b3176fe9790a898739
\.


--
-- Data for Name: serving_size_unit; Type: TABLE DATA; Schema: public; Owner: -
--

COPY serving_size_unit (unit_size, id) FROM stdin;
nf_serving_size_unit	1
fl oz	2
bar	3
container	4
cup	5
pieces	6
cup dry	7
oz	8
burrito	9
tbsp	10
packet	11
G	12
patty	13
inch slice	14
chips	15
cookies	16
can	17
franks	18
omelet	19
bag	20
box	21
g	22
package	23
empanadas	24
cups	25
slice	26
cup dry mix	27
piece	28
wafers	29
lasagna	30
slices	31
pack	32
Ml	33
cakes	34
fillet	35
cube	36
waffles	37
pierogies	38
bagel	39
mL	40
pizza	41
bottle	42
pickles	43
muffin	44
pop	45
potato	46
burger	47
tortellini	48
cobbler	49
ea	50
tsp dry mix	51
pretzels	52
pouch	53
crackers	54
stick	55
fillets	56
roll	57
rounded scoop	58
mini lemon bundt cake	59
pancakes	60
pastry cups	61
cup frozen	62
truffles	63
unit	64
cup drained	65
oz edible portion	66
sausage	67
squares	68
jar	69
cookie	70
pan fried slices	71
tsp	72
scoops	73
snack cup	74
sec spray	75
balls	76
cake	77
ml	78
tbls	79
pc	80
meatballs	81
peppers	82
olives	83
toast	84
drink box	85
teaspoon	86
croutons	87
corn dog	88
pizza snack	89
gram	90
link	91
dosa	92
tray	93
pkg	94
carton	95
cup uncooked	96
egg	97
pcs	98
leaves	99
pickle	100
tea bag	101
meal	102
bears	103
bowl	104
fried slice	105
tbsp grounds	106
gummies	107
pretzel	108
sheet	109
g dry	110
scoop	111
tablespoons	112
tbsp dry	113
panini	114
ct	115
pie	116
tablespoon	117
sandwich	118
tortillas	119
pump	120
crisps	121
dessert	122
chews	123
\.


--
-- Name: serving_size_unit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('serving_size_unit_id_seq', 123, true);


--
-- Data for Name: stats; Type: TABLE DATA; Schema: public; Owner: -
--

COPY stats (item_name, brand_id, item_id, upc, item_type, description, ingredients, calories, calories_fat, total_fat, sat_fat, trans_fat_acid, poly_unsat_fat, mono_unsat_fat, cholesterol, sodium, total_carb, dietary_fiber, sugars, protein, vitamin_a, vitamin_c, calcium, iron, potassium, servings_per_cont, serving_size_qty, serving_size_unit, serving_size_grams, metric_qty, metric_uom, images_front_full_url, updated_at, section_ids, unit_id) FROM stdin;
Green Tea, Citrus	51db37b5176fe9790a898839	51c3eb5997c3e6de73cba2aa	13008726247	2	Citrus	Performance Blend: Glutamine, L-Valine, L-Leucine, L-Iso Leucine, Wild Green Oat Extract, Rhodiola Rosea, Acetyl L Carnitine, Ginkgo Biloba, Pomegranate Extract, Taurine, Kola Nut Extract, N Acetyl L Tyrosine, Guarana, Bacopa Monniera Extract, Resveratrol, DMAE, Choline Bitartrate, Phosphatidyl Serine, Vinpocetine. Other Ingredients: Premium Brewed Green Tea Using Filtered Water, Pear Juice from Concentrate, Sugar, Apple Juice from Concentrate, Honey, Phosphatidyl Serine, Natural Flavors, Mango Puree, Citric Acid, Peach Juice from Concentrate, Beta Carotene for Color, Sucralose, Niacinamide, Gum Acacia, Acesulfame Potassium, D Calcium Pantothenate, Pyridoxine HCl, Folic Acid, Cyanocobalamin, Riboflavin, Ester Gum.	10	0	\N	\N	\N	\N	\N	\N	\N	3	\N	3	\N	0	0	0	0	\N	1	2	fl oz	57	57	g	\N	2014-11-24T20:24:24+00:00	\N	2
Energy Chews Dietary Supplement, Cherry	54c8170da2ba011e6faf5219	552548cdedaeed472195cee2	859000000000	2	\N	\N	40	5	1	\N	0	\N	\N	\N	30	8	\N	6	\N	\N	\N	\N	\N	\N	30	2	chews	\N	\N	g	https://d1r9wva3zcpswd.cloudfront.net/55254bfbde775bbb6e42475e.jpeg	2015-04-08T15:40:43+00:00	\N	123
Peanuts, Heat	51db37b3176fe9790a898739	51c36e4897c3e69de4b09145	29000075375	2	Heat	Peanuts, Peanut and/or Cottonseed Oil, Salt, Spices, Dextrose, Onion and Tomato and Garlic Powders, Yellow Corn Flour, Monosodium Glutamate (Flavor Enhancer), Paprika Extract (Vegetable Color).	290	220	25	3	0	\N	\N	0	350	9	4	2	12	0	0	4	10	\N	1	1	package	49	49	g	\N	2014-11-24T20:24:24+00:00	\N	23
Formula, Soy, for Diarrhea, Ready-to-Feed	51db37c3176fe9790a899200	51c38f5d97c3e6d3d972f08a	70074512792	2	Soy, for Diarrhea, Ready-to-Feed	Water (85.7%), Corn Syrup (4.8%), Sugar (Sucrose) (2.6%), Soy Oil (2.1%), Soy Protein Isolate (2.0%), Coconut Oil (1.4%), Soy Fiber (.77%). Less Than .5% of: Calcium Citrate, Potassium Citrate, Calcium Phosphate, Potassium Phosphate, Potassium Chloride, Mono- and Diglycerides, Soy Lecithin, Magnesium Chloride, Carrageenan, Sodium Chloride, Ascorbic Acid, Chorine Chloride, L-Methionine, Taurine, Ferrous Sulfate, M-Inositol, Zinc Sulfate, Alpha-Tocopheryl Acetate, L-Carnitine, Niacinamide, Calcium Pantothenate, Cupric Sulfate, Thiamine Chloride Hydrochloride, Vitamin A Palmitate, Riboflavin, Pyridoxine Hydrochloride, Folic Acid, Potassium Iodide, Phylloquinone, Biotin, Sodium Selenite, Vitamin D3 and Cyanocobalamin.	100	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	0	0	0	0	\N	\N	5	fl oz	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	2
Southwestern Marinade	51db37c1176fe9790a8990ee	51c3ef6d97c3e6de73cbbefb	55518206123	2	\N	Worcestershire, Raisin Paste, Vinegar, Honey, Habanero Peppers, Fructose, Papaya Puree, Key Lime Concentrate, Chipotle Powder, Cilantro and Spices.	47	0	0	0	0	\N	\N	0	47	12	0	12	0	0	1	0	2	\N	12	1	fl oz	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	2
100% Juice, Apple	51db37d0176fe9790a899db2	51d2fb56cc9bff111580dbe0	28000275259	2	Apple	Apple Juice from Concentrate (Water, Juice Concentrate), Ascorbic Acid (Vitamin C), Citric Acid.	110	0	0	\N	\N	\N	\N	\N	20	28	\N	26	0	0	120	0	0	\N	6	8	fl oz	226	226	g	\N	2014-11-24T20:24:24+00:00	\N	2
Energy Drink, Absolutely Zero	51db37c9176fe9790a89966f	5596d1f1693d7e7a0196f266	49470000	2	\N	\N	0	0	0	\N	\N	\N	\N	\N	190	2	\N	0	0	\N	\N	\N	\N	\N	2	8	fl oz	\N	240	ml	https://d1r9wva3zcpswd.cloudfront.net/5596d1f7b68f3948259e76ee.jpeg	2015-07-03T18:18:32+00:00	\N	2
Sparkling Probiotic Drink, Coconut	51db37bd176fe9790a898ea0	51d37f01cc9bff5553aaa960	853000000000	2	Sparkling, Coconut	Reverse Osmosis Purified Water, Organic KeVita Probiotic Culture (Bacillus Coagulans GBI-306086, L. Paracasei, L. Plantarum, L. Rhamnosus), Organic Coconut Water, Organic Apple Cider Vinegar, Organic Coconut Flavor, Ascorbic Acid, Organic Stevia. Gluten free.	5	\N	0	\N	\N	\N	\N	\N	45	1	\N	1	0	\N	6	\N	\N	\N	2	8	fl oz	\N	240	ml	https://d1r9wva3zcpswd.cloudfront.net/53dbc585f8ce4766300fb953.jpeg	2014-11-24T20:24:24+00:00	\N	2
Razz-Ade	51db37fa176fe9790a89abf9	51c3cc3d97c3e6d8d3b4e97a	12724000037	2	\N	Double Filtered Water, Raspberry Puree, Passion Fruit Puree, Evaporated Cane Juice, Lemon Juice Concentrate, Ascorbic Acid (Vitamin C), Citric Acid, Natural Flavor Extract, Natural Exotic Spices.	89	0	0	\N	\N	\N	\N	\N	4	21	1	20	1	0	100	0	11	\N	1.5	6	fl oz	189	189	g	\N	2014-11-24T20:24:24+00:00	\N	2
Orange Juice	51db37b1176fe9790a898440	51c3d56997c3e6d8d3b53524	41268111268	2	\N	Filtered Water, Orange Juice Concentrate.	110	0	0	\N	\N	\N	\N	\N	0	27	\N	23	1	0	110	2	0	\N	8	8	fl oz	226	226	g	\N	2014-11-24T20:24:24+00:00	\N	2
Medical Food Nutritional Formula, with Fiber for Children 1-10 Years, French Vanilla	51db37c9176fe9790a899653	51c3d01797c3e6d8d3b5091e	43900331454	2	with Fiber for Children 1-10 Years, French Vanilla	Water, Hydrolyzed Cornstarch, Sugar, Sodium and Calcium Caseinate, High Oleic Sunflower Oil, Soybean Oil, Medium Chain Triglycerides, Whey Protein Concentrate, Soy Fiber, Partially Hydrolyzed Guar Gum, Calcium Phosphate Tribasic, Potassium Citrate, Natural and Artificial Flavor, Soy Lecithin, Magnesium Phosphate Tribasic, Carrageenan, Choline Chloride, Sodium Chloride, Ascorbic Acid, Potassium Hydroxide, Taurine, M-Inositol, Ferrous Sulfate, Zinc Sulfate, Alpha Tocopheryl Acetate, Niacinamide, Calcium Pantothenate, L-Carnitine, Manganese Sulfate, Copper Gluconate, Thiamine Hydrochloride, Pyridoxine Hydrochloride, BHA/BHT (to Preserve Freshness), Riboflavin, Beta Carotene, Vitamin A Palmitate, Folic Acid, Biotin, Chromic Acetate, Potassium Iodide, Sodium Molybdate, Sodium Selenite, Phytonadione (Vitamin K1), Cholecalciferol (Vitamin D3), Cyanocobalamin (Vitamin B12).	237	0	11	\N	\N	\N	\N	\N	140	26	1	\N	7	0	40	27	18	\N	6	8	fl oz	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	2
Sparkling Water, Orange	51db37c5176fe9790a89934b	5518c2d427f56989151dde5c	73360619359	2	\N	\N	0	\N	0	\N	\N	\N	\N	\N	0	0	\N	\N	0	\N	\N	\N	\N	\N	4	8	fl oz	\N	240	ml	https://d1r9wva3zcpswd.cloudfront.net/5518df58771e2e761568c8bc.jpeg	2015-03-30T05:30:00+00:00	\N	2
French Vanilla Shake	51db381b176fe9790a89b579	53b2b00ed578af5b0c6ec197	637000000000	2	\N	Water, Milk Protein Concentrate, Sunflower Oil, Soy Protein Isolate, Natural And Artificial Flavors, Cellulose Gel, Magnesium Phosphate, Calcium Phosphate, Potassium Citrate, Sodium Hexametaphosphate, Cellulose Gum, Sucralose, Carrageenan, Vitamin Mineral Mix (Zinc Gluconate, Ferric Orthophosphate, D-L Alpha Tocopheryl Acetate, Niacinamide, Manganese Gluconate, Maltodextrin, D-Calcium Pantothenate, Beta Carotene, Pyridoxine Hydrochloride, Thiamine Hydrochloride, Riboflavin, Chromium Chloride, Folic Acid, Biotin, Potassium Iodide, Sodium Molybdate, Sodium Selenite, Vitamin K-1 And Cyanocobalamin), Salt, Acesulfame, Potassium And Sodium Ascorbate. Vitamin K 20%, Biotin 30%, Pantothenic Acid 20%, Selenium 20%, Chromium 20%, Molybdenum 20%.	160	80	9	3	0	\N	\N	10	200	2	1	1	15	0	15	40	0	270	1	11	fl oz	\N	325	ml	https://d1r9wva3zcpswd.cloudfront.net/5457d1de0d5781691593f161.jpeg	2014-11-24T20:24:24+00:00	\N	2
Diet Orange Soda	51db37b1176fe9790a8984d0	551b2d2092163c543948f1ba	49705513934	2	\N	\N	0	\N	0	\N	\N	\N	\N	\N	0	0	\N	0	0	\N	\N	\N	\N	\N	8	8	fl oz	\N	240	ml	https://d1r9wva3zcpswd.cloudfront.net/551b2db392163c543948f1da.jpeg	2015-03-31T23:28:51+00:00	\N	2
Carbonated Natural Mineral Water, Lime	51db37ef176fe9790a89a908	51c3613e97c3e69de4b028c5	15516012669	2	Lime	Water, Carbon Dioxide, Natural Lime Flavor.	0	0	0	\N	\N	\N	\N	\N	15	0	\N	\N	0	0	0	4	0	\N	6	8	fl oz	239	239	g	\N	2014-11-24T20:24:24+00:00	\N	2
Juice, White Grape	51db37c2176fe9790a8991d8	51c3722d97c3e69de4b0b3c9	36192122893	2	White Grape	Filtered Water (Sufficient to Reconstitute), Organic White Grape Juice Concentrate. Gluten free.	160	0	0	\N	\N	\N	\N	\N	20	39	\N	39	0	0	0	0	0	\N	4	8	fl oz	226	226	g	\N	2014-11-24T20:24:24+00:00	\N	2
Apple Juice	51db37b2176fe9790a8985fd	51c3cc6997c3e6d8d3b4ead9	75355114115	2	\N	Filtered Water (Only sufficient to reconstitute Apple Juice Concentrate), Apple Juice, Apple Juice Concentrate, Calcium Lactate, Ascorbic Acid (Vitamin C).	120	0	0	0	\N	\N	\N	0	25	29	0	27	0	0	200	10	2	\N	16	8	fl oz	226	226	g	\N	2014-11-24T20:24:24+00:00	\N	2
Blended Strawberry Lowfat Yogurt	51db37b0176fe9790a8983ec	528f56608c43e6311f002172	41303026434	2	\N	\N	240	20	2.5	1.5	0	\N	\N	10	130	45	0	39	10	20	4	30	0	\N	4	1	cup	227	227	g	https://d1r9wva3zcpswd.cloudfront.net/536ac3db29a0839e7408f1cb.jpeg	2014-11-24T20:24:24+00:00	\N	5
Soft Cremes, Butterscotch & Caramel	51db37b7176fe9790a8989d4	5568a873dab661451562e70f	34000103799	2	\N	\N	180	60	7	5	0	\N	\N	5	140	30	0	19	1	2	0	4	0	\N	5	7	pieces	42	42	g	https://d1r9wva3zcpswd.cloudfront.net/5568a8c5921e5a5715ed466b.jpeg	2015-05-29T17:58:30+00:00	\N	6
Porridge, Heirloom Rye, Rosemary Walnut Raisin	526e6739c8e1000200000016	54072cb47f1cfd9d3a07a887	855000000000	2	\N	\N	140	25	2.5	0	0	\N	\N	0	0	27	5	5	6	0	0	2	6	\N	10	0.5	cup dry	40	40	g	https://d1r9wva3zcpswd.cloudfront.net/540739bda67cfab13a61ab1e.jpeg	2014-11-24T20:24:24+00:00	\N	7
Burrito, Bean & Cheese	51db37b3176fe9790a898625	51c36bf997c3e69de4b07e5a	27086184035	2	Bean & Cheese	Filling: Cooked Beans (Water & Beans), Three Cheese (Pasteurized Process American Cheese, Cheddar Cheese & Monterey Jack Cheese [Cultured Pasteurized Milk, Salt, Enzymes, Natural Vegetable Coloring [Annatto and/or Apocarotenal], Water, Sodium Citrate, Milkfat, and May Contains Calcium Chloride]), Water, Green Chilies, Bell Peppers, Contains 2% or Less of: Modified Food Starch, Flavorings Including Paprika, Salt, Dehydrated Onion, Chile Pepper (Red Chile Peppers, Citric Acid), Bell Peppers (Bell Peppers, Water, Citric Acid), Guar Gum, Crushed Red Pepper. Tortilla: Enriched Flour (Bleached Wheat Flour, Niacin, Ferrous Sulfate, Thiamine Mononitrate, Riboflavin & Folic Acid), Water, Soybean Oil, Salt, Baking Powder (Sodium Bicarbonate, Sodium Aluminum Sulfate, Corn Starch, Calcium Sulfate, Monocalcium Phosphate), Emulsifier (Sodium Stearoyl Lactylate and Guar Gum), Guar Gum, Sodium Metabisulfite (Dough Conditioner).	440	120	14	6	\N	\N	\N	25	990	68	8	1	17	10	6	15	25	\N	1	1	burrito	198	198	g	\N	2014-11-24T20:24:24+00:00	\N	9
Red Wine Vinegar	51db37b1176fe9790a898466	51c5426a97c3e6efadd5c73d	78742230092	2	Fine Red Wine	Red Wine Vinegar (Diluted With Water to 5% Acidity), Potassium Metabisulfite (A Preservative).	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	10	25	1	tbsp	\N	15	ml	https://d1r9wva3zcpswd.cloudfront.net/536020be2ae36a5775c0a4e1.jpeg	2014-11-24T20:24:24+00:00	\N	10
Sweet Strawberry Smoothie	546a09b186f80d902a7c084f	54f5b6c66d947d10506cf2b1	811000000000	2	\N	\N	100	10	1	0	0	\N	\N	2.5	170	7	0	5	15	\N	\N	\N	\N	\N	7	1	packet	27	27	g	https://d1r9wva3zcpswd.cloudfront.net/54f5b92ce8ca68af0ad74b3c.jpeg	2015-03-03T13:37:48+00:00	\N	11
Fat Free Skim Milk	51db37ca176fe9790a899838	54bedbdabb3b1f112145333a	41483001023	2	\N	\N	90	0	0	0	0	\N	\N	2.5	130	13	0	12	9	10	2	30	0	\N	8	1	cup	\N	236	ml	https://d1r9wva3zcpswd.cloudfront.net/54bedc8465ef8de319a620f7.jpeg	2015-01-20T22:53:56+00:00	\N	5
Balsamic Vinaigrette	51db37b0176fe9790a8983e0	54f6974937382cb131262e9f	714000000000	2	\N	\N	100	90	10	1.5	0	\N	\N	0	370	2	0	2	0	0	0	0	0	\N	16	2	tbsp	\N	30	ml	https://d1r9wva3zcpswd.cloudfront.net/54f697e1ca74508612a62b56.jpeg	2015-03-04T05:28:02+00:00	\N	10
Benevento Croccantino Allo Strega Chocolatey Covered Hazelnuts	52ceb423bba524e068000f0f	52a637773498622d6c00d7a1	80368045226	2	\N	\N	210	110	12	5	0	\N	\N	\N	0	22	2	15	2	0	0	2	10	\N	8	2	pieces	40	40	g	https://d1r9wva3zcpswd.cloudfront.net/536b98aa10870f764b177a87.jpeg	2014-11-24T20:24:24+00:00	\N	6
Brown Rice 14 Oz, Pasta	51db37b8176fe9790a898b2c	51c543ba97c3e6efadd5d19d	30684868405	2	Pasta	Brown Rice, Rice Bran and Water.	210	15	2	0	0	\N	\N	0	15	43	2	0	4	0	0	0	4	\N	7	56	G	56	56	g	\N	2014-11-24T20:24:24+00:00	\N	12
Chicken Sausage Burgers, Hot Italian Style	51db37cb176fe9790a899948	5489b898cd11d26e3dc6ea0a	30771096988	2	\N	\N	150	80	8	2.5	0	\N	\N	75	530	2	\N	1	17	10	2	2	6	\N	4	1	patty	98	98	g	https://d1r9wva3zcpswd.cloudfront.net/5489ba45a051f633376f9372.jpeg	2014-12-11T15:37:44+00:00	\N	13
European Baguette	51db3806176fe9790a89af26	51c3ebe397c3e6de73cba709	57522750012	2	\N	Unbleached Enriched Flour (Wheat Flour, Malted Barley Flour, Niacin, Reduced Iron, Thiamine Mononitrate, Riboflavin, Folic Acid), Water, Contains Less than 2% of Each of the Following: Rice Flour, Salt, Malt Syrup, Yeast, Ascorbic Acid Added as a Dough Conditioner.	180	0	0	0	0	\N	\N	0	450	38	2	0	6	0	0	0	10	\N	6	3.5	inch slice	52	52	g	\N	2014-11-24T20:24:24+00:00	\N	14
Tortilla Chips, Thick & Hearty Rounds	51db37c2176fe9790a8991d2	51c53db597c3e6efadd5a22f	28400047760	2	Thick & Hearty Rounds	Whole Yellow Corn, Vegetable Oil (Corn, Soybean, Canola and/or Sunflower Oil), and Salt.	140	50	6	1	0	\N	\N	0	110	19	1	0	2	0	0	2	2	\N	32	10	chips	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	15
Simply Made Cookies, Butter	51db37b9176fe9790a898be3	51c53ecd97c3e6efadd5aa99	30100757344	2	Simply Made Butter	Wheat Flour, Butter (Cream, Salt), Sugar, Contains Two Percent Or Less of: Natural Flavor, Salt, Vanilla Extract, Baking Soda, Eggs, Soy Lecithin.	140	60	7	4	0	\N	\N	15	100	18	0	6	1	4	0	0	0	\N	10	2	cookies	27	27	g	https://d1r9wva3zcpswd.cloudfront.net/536aa07c29a0839e7408ebe6.jpeg	2014-11-24T20:24:24+00:00	\N	16
Chicken Breast, White Premium Chunk, in Water	51db37cd176fe9790a899b9e	51c3d46997c3e6d8d3b52d54	51000183460	2	White Premium Chunk, in Water	Cooked Chicken Breast Meat, Water, Contains Less than 2% of the Following: Modified Food Starch, Salt, Sodium Phosphates.	70	10	1	0	0	\N	\N	35	400	2	0	0	13	0	0	0	0	\N	3	1	can	85	85	g	\N	2014-11-24T20:24:24+00:00	\N	17
Bread, Premium White Enriched	51db37c5176fe9790a899383	51c54cb397c3e6efadd6186a	73410003046	2	Premium White Enriched	Unbleached Enriched Wheat Flour [Flour, Malted Barley Flour, Reduced Iron, Niacin, Thiamin Mononitrate (Vitamin B1), Riboflavin (Vitamin B2), Folic Acid], Water, Sugar, Yeast, Soybean Oil, Salt, Monoglycerides, Wheat Gluten, Calcium Propionate (Preservative), Calcium Sulfate, Datem, Natural Flavor, Soy Lecithin, Azodicarbonamide.	90	15	1	0	0	\N	\N	0	190	17	1	3	3	0	0	4	6	\N	17	33	G	33	33	g	\N	2014-11-24T20:24:24+00:00	\N	12
All Natural Chocolate Ice Cream	51db37ca176fe9790a8997de	54bae75aa240d490731896da	78742051086	2	\N	\N	260	140	16	10	0	0	0	90	70	27	0	26	5	10	0	15	0	\N	8	0.5	cup	104	104	g	https://d1r9wva3zcpswd.cloudfront.net/54bae79857935fd955938f0e.jpeg	2015-01-17T22:52:08+00:00	\N	5
Fudge Double Filled Twist & Shout Sandwich Cookies	51db37b1176fe9790a898466	52b658832dedad540e00531c	78742084749	2	\N	\N	140	50	6	2	0	2	1.5	0	115	21	0.5	13	1	0	0	0	10	85	15	2	cookies	29	29	g	https://d1r9wva3zcpswd.cloudfront.net/536b9584480d28113fe8d4f8.jpeg	2014-11-24T20:24:24+00:00	\N	16
Shredded Cheese, Mozzarella	51db37b5176fe9790a8988ae	55108550f7dc00b47f9fe53b	827000000000	2	\N	\N	80	50	6	3.5	0	\N	\N	15	170	1	0	0	8	4	0	20	0	\N	8	0.25	cup	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/55108842d24470450786f8be.jpeg	2015-03-23T21:40:18+00:00	\N	5
Hot Dogs, Savory Meatless Franks	51db380f176fe9790a89b1e0	550f88511f5f82cb1e2c2507	748000000000	2	\N	\N	120	70	8	1	0	\N	\N	0	480	7	2	0	11	0	45	4	15	\N	4	2	franks	75	75	g	https://d1r9wva3zcpswd.cloudfront.net/550f88edb9e5866a18dcffa9.jpeg	2015-03-23T03:30:53+00:00	\N	18
Cheese, Italian Three Cheese	51db37b4176fe9790a8987c4	51c364e297c3e69de4b04742	21000024698	2	Italian Three Cheese	Low-Moisture Part-Skim Mozzarella Cheese (Pasteurized Part-Skim Milk, Cheese Culture, Salt, Enzymes), Reduced Fat Provolone Cheese (Pasteurized Part-Skim Milk, Cheese Culture, Salt, Vitamin A Palmitate, Enzymes), Calcium Sulfate, Parmesan Cheese (Pasteurized Part-Skim Milk, Cheese Culture, Salt, Enzymes); Potato Starch, Cellulose Powder and Calcium Sulfate to Prevent Caking; Natamycin (a Natural Mold Inhibitor).	80	45	5	3	0	\N	\N	15	200	0	0	0	7	4	0	40	0	\N	7	0.25	cup	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	5
Mini Omelets, with Reduced Fat Cheese	51db37b2176fe9790a898573	51c3c63097c3e6d8d3b4bc8c	46025051573	2	with Reduced Fat Cheese	Egg Patty: Egg Whites, Water, Modified Corn Starch, Vegetable Oil (Corn and/or Soybean), Natural Flavors, Guar Gum, Xanthan Gum, Color (Includes Beta-Carotene). Filling: Reduced Sodium and Reduced Fat Pasteurized Process Cheddar Cheese (Cultured Milk Powder, Water, Skim Milk, Sodium Phosphate, Whey, Salt, Annatto Color, Enzymes, Vitamin A Palmitate).	60	20	2	1	0	\N	\N	5	170	2	0	1	7	15	0	0	0	\N	12	1	omelet	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	19
Fruit Drink, Mixed Berry	545a52a98c56fa54160278a6	5534fe805dee4c3e21c0636a	646000000000	2	\N	\N	60	0	0	0	0	\N	\N	0	60	1	0	0	12	0	100	0	0	\N	7	1	packet	16	16	g	https://d1r9wva3zcpswd.cloudfront.net/55350002d7d27c7b74d721a3.jpeg	2015-04-20T13:32:51+00:00	\N	11
Shredded Cheese, Mild Cheddar	51db37b0176fe9790a8983f3	55112da3760d403b50ba3ecf	742000000000	2	\N	\N	110	80	9	6	0	\N	\N	30	180	2	0	0	7	6	0	20	0	\N	12	0.25	cup	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/55112e5f760d403b50ba3f05.jpeg	2015-03-24T09:29:03+00:00	\N	5
Potato Chips, Fireman's, BBQ Chicken	51db37c2176fe9790a8991c3	51c53e3497c3e6efadd5a5b7	72600003255	2	Fireman's, BBQ Chicken	Choice Potatoes Cooked in Vegetable Oil (Contains One or More of the Following: Corn, Cottonseed, Sunflower), Salt, Sugar, Vinegar Powder (Maltodextrin, Vinegar Solids, Modified Food Starch), Monosodium Glutamate, Hot Sauce [(Aged Cayenne Peppers, Vinegar, Salt, Garlic), Maltodextrin, and Silicon Dioxide], Maltodextrin, Dehydrated Garlic, Citric Acid, Chicken Flavor (Hydrolyzed Corn Gluten, Salt, Maltodextrin, Corn Oil, Sodium Phosphate, Spices, Sucrose, Natural Flavors and Disodium Inosinate and Disodium Guanylate), Oleoresin Paprika, Natural Flavors, and spice extractive.	270	140	16	4	0	\N	\N	0	750	30	1	1	3	6	10	0	4	\N	1	1	bag	53	53	g	\N	2014-11-24T20:24:24+00:00	\N	20
Trout, Golden Smoked Fillets 3.75 Oz	51db37b1176fe9790a8984b9	51c541e897c3e6efadd5c323	30684870811	2	Golden Smoked Fillets 3.75 Oz	Trout, Olive Oil, Salt.	180	110	12	2	0	\N	\N	65	430	0	0	0	20	0	0	10	15	\N	1	79	G	79	79	g	\N	2014-11-24T20:24:24+00:00	\N	12
Raisin Bran	51db37bf176fe9790a898fbf	51c3744797c3e69de4b0c580	38000219436	2	\N	Whole Wheat, Raisins, Wheat Bran, Sugar, High Fructose Corn Syrup, Salt, Malt Flavoring, Niacinamide, Reduced Iron, Zinc Oxide, Pyridoxine Hydrochloride (Vitamin B6), Riboflavin (Vitamin B2), Thiamin Hydrochloride (Vitamin B1), Vitamin A Palmitate, Folic Acid, Vitamin B12 and Vitamin D.	140	5	1	0	0	\N	\N	0	150	34	5	13	3	8	0	0	20	280	1	1	box	43	43	g	https://d1r9wva3zcpswd.cloudfront.net/53d7f57770cc8fac3de0dce2.jpeg	2014-11-24T20:24:24+00:00	\N	21
Fancy Shredded Natural Cheese, Sharp Cheddar	54982da9dffb5d754bfcc640	555f35eead9689787a893bb8	71452392319	2	\N	\N	80	50	6	3.5	0	\N	\N	20	220	1	0	0	7	6	0	20	0	\N	8	0.25	cup	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/555f37eac8b793e33c692609.jpeg	2015-05-22T14:06:35+00:00	\N	5
Ripe Pitted Large Olives	51db37b0176fe9790a8983ea	51c4011697c3e6dfa4df3b6f	54807478326	2	\N	Ripe Olives, Water, Salt and Ferrous Gluconate (added to stabilize color).	25	20	2	\N	\N	\N	\N	0	115	0	\N	\N	0	0	0	0	0	\N	11	15	g	15	15	g	\N	2014-11-24T20:24:24+00:00	\N	22
Chicken Kiev	51db37b0176fe9790a8983bf	51c366bc97c3e69de4b0548c	21130214471	2	\N	Boneless Breast of Chicken with Rib Meat, Water, Seasoning (Sugar, Salt, Dehydrated Chicken Broth, Dehydrated Garlic, Dehydrated Onion), Sodium Phosphates. Breaded with: Bleached Wheat Flour, Dextrose, Partially Hydrogenated Soybean Oil, Ground Paprika, Salt, Nonfat Dried Milk, Leavening (Sodium Acid Pyrophosphates, Sodium Bicarbonate), Mono and Diglycerides, Natural Flavor, Spice Extractives. Filled with: Unsalted Butter (Pasteurized Cream, Lactic Acid, Diacetyl), Seasoning (Salt, Dehydrated Garlic, Sugar, Dextrose, Spices, Natural Flavorings, Annatto Extract, Oleoresin Turmeric), Chives. Battered with: Water, Enriched Bleached Wheat Flour (Wheat Flour, Niacin, Ferrous Sulfate, Thiamine Mononitrate, Riboflavin, Folic Acid), Modified Food Starch, Yellow Corn Flour, Salt, Leavening (Sodium Acid Pyrophosphates, Sodium Bicarbonate), Pre-Browned in Vegetable Oil.	360	190	21	10	\N	\N	\N	85	610	24	1	3	20	15	0	2	8	\N	14	1	package	142	142	g	\N	2014-11-24T20:24:24+00:00	\N	23
Empanadas, Beef	51db37b1176fe9790a89843b	51d2fd24cc9bff111580e826	41331090346	2	Beef	Filling: Beef, Water, Green Bell Peppers, Tomato Paste (Tomato, Salt, Citric Acid, Calcium Chloride), Textured Soy Flour, Dehydrated Onions, Stuffed Olives (Olives, Water, Pureed Pimentos, Salt, Lactic Acid, Sodium Alginate, Guar Gum, Calcium Chloride), Corn Oil, Vinegar, Pimientos, Dehydrated Garlic, Salt, Cilantro, Ham Flavor (Hydrolyzed Soy Protein, Torula Yeast, Salt, Onion Powder, Liquid Smoke), Spices, Annatto. Dough: Enriched Wheat Flour (Wheat Flour, Niacin, Iron, Thiamine Mononitrate, Riboflavin, Folic Acid), Water, Shortening (Made from Partially Hydrogenated Soybean Oil), Salt, Sugar, Dough Conditioner (Sodium Stearoyl Lactylate, Calcium Sulfate, L-Cysteine Hydrochloride), Annatto.	380	100	12	3	\N	\N	\N	15	800	58	2	1	11	0	0	8	20	\N	2	2	empanadas	135	135	g	\N	2014-11-24T20:24:24+00:00	\N	24
Aged White Cheddar Popcorn	51db37e5176fe9790a89a5c7	54072c14a67cfab13a61a59c	844000000000	2	\N	\N	150	80	9	1	0	\N	\N	5	290	14	2	2	3	0	0	4	2	\N	6.5	2.5	cups	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/540738b97f1cfd9d3a07ad88.jpeg	2014-11-24T20:24:24+00:00	\N	25
Tomatoes, Whole Peeled	51db37b1176fe9790a898467	51c3e9ef97c3e6de73cb9a40	75450810011	2	Whole Peeled	Tomatoes, Tomato Juice, Salt, Citric Acid, Calcium Chloride.	25	0	0	0	0	\N	\N	0	220	5	1	3	1	15	15	4	4	\N	3.5	0.5	cup	121	121	g	\N	2014-11-24T20:24:24+00:00	\N	5
Bologna	51db37e9176fe9790a89a7e0	5538875b43a4145306cef38f	11110974495	2	\N	\N	150	120	13	5	0	\N	\N	35	470	5	0	2	4	0	0	2	2	\N	8	1	slice	43	43	g	https://d1r9wva3zcpswd.cloudfront.net/5538878d2a3adc085d65465f.jpeg	2015-04-23T05:47:57+00:00	\N	26
Honey Sweet Corn Bread	51db37b9176fe9790a898bdc	54f49d09c33580d14fe972ce	41220277582	2	\N	\N	130	25	3	1	0	\N	\N	0	300	23	0.5	7	2	0	0	4	6	\N	5	0.25	cup dry mix	33	33	g	https://d1r9wva3zcpswd.cloudfront.net/54f49dda8eb915a942c6ad94.jpeg	2015-03-02T17:28:59+00:00	\N	27
Cheddar Cheese Twice Baked Potatoes	51db37b0176fe9790a8983ef	5485d6d0776d34ac74267064	688000000000	2	\N	\N	190	60	7	2.5	0	0	0.5	5	300	27	2	2	4	2	25	6	4	\N	2	1	piece	140	140	g	https://d1r9wva3zcpswd.cloudfront.net/5485df5c1cd9423a0bdabe66.jpeg	2014-12-08T17:26:52+00:00	\N	28
Shredded Mozzarella Cheese	51db37cc176fe9790a899a4d	5539f5cbcdbef3312fd5c462	11213380735	2	\N	\N	90	50	6	3.5	0	\N	\N	15	150	1	0	0	7	4	0	20	0	\N	32	0.25	cup	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/5539f5785c35395e6292af47.jpeg	2015-04-24T07:49:12+00:00	\N	5
Energy Bar, Chocolate Peanut Butter	51db381c176fe9790a89b5ba	51d37974cc9bff5553aa9b74	734000000000	2	Chocolate Peanut Butter	Whey Protein Crisps (Whey Protein Concentrate. Rice Flour), Caramel [Fructose, Corn Syrup Solids, Cream, Water, Inulin (Chicory Extract), Whole Milk Powder, Nonfat Dry Milk Powder, Natural Flavors, Butter, Salt, Disodium Phosphate, Lecithin], Peanuts, Inulin (Chicory Extract), Milk Chocolate Flavored Coating (Sugar, Palm Kernel Oil, Nonfat Dry Milk Solids, Cocoa Powder, Soy Lecithin, Salt, Natural Flavor), Vegetable Glycerin, Peanut Butter Drops [Sugar, Palm Kernel Oil, Partially Defatted Peanut Flour, Nonfat Dry Milk Solids, Whey Powder, Peanut Butter (Peanuts, Cottonseed and Rapeseed Oil, Dextrose, Salt and Soy Lecithin)], MicroLactin (Milk Protein Concentrate), Peanut Flour, Natural Flavors.	210	60	7	3	0	\N	\N	20	70	25	4	8	12	0	4	4	10	\N	\N	1	bar	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	3
Frozen Smoothie Kit, Blueberry Cherry Blend	51db37b0176fe9790a8983f2	5330427213fd415e0889de16	874000000000	2	\N	\N	80	10	1	0	0	\N	\N	5	70	16	2	11	2	2	25	6	2	\N	2	0.5	bag	108	108	g	https://d1r9wva3zcpswd.cloudfront.net/536101f5ce96295343205994.jpeg	2014-11-24T20:24:24+00:00	\N	20
Milk, Fat Free	51db37b6176fe9790a898944	51c3c01897c3e6d8d3b48c65	54960001034	2	Fat Free	Fat Free Milk, Vitamin A Palmitate, Vitamin D3.	90	0	0	0	0	\N	\N	3	135	13	0	13	9	10	4	30	0	\N	8	1	cup	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	5
Dark Melting Wafers	51db37c0176fe9790a89900f	54aa9fbe65bba1945977551c	748000000000	2	\N	\N	220	130	15	13	0	\N	\N	0	30	23	2	21	2	0	0	4	6	\N	22	18	wafers	41	41	g	https://d1r9wva3zcpswd.cloudfront.net/54aaaa3bb87d30c344cdba83.jpeg	2015-01-05T15:14:04+00:00	\N	29
Red Salmon, Wild Alaska Sockeye	51db37be176fe9790a898ef5	51c3edfa97c3e6de73cbb58a	86600000640	2	Wild Alaska Sockeye	Sockeye Salmon, Salt.	110	60	7	1	0	\N	\N	40	270	0	0	0	13	2	0	10	2	\N	7	0.25	cup	63	63	g	\N	2014-11-24T20:24:24+00:00	\N	5
Luxury Wafers	51db37b2176fe9790a8984d7	54f5b660ba1c053b3fa802bd	50428450987	2	\N	\N	130	40	4.5	2	0	0.5	1	0	60	22	1	11	1	0	0	0	4	\N	12	3	pieces	29	29	g	https://d1r9wva3zcpswd.cloudfront.net/54f5b7aea79a909a0a3e6fc1.jpeg	2015-03-03T13:31:27+00:00	\N	6
Punch, Pineapple Banana	51db37b5176fe9790a8988dd	51c401cc97c3e6dfa4df4099	70663001829	2	Pineapple Banana	Water, High Fructose Corn Syrup, Citric Acid, Modified Food Starch, Xanthan Gum, Corn Oil, Sodium Citrate, Natural & Artificial Flavors, Ascorbic Acid (Vitamin C), Sodium Benzoate (Preservative), Yellow 5 & 6, EDTA (to Preserve Freshness).	130	0	0	0	0	\N	\N	0	90	32	0	30	0	0	100	0	0	\N	16	1	cup	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	5
Franks, Wranglers Coarse Ground Cheese Smoked	51db37b6176fe9790a89899b	51c5435b97c3e6efadd5ce99	37600374576	2	Wranglers Coarse Ground Cheese Smoked	Pork, Pasteurized Process Cheddar Cheese (Cheddar Cheese [Pasteurized Cultured Milk, Salt, Enzymes], Milkfat, Sodium Citrate, Sodium Phosphates, Salt, Sorbic Acid [Preservative], Artificial Color, Potassium Sorbate and Natamycin [Preservatives]), Beef, Salt, Potassium Lactate, Corn Syrup, Modified Food Starch, Dextrose, Flavoring, Sodium Diacetate, Ascorbate (Vitamin C), Sodium Nitrite, Oleoresin of Paprika.	170	130	15	6	\N	\N	\N	35	610	1	0	1	7	0	15	4	2	\N	8	0	G	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	12
Extra Virgin Olive Oil	51db37b3176fe9790a8986e1	54f52a118001e26807e3e59f	709000000000	2	\N	\N	120	120	14	2	0	2	10	0	0	0	\N	\N	0	\N	\N	\N	\N	\N	33	1	tbsp	\N	15	ml	https://d1r9wva3zcpswd.cloudfront.net/54f52aa78a2763d7523d8684.jpeg	2015-03-03T03:29:44+00:00	\N	10
Garbanzo Beans	51db37e1176fe9790a89a373	51c4058897c3e6dfa4df5ba6	82225241758	2	\N	Garbanzo Beans, Water and Sea Salt.	120	20	2	0	0	\N	\N	0	135	21	6	4	7	0	2	4	10	\N	4	0.5	cup	130	130	g	\N	2014-11-24T20:24:24+00:00	\N	5
Cookie Collection, Holiday Homestyle	51db37b2176fe9790a89857c	51d2f8f0cc9bff111580cbdb	14100093695	2	Holiday Homestyle	Unbleached Enriched Wheat Flour (Flour, Niacin, Reduced Iron, Thiamine Mononitrate [Vitamin B1], Riboflavin [Vitamin B2], Folic Acid), Semi Sweet Chocolate (Sugar, Chocolate Liquor, Chocolate Liquor Processed with Alkali [Dutched], Cocoa Butter, Butter Oil, Soy Lecithin, Vanilla Extract), Sugar, Vegetable Oils (Palm and/or Interesterified and Hydrogenated Soybean and/or Hydrogenated Cottonseed), Butter, Brown Sugar (Sugar, Invert Sugar, Molasses), Cornstarch, Eggs, Contains 2 Percent or Less of: Unsulphured Molasses, Dextrose, Salt, Leavening (Baking Soda, Cream of Tartar), Spices, Nonfat Milk, Confectioner's Glaze, Yellow 5 Lake, Natural Flavors, Blue 1 Lake, Carnauba Wax, Red 3, Red 40, Yellow 6 and Blue 2.	160	60	7	3	0	\N	\N	5	75	22	1	14	2	0	0	0	6	\N	13.5	3	cookies	32	32	g	\N	2014-11-24T20:24:24+00:00	\N	16
Organic Butternut Squash Ravioli	54807327c10733bc6f175476	5480732080f3a5212a291427	400000000000	2	\N	\N	210	25	2.5	1	0	\N	\N	30	260	38	2	3	8	40	6	4	20	\N	8	1	cup	100	100	g	https://d1r9wva3zcpswd.cloudfront.net/54807b4e3f93a0887e3f5965.jpeg	2014-12-04T15:18:38+00:00	\N	5
Milk Chocolate, Smooth with Caramel	51db37c6176fe9790a8994a4	51d2f996cc9bff111580d05c	40000163992	2	Smooth with Caramel	Milk Chocolate (Sugar, Cocoa Butter, Chocolate, Skim Milk, Milkfat, Lactose, Chocolate Processed with Alkali, Soy Lecithin, Natural and Artificial Flavors), Caramel (Corn Syrup, Hydrogenated Palm Kernel Oil and/or Palm Oil, Sugar, Skim Milk, Milkfat, Lactose, Salt, Potassium Sorbate to Maintain Freshness, Artificial Flavor).	200	100	11	7	0	\N	\N	5	45	24	1	21	2	0	0	4	0	\N	4.5	5	pieces	39	39	g	\N	2014-11-24T20:24:24+00:00	\N	6
Ricotta Lasagna	54c5abf8c44cbc0a0d918370	552a3a23b23e3c5b173089d5	58329001925	2	\N	\N	300	108	12	6	0.299999999999999989	\N	\N	35	630	32	3	1	15	15	4	15	6	\N	\N	0.25	lasagna	227	227	g	https://d1r9wva3zcpswd.cloudfront.net/552a3b66e09627f94ed2985a.jpeg	2015-04-12T09:31:18+00:00	\N	30
Baked Scalloped Potatoes Sensational Sides	51db381e176fe9790a89b62a	51c5405897c3e6efadd5b6c9	71117023480	2	Baked Scalloped	Potatoes, Sauce (Milk, Cheddar, Parmesan And Romano Cheese [{Pasteurized Part-Skim Cow's Milk, Cheese Culture, Salt, Enzymes}, Annatto Color, Dextrose], Butter, Sour Cream [Pasteurized Cultured Cream], Modified Corn Starch, Salt, Onion Powder, Potassium Sorbate And Sodium Benzoate to Protect Flavor, Spice)	210	110	12	7	0	\N	\N	35	480	20	2	2	6	10	0	15	6	\N	3	0.660000000000000031	cup	140	140	g	https://d1r9wva3zcpswd.cloudfront.net/53d8f12ccc4c251f3ddf6297.jpeg	2014-11-24T20:24:24+00:00	\N	5
Linguine, 17	51db37d3176fe9790a899ee5	51c3d32d97c3e6d8d3b52305	71300000175	2	\N	Semolina (Wheat), Niacin, Iron (Ferrous Sulfate), Thiamin Mononitrate, Riboflavin, Folic Acid.	210	10	1	0	0	\N	\N	0	0	42	2	2	7	0	0	0	10	\N	8	2	oz	57	57	g	\N	2014-11-24T20:24:24+00:00	\N	8
Honey Wheat Nugget Bread	51db37c6176fe9790a89941c	51c3b78897c3e6d8d3b44b41	92417139459	2	\N	Bleached Enriched Flour (Malted Barley Flour, Niacin, Reduced Iron, Thiamine Mononitrate, Riboflavin, Folate), Water, Coarse Cracked Wheat, Yeast, Honey, High Fructose Corn Syrup, Vegetable Oil (Soybean Oil), Wheat, Gluten, Salt, Malt Syrup (Corn Syrup, Barley Malt Extract and Saccharifying Enzymes), Dough Conditioner (Flour, Diacetyl Tartaric Acid Esters of Mono & Diglycerides [DATEM], Salt, Calcium Stearoyl Lactylate [CSL], Calcium Sulfate, Contains 2% or Less of: Vegetable Shortening (Partially Hydrogenated Soybean, Cottonseed and/or Canola Oil), Ascorbic Acid, Potassium Iodate, L-Cysteine, Azodicarbonamide [ADA], Enzyme), Calcium Propionate (to Retard Spoilage), Enzyme, Ascorbic Acid.	150	20	2	0	\N	\N	\N	0	300	29	2	4	5	0	0	8	10	\N	12	2	slices	57	57	g	\N	2014-11-24T20:24:24+00:00	\N	31
Hazelnut Butter Blend, Chocolate	526831133203b9c3390001c8	55578545507a5ec8205bd6bd	18281000077	2	\N	\N	180	130	15	3	0	\N	\N	0	65	12	3	7	4	0	0	4	6	\N	1	1	pack	32	32	g	https://d1r9wva3zcpswd.cloudfront.net/555785d7507a5ec8205bd6d7.jpeg	2015-05-16T18:00:55+00:00	\N	32
Popcorn, Premium White Cheddarf Cheese	51db37c5176fe9790a8993a3	51c3649197c3e69de4b044d0	20685086656	2	Premium White Cheddarf Cheese	Popcorn, Vegetable Oil (Cottonseed Oil and/or Canola Oil), Cheddar Cheese (Milk, Salt, Cheese Culture, Enzymes), Whey, Buttermilk, Salt and Citric Acid.	170	110	12	2	\N	\N	\N	8	270	13	2	2	4	2	0	6	2	\N	3	30	g	30	30	g	\N	2014-11-24T20:24:24+00:00	\N	22
Coffee Creamer, Cinnamon Vanilla Lactose Free	51db3819176fe9790a89b4a9	51c549c597c3e6efadd600b1	26400493150	2	Cinnamon Vanilla Lactose Free	Water, Sugar, Partially Hydrogenated Soybean And Cottonseed Oil, Sodium Caseinate (A Milk Derivative), Dipotassium Phosphate, Natural & Artificial Flavor, Artificial Color (Titanium Dioxide), Datem, Polysorbate 60, Carrageenan, Beta-Carotene (For Color).	30	10	1	0	\N	\N	\N	0	0	5	0	5	0	0	0	0	0	\N	63	15	Ml	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	33
Ding Dongs	51db37b9176fe9790a898c43	51c4025597c3e6dfa4df44ca	45000003019	2	\N	Sugar, Water, Enriched Bleached Wheat Flour (Flour, Barley Malt, Ferrous Sulfate (Iron), B Vitamins (Niacin, Thiamine Mononitrate (B1j, Riboflavin (B2), Folic Acid), Partially Hydrogenated Vegetable Oils (Palm Kernel, Coconut, Palm), High Fructose Corn Syrup, Cocoa Processed with Alkali, Palm Oil, Corn Syrup, Soybean Oil, Partially Hydrogenated Vegetable and/or Animal Shortening  (Soybean, Cottonseed and/or Canola Oil, Beef Fat). Contains 2% or Less of: Modified Corn Starch, Soy Flour, DATEM, Sodium Stearoyl Lactylate, Cornstarch, Mono and Diglycerides, Soy Lecithin, Leavenings (Sodium Acid  Pyrophosphate, Baking Soda, Monocalcium Phosphate), Salt, Calcium and Sodium Caseinate, Cellulose Gum, Xanthan Gum, Polysorbate 60, Sweet Dairy Whey, Soy Protein Isolate, Glucose, Whole Eggs, Egg Yolk, Natural and Artificial Flavors (Caramel Color), Sorbic Acid (to Retain Freshness).	360	170	19	13	\N	\N	\N	10	230	47	1	36	2	0	0	2	8	\N	6	2	cakes	80	80	g	\N	2014-11-24T20:24:24+00:00	\N	34
Basil Pesto Cod	51db37b2176fe9790a8985ca	545ce6c690529ba36e4e1e1e	79300013942	2	\N	\N	180	60	6	1.5	0	\N	\N	55	460	1	0	0	28	4	10	8	2	\N	5	1	fillet	171	171	g	https://d1r9wva3zcpswd.cloudfront.net/545cebfdd43cefdf6dbf8236.jpeg	2014-11-24T20:24:24+00:00	\N	35
Muffuletta Olive Salad, Italian Style	51db37cb176fe9790a899991	55089be82f9eb842373be0d5	75462022402	2	\N	\N	37	126	14	0	\N	\N	\N	6.5	240	0.5	\N	\N	0	2	2	0	2	\N	17	1	tbsp	20	20	g	https://d1r9wva3zcpswd.cloudfront.net/55089c982d2a7d16683057c5.jpeg	2015-03-17T21:28:56+00:00	\N	10
Gum, Sugar Free, Cool Rush	51db37c9176fe9790a8996c7	51c35ecb97c3e69de4b0185c	12546076302	2	Sugar Free, Cool Rush	Sorbitol, Gum Base, Maltitol, Natural and Artificial Flavoring, Mannitol; Less than 2% of: Acacia, Acesulfame Potassium, Aspartame, BHT (to Maintain Freshness), Candelilla Wax, Glycerin, Sodium Stearate and Titanium Dioxide (Color).	5	0	0	\N	\N	\N	\N	\N	0	2	\N	0	0	0	0	0	0	\N	72	2	pieces	3	3	g	\N	2014-11-24T20:24:24+00:00	\N	6
Bouillon Cubes, Chicken Flavor	51db37d3176fe9790a899eec	51c3d85897c3e6d8d3b54d66	33600000026	2	Chicken Flavor	Salt, Sweetener (Sugar and/or Dextrose and/or Sorbitol), Hydrolyzed Corn Protein, Natural Flavor (Autolyzed Yeast Extract, Salt, Sugar, Whey Powder, Lactic Acid), Chicken Fat, Disodium Inosinate and Disodium Guanylate, Dried Chicken (Contains Natural Flavor), Parsley, Turmeric Color, Onion Powder, Celery, Garlic Powder. No MSG Added (Contains Naturally Occurring Glutamates). Gluten free.	5	0	0	\N	\N	\N	\N	\N	1100	0	\N	0	0	0	0	0	0	\N	12	1	cube	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	36
Waffles, Whole Grain	54be3369463f929e29169805	553bd4071c0097d62ef82121	94400000159	2	\N	\N	140	25	2.5	0.5	0	\N	\N	0	390	27	3	3	5	20	0	10	25	\N	5	2	waffles	70	70	g	https://d1r9wva3zcpswd.cloudfront.net/553bd489c185b221491be3ac.jpeg	2015-04-25T17:53:13+00:00	\N	37
Bread, Small	51db37c6176fe9790a899432	51c54ca197c3e6efadd617e7	77633044367	2	Small	Unbleached Enriched Wheat Flour (Flour, Malted Barley Flour, Niacin, Reduced Iron, Thiamin Mononitrate (Vitamin B1), Riboflavin (Vitamin B2), Folic Acid (A B Vitamin)], Water, High Fructose Corn Syrup, Yeast, Contains 2% Or Less of Each of The Following: Wheat Gluten, Vegetable Oil (Soybean Oil Or Canola Oil), Salt Dough Conditioners (Sodium Stearoyl Lactylate, Calcium Stearoyl-2-Lactylate, Monoglycerides, Calcium Peroxide, Datem), Soy Flour, Calcium Sulfate, Calcium Propionate (to Retard Spoilage), Monocalcium Phosphate, Yeast Food (Ammonium Sulfate).	110	10	1	0	0	\N	\N	0	200	23	1	2	4	0	0	4	8	\N	11	42	G	42	42	g	\N	2014-11-24T20:24:24+00:00	\N	12
Soda	51db37df176fe9790a89a28f	51d2fb1fcc9bff111580da4e	78000010312	2	\N	Filtered Carbonated Water, Sugar, Citric Acid, Potassium Citrate, Natural Flavors, Calcium Disodium EDTA (to Protect Flavor).	140	0	0	\N	\N	\N	\N	\N	45	39	\N	38	0	0	0	0	0	\N	6	1	bottle	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	42
Prune Juice	51db37b0176fe9790a8983f1	55097d0bb175cd8a2b5c7a1e	85239665183	2	\N	\N	180	0	0	0	0	\N	\N	0	35	42	2	23	1	0	2	2	10	\N	8	8	fl oz	\N	240	ml	https://d1r9wva3zcpswd.cloudfront.net/55097e636a5a31f869b0e799.jpeg	2015-03-18T13:32:19+00:00	\N	2
Spicy Pickles in Pretzel Coating	54b52e2608485b0e4e464995	5505c0efd7f7f1a6470ad5de	41498201586	2	\N	\N	210	110	13	1.5	0	\N	\N	0	850	22	2	4	2	0	0	0	2	\N	3	7	pickles	75	101	g	https://d1r9wva3zcpswd.cloudfront.net/55064e51563cfa6060c37166.jpeg	2015-03-16T03:30:25+00:00	\N	43
Pierogies, Spinach & Feta Cheese, Club Pack	51db37b0176fe9790a8983be	51c3f93c97c3e6dfa4df017c	77890228371	2	Spinach & Feta Cheese, Club Pack	Bleached Enriched Flour (Wheat Flour, Benzoyl Peroxide, Niacin, Iron, Thiamin Mononitrate [Vitamin B1], Riboflavin [Vitamin B2], Enzyme, Folic Acid), Fresh Potato, Water, Margarine (Canola Oil, Water, Modified Palm and Palm Kernel Oil, Salt, Whey Powder, Vegetable Mono and Diglycerides, Soya Lecithin, Sodium Benzoate [Preservative], Citric Acid, Artificial Flavor, Vitamin A Palmitate, Vitamin D3), Spinach, Feta Cheese (Pasteurized Milk, Modified Milk Ingredients, Bacterial Culture, Calcium Chloride, Enzyme, Lipase), Canola Oil, Egg White, Salt, Seasonings (Salt, Sugar, Dehydrated Onion, Hydrolyzed Soy and Corn Protein, Cornstarch, Spice, Disodium Inosinate, Disodium Guanylate), Garlic Powder.	310	60	7	1	0	\N	\N	0	480	54	3	1	8	6	15	0	20	\N	12	4	pierogies	152	152	g	\N	2014-11-24T20:24:24+00:00	\N	38
Braided Pastry, Strawberry & Cream Cheese	546a0930eda64c0d62056470	546a09712bc0b27b2a676b28	746000000000	2	\N	\N	160	50	5	3.5	0	\N	\N	20	120	25	0.5	9	3	4	0	2	6	\N	11	2	oz	57	57	g	https://d1r9wva3zcpswd.cloudfront.net/546a11992bc0b27b2a676e14.jpeg	2014-11-24T20:24:24+00:00	\N	8
Pop, Jumbo Cherry With Bubble Gum Filling	51db37c6176fe9790a8994a5	51c54a1897c3e6efadd60358	25226000108	2	Jumbo Cherry With Bubble Gum Filling	Sugar, Corn Syrup, Gum Base. Contains 2% Or Less of Citric Acid, Lactic Acid, Maltic Acid, Potassium Citrate, Sodium Lactate, Artificial Flavor, Red 40, Titanium Dioxide, Milk.	140	0	0	0	0	\N	\N	0	10	34	0	26	0	0	0	0	4	\N	25	38	G	38	38	g	\N	2014-11-24T20:24:24+00:00	\N	12
TruMoo Chocolate Lowfat Milk	51db37b9176fe9790a898bcd	54e753361000031d5225bd9a	41900072964	2	\N	\N	140	25	2.5	1.5	0	\N	\N	15	180	20	0	18	8	10	2	25	0	\N	4	1	cup	\N	240	ml	https://d1r9wva3zcpswd.cloudfront.net/54e76487e5edd80952956dd9.jpeg	2015-02-20T16:44:55+00:00	\N	5
Mini Bagels, Plain	51db37b9176fe9790a898bfb	51d3000dcc9bff111580fb4b	48121216573	2	Mini, Plain, Pre-Sliced	Unbleached Enriched Wheat Flour (Flour, Malted Barley Flour, Reduced Iron, Niacin, Thiamin Mononitrate [Vitamin B1], Riboflavin [Vitamin B2], Folic Acid), Water, Sugar, Yeast, Salt, Monoglycerides, Wheat Gluten, Preservatives (Calcium Propionate, Sorbic Acid), Cornmeal, Cellulose Gum, Xanthan Gum, Cornstarch, Soy Flour.	120	10	1	0	0	0	0	0	210	24	0.5	3	4	0	0	4	8	\N	10	1	bagel	43	43	g	https://d1r9wva3zcpswd.cloudfront.net/536ad43721f62f01209be998.jpeg	2014-11-24T20:24:24+00:00	\N	39
Cream Cheese Spread & Greek Nonfat Yogurt, Greek	51db37b0176fe9790a8983ec	54e148396145ef8f0385ac53	41303054369	2	\N	\N	60	35	4	2.5	0	\N	\N	15	95	4	0.5	3	4	2	0	6	0	\N	7	2	tbsp	32	32	g	https://d1r9wva3zcpswd.cloudfront.net/54e75fe5014162fb234f4ab6.jpeg	2015-02-20T16:25:09+00:00	\N	10
Organic Yogurt, Whole Milk, Vanilla	51db37bc176fe9790a898dec	51c3f19597c3e6de73cbce73	42365132255	2	Whole Milk, Vanilla	Organic Grade A Pasteurized Milk and Nonfat Milk, Organic Evaporated Cane Juice, Organic Vanilla Flavor, Fructan (NutraFlora, a Natural Dietary Fiber), Pectin, Live and Active Cultures: S. Thermophilus, L. Bulgaricus, L. Acidophilus, L. Casei, Bifidobacterium Longum.	220	60	6	4	0	\N	\N	25	130	32	1	31	8	6	2	30	0	\N	4	1	cup	226	226	g	\N	2014-11-24T20:24:24+00:00	\N	5
Fat Free Milk, Vitamin A & D	51db37c2176fe9790a8991ad	5522a599b4e7ef126780ab91	99482409173	2	\N	\N	90	0	0	0	0	\N	\N	5	130	13	0	12	8	10	4	30	0	\N	8	1	cup	\N	240	ml	https://d1r9wva3zcpswd.cloudfront.net/5522a608b4e7ef126780abb0.jpeg	2015-04-06T15:28:08+00:00	\N	5
Juice, Superfruit Acerola W/Mango	51db37bd176fe9790a898e98	51c5476197c3e6efadd5ee51	54906000046	2	Superfruit Acerola W/Mango	Acerola, Mango, and Orange Juices from Concentrate (Water, Juice Concentrates), Water, Mango Puree, Organic Agave Nectar, and Natural Flavors.	110	0	0	\N	\N	\N	\N	\N	15	27	1	27	0	0	1000	0	0	\N	4	240	mL	226	226	g	\N	2014-11-24T20:24:24+00:00	\N	40
Light Cream	51db37b0176fe9790a8983b8	550b77390c86b75d4312d5cf	70784026183	2	\N	\N	25	25	2.5	1.5	0	\N	\N	10	5	1	0	0	0	2	0	2	0	\N	32	1	tbsp	\N	15	ml	https://d1r9wva3zcpswd.cloudfront.net/550b786ad096291d2a2a2f1d.jpeg	2015-03-20T01:31:22+00:00	\N	10
Bar, Koka Moka	51db37c9176fe9790a899621	51d37e1acc9bff5553aaa73d	853000000000	2	Koka Moka	Oats (Organic Rolled Oats, Rolled Oats), Organic Peanut Butter, Organic Brown Rice Syrup, Organic Raisins, Organic Dates, Organic Raw Sunflower Seeds, Organic Raw Coconut, Grain Sweetened Dark Chocolate Chips (Whole Grain Malted Barley and Corn, Cocoa Powder, Soy Lecithin, Pure Natural Vanilla), Raw Cashews, Organic Rolled Rye, Raw Organic Brown Flax Seed, Raw Organic Brown Sesame Seed, Raw Almonds, Organic Evaporated Cane Juice, Pineapple, Papaya, Organic Evaporated Cane Juice, Pineapple, Papaya, Organic Soy Oil, Expeller Pressed Canola Oil, Cocoa Powder, Natural Coffee Flavor, Raw Brazil Nuts, Raw Pumpkin Seed, Organic Brown Crisp Rice (Organic Brown Rice Flour, Organic Molasses, Sea Salt), Corn Flakes (Milled Corn, Barley Malt Syrup), Oat Bran, Organic Oat Solids, Hemp Seed, Apples, Epazote Leaf, Organic Cardamom Seed, Organic Fennel Seed, Organic Fenugreek Seed, Organic Nutmeg, Natural Orange Oil, Natural Vitamin E. All Natural Product May Contain Pit Pieces, Nutshells and Other Organic Matter. Allergy Information: Product Contains Peanuts, Almonds, Cashews, Brazil Nuts, Soy.	360	170	18	5	0	\N	\N	0	30	46	6	24	9	0	0	6	15	\N	1	85	G	85	85	g	\N	2014-11-24T20:24:24+00:00	\N	12
Pizza, White Garlic	54b453995a2362207a2e5044	54da12e8fe0469812a1a0a02	83554085617	2	\N	\N	300	170	19	6	\N	\N	\N	35	470	20	0.5	2	14	6	0	30	2	\N	2	0.5	pizza	99	99	g	https://d1r9wva3zcpswd.cloudfront.net/54de648bbe7a8d55043bb494.jpeg	2015-02-13T20:54:35+00:00	\N	41
Organic, Yellow Cling Sliced Peaches	54efe41ec61cb7fa6ed61dac	551c0e1464a32c8a2d3a1065	875000000000	2	\N	\N	50	0	0	0	0	\N	\N	0	10	12	0	11	0	20	10	0	4	\N	3.5	0.5	cup	122	122	g	https://d1r9wva3zcpswd.cloudfront.net/551c0f268648a07122fad761.jpeg	2015-04-01T15:30:46+00:00	\N	5
Beef Jerky, Teriyaki	51db37d1176fe9790a899df3	51c36da097c3e69de4b08c40	28400077811	2	Teriyaki	Beef, Soy Sauce (Water, Salt, Soybean, Corn, Sugar, Glucose Syrup), Brown Sugar, Corn Syrup, Water, Wine, Flavorings, Salt, Natural Smoke Flavor, Sodium Nitrite.	130	10	1	1	0	\N	\N	15	730	12	0	8	19	0	0	2	15	\N	\N	1	package	48	48	g	\N	2014-11-24T20:24:24+00:00	\N	23
Smoothie, Tropical Passion	51db37b5176fe9790a898841	51c3cc3097c3e6d8d3b4e90e	70847823056	2	\N	Filtered Water, Apple, Pineapple, and Orange Juice Concentrates, High Fructose Corn Syrup, Passion Fruit Juice Concentrate, Banana and Guava Purees, Natural Fruit Flavors, Citric Acid, Natural Gums, Natural Colors, Vitamin C, White Grape Juice Concentrate, Vitamin E, Vitamin A.	120	0	0	\N	\N	\N	\N	0	30	29	\N	29	0	100	100	2	8	\N	1.5	8	oz	226	226	g	\N	2014-11-24T20:24:24+00:00	\N	8
Simmer Sauce, Butter Chicken	51db37b0176fe9790a8983f0	55f0808f5a06cff62e0d8b80	75450121520	2	\N	\N	140	80	9	5	0	\N	\N	30	680	13	2	9	2	15	2	4	6	\N	3	0.5	cup	\N	120	ml	https://d1r9wva3zcpswd.cloudfront.net/55f07f180d0e1db1126b7296.jpeg	2015-09-09T18:48:56+00:00	\N	5
Peanut Butter Powder	552dbebbbcf0f9337cedba1b	55918e2703a3191618fae46f	723000000000	2	\N	\N	45	13	1.5	0	0	\N	\N	0.0100000000000000002	94	5	2	1	5	0.5	0	0.5	0	\N	37	2	tbsp	12	12	g	https://d1r9wva3zcpswd.cloudfront.net/55918f87d6f631d2596dc818.jpeg	2015-06-29T18:33:43+00:00	\N	10
Double Chocolate Muffin	51db37b3176fe9790a8986a9	51d37e59cc9bff5553aaa824	900000000000	2	Double Chocolate	Enriched Wheat Flour (Flour, Malted Barley Flour, Niacin, Reduced Iron, Thiamine Mononitrate, Riboflavin, Folic Acid), Sugar, Polydextrose, Invert Sugar, Whole Eggs, Glycerin, Egg Whites, Semi-Sweet Chocolate Chips (Sugar, Chocolate Liquor, Cocoa Butter, Dextrose, Soy Lecithin, Vanillin {Artificial Flavor}), Cocoa Processed with Alkali, Soybean Oil, Food Starch-Modified, Corn Syrup Solids, Leavening (Baking Soda, Sodium Aluminum Phosphate, Monocalcium Phosphate, Sodium Acid Pyrophosphate), Aluminum Sulfate, Water, Nonfat Dry Milk, Salt, Mono and Diglycerides, Dextrose, Dextrin, Soy Lecithin, Potassium Sorbate and Sodium Propionate (as Preservatives), Xanthan Gum, Natural and Artificial Flavor, Propylene Glycol Mono & Diesters of Fatty Acids, DATEM, Sodium Stearoyl Lactylate, Carnauba Wax, Corn Starch, Arabic Gum, Tricalcium Phosphate, Caramel Color, Citric Acid, Ascorbic Acid (as Dough Conditioner).	160	25	3	1	0	\N	\N	15	230	35	6	15	3	0	0	2	6	\N	0	1	muffin	54.7000000000000028	54.7000000000000028	g	https://d1r9wva3zcpswd.cloudfront.net/53d25536f9377ff0493d5f4c.jpeg	2014-11-24T20:24:24+00:00	\N	44
Trail Mix Premium Cookies	51db37be176fe9790a898ecf	54a2c47f33ef904844b30836	31535548088	2	\N	\N	120	50	6	0.5	0	\N	\N	0	65	16	0.5	8	2	4	0	0	4	\N	3	29	g	29	29	g	https://d1r9wva3zcpswd.cloudfront.net/54a2c6d9eebd703e1258210f.jpeg	2014-12-30T15:38:01+00:00	\N	22
Oatmeal Toasters, Cranberry Orange	51db37b9176fe9790a898bf4	51d379f3cc9bff5553aa9ca2	72250030663	2	Cranberry Orange	Whole Wheat Flour, Water, Dried Cranberry Bits (Cranberries, Sugar, Sunflower Oil), Rolled Oats, Brown Sugar, Yeast, Sugar, Contains 2% Or Less of The Following.	160	15	1	0	0	\N	\N	0	210	35	4	9	5	0	0	2	10	\N	8	64	G	64	64	g	\N	2014-11-24T20:24:24+00:00	\N	12
Authentic Red Beans & Rice	51db37b1176fe9790a8984c1	54ede9b4b682a26b696e390a	71072019016	2	\N	\N	190	0	1	0	0	\N	\N	0	730	40	4	2	7	0	0	4	15	\N	3	0.330000000000000016	cup dry	56	56	g	https://d1r9wva3zcpswd.cloudfront.net/54edea7bb682a26b696e3934.jpeg	2015-02-25T15:30:04+00:00	\N	7
Enrichie Vanille	51db37bc176fe9790a898e46	55089beb2f9eb842373be0d6	84253233187	2	\N	\N	140	22.5	2.5	0	0	0.299999999999999989	2	0	70	29	0	11	0.400000000000000022	10	0	30	2	\N	\N	1	cup	\N	250	ml	https://d1r9wva3zcpswd.cloudfront.net/55089cfaa586f84224aa639d.jpeg	2015-03-17T21:30:34+00:00	\N	5
Fruit'n Yogurt Snacks, Blueberry	51db37b0176fe9790a8983f2	5568fd167ba1bdd7399a1b6a	3484258	2	\N	\N	100	20	2	2	0	\N	\N	\N	70	22	\N	15	0.5	25	100	10	0	\N	4	20	pieces	30	30	g	https://d1r9wva3zcpswd.cloudfront.net/5568fe727d12864a321616fe.jpeg	2015-05-30T00:04:02+00:00	\N	6
Assorted Lollies	5466478aa772dae86152630c	55ccc836a4eaf49a73233c0f	34952560633	2	\N	\N	30	0	0	0	0	\N	\N	0	0	7	0	7	0	0	0	0	0	\N	56	1	pop	8	8	g	https://d1r9wva3zcpswd.cloudfront.net/55ccca92d5c813855a8a1b8e.jpeg	2015-08-13T16:49:22+00:00	\N	45
Milk, Sweetened Condensed, Low Fat	51db37c3176fe9790a899241	51c38fe897c3e6d3ebc5c430	52729102138	2	Sweetened Condensed, Low Fat	Concentrated Whole Milk, Concentrated Nonfat Milk, Sugar, Vitamin A Palmitate.	120	15	1	1	0	\N	\N	5	40	24	0	24	3	2	0	10	0	\N	10	2	tbsp	40	40	g	\N	2014-11-24T20:24:24+00:00	\N	10
Michigan Russet Potatoes	547dd4e03055844701f63506	54ef3b62e620eb092cdbb7e0	826000000000	2	\N	\N	110	0	0	0	0	\N	\N	0	0	26	2	1	3	0	45	2	6	\N	\N	1	potato	148	148	g	https://d1r9wva3zcpswd.cloudfront.net/54ef3c43d3422d1d22db78bd.jpeg	2015-02-26T15:31:15+00:00	\N	46
Stuffed Ham and Swiss Chicken Burgers	5464c970836c82a55816587e	548f0bdfe1928e5266156723	662000000000	2	\N	\N	290	153	17	7	0.299999999999999989	\N	\N	80	610	1	1	0	33	6	0	15	0	\N	\N	1	burger	170	170	g	https://d1r9wva3zcpswd.cloudfront.net/548f129de684eb8d120e73a9.jpeg	2014-12-15T16:55:57+00:00	\N	47
French Artisan Rolls	51db37b0176fe9790a8983ef	555108a67ce194cc23122f52	688000000000	2	\N	\N	140	0	0	0	0	0	0	0	280	28	1	0	4	0	0	0	10	\N	8	1	roll	51	51	g	https://d1r9wva3zcpswd.cloudfront.net/555109aefbe9f142769305cc.jpeg	2015-05-11T19:57:35+00:00	\N	57
Bagel Crisps, Roasted Garlic	51db37cb176fe9790a899866	51d2f9c8cc9bff111580d1c6	81363001002	2	Original, Roasted Garlic	Wheat Flour, Palm Oil, Salt, Garlic Powder, Sugar, Oat Fiber, Vinegar, Yeast, Malted Barley Flour, Beta Carotene (Color), Soy Lecithin.	120	40	4.5	2	0	\N	\N	0	250	18	1	1	3	0	0	0	2	\N	7	6	chips	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/5360216525b29d1111f071dd.jpeg	2014-11-24T20:24:24+00:00	\N	15
Fruit Salad, Tropical	51db37b9176fe9790a898bd7	51c3728097c3e69de4b0b68b	36800064591	2	Tropical	Papaya (Red & Yellow), Pineapple, Water, Sugar, Citric Acid, Ascorbic Acid (Vitamin C) to Protect Color and Natural Flavor.	70	0	0	0	0	\N	\N	0	10	17	1	16	0	4	100	0	0	\N	4	1	cup	113	113	g	\N	2014-11-24T20:24:24+00:00	\N	5
1% Lowfat Milk	51db37c6176fe9790a899402	54efffe5f835ee19626db8cb	659000000000	2	\N	\N	100	20	2.5	1.5	0	\N	\N	15	120	11	0	11	8	10	2	30	0	\N	16	1	cup	\N	240	ml	https://d1r9wva3zcpswd.cloudfront.net/54f0005e8f511904206c9950.jpeg	2015-02-27T05:27:58+00:00	\N	5
Tri-Color Cheese Tortellini	51db37b3176fe9790a898661	51c3c75c97c3e6d8d3b4c40e	58249800288	2	\N	Durum Wheat, Ricotta Cheese (Pasteurized Whey, Cream, Vinegar & Salt), Eggs, Water, Bread Crumbs (High Gluten Flour, Water, Salt, Yeast, Vegetable Shortening, Soybeans, Cottonseed Oil), Spinach, Romano Cheese (Pasteurized Cow's Milk, Culture, Rennet, Salt), Tomato Paste, Parmesan Cheese (Part Skim Cow's Milk, Cheese Cultures, Salt, Rennet), Soybean Oil, Parsley, Salt, Spinach Powder, Tomato Powder, Margarine (Liquid Soybean Oil, Partially Hydrogenated Soybean Oil, Water, Salt, Soy Lecithin, Vegetable Mono & Diglycerides, Potassium Sorbate and Citric Acid Added as Preservatives, Artificially Flavored, Colored with Beta Carotene, Vitamin A Palmitate Added), Beet Powder, Sugar, Spices.	260	50	6	2	\N	\N	\N	50	270	41	0	0	11	10	4	10	15	\N	4.5	24	tortellini	101	101	g	\N	2014-11-24T20:24:24+00:00	\N	48
Blackberry Cobbler	52ceb0f8bba524e0680000b8	51c3f6d297c3e6de73cbeb3c	12781401501	2	\N	Filling: Marion Blackberries, Sugar, Water, Apples, Modified Food Starch, Corn Starch, Salt. Crust: Enriched Wheat Flour (Flour, Niacin, Reduced Iron, Thiamine Mononitrate, Riboflavin, Folic Acid), Vegetable Shortening (Partially Hydrogenated Soybean Oil), Water, Dextrose, Salt, Sodium Metabisulfite.	330	170	19	4	\N	\N	\N	0	160	39	3	17	3	2	2	2	6	\N	8	0.119999999999999996	cobbler	113	113	g	\N	2014-11-24T20:24:24+00:00	\N	49
Infused Balsamic Vinegar	51db37b4176fe9790a8987ff	559ff010a54279862af8abe7	70404001675	2	\N	\N	10	0	0	0	0	0	0	0	5	3	0	2	0	0	0	0	0	\N	32	1	tbsp	\N	15	ml	https://d1r9wva3zcpswd.cloudfront.net/559ff223d8b431e12ece6536.jpeg	2015-07-10T22:19:37+00:00	\N	10
Shrimp, Broken	51db37be176fe9790a898eff	51c3ee0497c3e6de73cbb5cd	73230000836	2	Broken	Peeled Shrimp. Water, Salt, Sugar, Citric Acid, Calcium Disodium EDTA, Sodium Pyrophosphate, Sodium Metabisulfite.	60	5	0	0	0	\N	\N	145	360	0	0	0	13	0	0	10	15	\N	2	0.5	ea	60	60	g	\N	2014-11-24T20:24:24+00:00	\N	50
Trail Mix, Chocolate Caramel	51db37ef176fe9790a89a938	561b02c51657bb352c688bb9	16000443129	2	\N	\N	150	90	10	2.5	0	\N	\N	0	90	12	1	7	4	0	0	0	4	\N	13	0.25	cup	27	27	g	https://d1r9wva3zcpswd.cloudfront.net/561b058afdb8d7a836ee6efb.jpeg	2015-10-12T00:57:46+00:00	\N	5
Feta Cheese	51db37c2176fe9790a8991ad	53a2fae6ef83cc7d1c432b55	99482434120	2	\N	\N	60	35	4	2.5	0	\N	\N	15	370	1	0	0	5	4	0	6	0	\N	16	1	oz	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/53a2fe3def83cc7d1c432cfe.jpeg	2014-11-24T20:24:24+00:00	\N	8
Mesquite Marinade	51db37b2176fe9790a898525	51c3f5c497c3e6de73cbe9ed	52100025780	2	\N	Salt, Sugar, Modified Corn Starch, Maltodextrin, Tomato Powder, Spices (Including Red Pepper), Garlic, Grill Flavor (From Partially Hydrogenated Cottonseed and Soybean Oil [Adds an Insignificant Amount of Trans Fat]), Natural Flavor, Onion, Silicon Dioxide (Added to Make Free Flowing), and Extractives of Paprika.	10	0	0	\N	\N	\N	\N	\N	500	2	\N	1	0	\N	\N	\N	\N	\N	8	1	tsp dry mix	4	4	g	https://d1r9wva3zcpswd.cloudfront.net/536ada51c7f5e4565d7a0739.jpeg	2014-11-24T20:24:24+00:00	\N	51
Sour Cream, Light	51db37bd176fe9790a898e8e	55ba1a6723f18b7e4898de51	165000000000	2	\N	\N	35	20	2	1.5	0	\N	\N	10	80	3	0	2	1	4	0	6	0	\N	15	2	tbsp	30	30	g	https://d1r9wva3zcpswd.cloudfront.net/55bfd17afa91ff2260aaaa82.jpeg	2015-08-03T20:39:22+00:00	\N	10
Pretzel Thins, Garlic Parmesan	5537c36235bafb0e7d7bc192	5557bd56f6274ff415e6130c	70271370317	2	\N	\N	120	25	2.5	0	0	\N	\N	0	340	21	1	2	3	0	0	0	0	\N	7	9	pretzels	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/5557be4bb14515de20169eca.jpeg	2015-05-16T22:01:47+00:00	\N	52
Fruit Flavored Snacks, Mixed Fruit	51db37b0176fe9790a8983f1	51c3c94a97c3e6d8d3b4d151	85239201855	2	Mixed Fruit	Fruit Juice from Concentrate (Apple, Pear), Corn Syrup, Sugar, Modified Corn Starch, Gelatin, Sorbitol, Citric Acid, Natural and Artificial Flavors, Sodium Citrate, Ascorbic Acid (Vitamin C), Sodium Ascorbate (Vitamin C), Mineral Oil (Adds a Trivial Amount of Fat), Carnauba Wax (Adds a Trivial Amount of Fat), Red 40, Yellow 6, Blue 1.	80	0	0	\N	\N	\N	\N	\N	30	19	\N	15	1	\N	100	\N	\N	\N	50	1	pouch	25.5	26	g	https://d1r9wva3zcpswd.cloudfront.net/5360f8b728432adc3af9377b.jpeg	2014-11-24T20:24:24+00:00	\N	53
Potato Patties	51db37b2176fe9790a898594	54fb6d3b0fa179a75619f8e9	56210261083	2	\N	\N	130	0	8	1	0	\N	\N	0	250	17	1	0	1	0	2	0	2	\N	\N	1	patty	60	60	g	https://d1r9wva3zcpswd.cloudfront.net/54fc6a59167481c020e2e448.jpeg	2015-03-08T15:27:21+00:00	\N	13
Chili Beans	51db37cf176fe9790a899ced	51c540d597c3e6efadd5ba77	70522785426	2	\N	Prepared Pinto Beans, Water, Salt, Food Starch-Modified, Tomato Paste, Corn Syrup, Spice, Mustard, Onion Powder, Garlic Powder, Soybean Oil.	90	5	0	0	0	\N	\N	0	460	19	5	0	3	2	0	2	8	\N	4.5	125	G	125	125	g	\N	2014-11-24T20:24:24+00:00	\N	12
Brown Rice Crackers, Peppercorn Blend	51db37e3176fe9790a89a4db	557ae8e87ba850e50f3d2cc8	21908484426	2	\N	\N	130	35	3.5	0.5	0	1	2	0	100	21	1	4	2	0	0	0	0	\N	4.5	10	crackers	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/557b22387ba850e50f3d2f06.jpeg	2015-06-12T18:17:28+00:00	\N	54
Soup, Condensed, Vegetarian Vegetable	51db37b1176fe9790a898466	51c3d8b297c3e6d8d3b55071	78742371610	2	Condensed, Vegetarian Vegetable	Water, Rehydrated Potatoes, Carrots, Peas, Corn, High Fructose Corn Syrup, Tomato Paste, Green Beans, Modified Cornstarch, Enriched Macaroni Product (Enriched Wheat Flour [Wheat Flour, Niacin, Ferrous Sulfate, Thiamin Mononitrate, Riboflavin, Folic Acid], Egg Whites), Contains 2% or Less of: Celery, Salt, Monosodium Glutamate, Dehydrated Onions, Autolyzed Yeast Extract, Onion Powder, Natural Flavors, Dehydrated Garlic, Citric Acid, Caramel Color, Extractives of Paprika, Spices.	90	5	0	0	0	\N	\N	0	740	19	2	4	2	50	0	2	4	\N	2.5	0.5	cup	123	123	g	\N	2014-11-24T20:24:24+00:00	\N	5
Red Raspberry Jam	54a08b9377cd7d8e5e601c61	55deeb3d37ebf06938afd21c	816000000000	2	\N	\N	50	0	0	\N	\N	\N	\N	\N	0	13	\N	12	0	\N	\N	\N	\N	\N	32	1	tbsp	18	18	g	https://d1r9wva3zcpswd.cloudfront.net/55deed5d32e338eb61f1442a.jpeg	2015-08-27T10:58:38+00:00	\N	10
White Meat Chicken Pie, with Broccoli, Carrots and Pearl Onions.	51db3826176fe9790a89b77e	51c3f8fc97c3e6dfa4deff9a	78185000153	2	with Broccoli, Carrots and Pearl Onions.	Chicken Broth, White Chicken Meat (Chicken Breast Meat, Water, Modified Food Starch, Salt and Sodium Phosphate), Wheat Flour, Partially Hydrogenated Vegetable Shortening (Soybean and Cottonseed Oils), Broccoli, Carrots, Water, Pearl Onions, Modified Food Starch, Rendered Chicken Fat, Margarine (Liquid Soybean Oil, Partially Hydrogenated Soybean Oil, Water, Salt, Lecithin, Mono & Diglycerides, Sodium Benzoate Added as a Preservative), Salt, Sugar, Sweet Dry Whey, Monosodium Glutamate, Flavorings, Hydrolyzed Soy Protein, Maltodextrin, Nonfat Dry Milk, Sodium Propionate, Autolyzed Yeast, Dried Whole Eggs, Dehydrated Chicken Broth, Spices, Dehydrated Chicken Meat, Lecithin, and Soluble Turmeric.	310	140	16	5	\N	\N	\N	35	900	30	2	3	12	30	8	8	10	\N	2	1	cup	170	170	g	\N	2014-11-24T20:24:24+00:00	\N	5
Beans, Pinto	51db37b6176fe9790a89893b	51d2fbbecc9bff111580de97	42743250526	2	Pinto	Pinto Beans.	60	0	0	0	0	\N	\N	0	15	22	14	1	7	0	0	4	15	\N	25	36	G	36	36	g	\N	2014-11-24T20:24:24+00:00	\N	12
Kombucha, Elderberry Hibiscus	51db37ce176fe9790a899c75	51c401df97c3e6dfa4df412b	59818002058	2	Elderberry Hibiscus	Organic Kombucha Tea (Kombucha is a Culture, Fermented in a Base of Purified Water, Organic Tea and Organic Sugar Cane) and The Following Organic Herbs: Elderberry, Hibiscus, Orange Peel, Chamomile and Vanilla Bean. Organic Acids: Glucuronic Acid, Lactic Acid, Acetic Acid. Probiotic Content: Gluconacetobacter Obediens, Dekkera Anormala, Dekkera Bruxellensis, Z. Kornbuchaensis. Gluten free.	15	0	0	0	\N	\N	\N	0	0	3	\N	2	0	0	0	0	0	\N	4	4	oz	113	113	g	\N	2014-11-24T20:24:24+00:00	\N	8
Layers Sugar Free Gum, Jelly Bean	51db37c9176fe9790a8996c7	5512efbfb4cb348022279e82	12546005869	2	\N	\N	2.5	\N	0	\N	\N	\N	\N	\N	0	2	\N	0	0	\N	\N	\N	\N	\N	14	1	stick	2.5	2.5	g	https://d1r9wva3zcpswd.cloudfront.net/5512f00c43f0e8463a131cf2.jpeg	2015-03-25T17:27:41+00:00	\N	55
Beef Burgers	51db37b1176fe9790a898466	5541df0bf796046c4f223b8e	78742088679	2	\N	\N	290	200	23	9	2	0.5	10	90	85	0	0	0	19	0	0	2	10	\N	8	1	burger	113	113	g	https://d1r9wva3zcpswd.cloudfront.net/5541dfcaf425da534fbf6038.jpeg	2015-04-30T13:49:40+00:00	\N	47
Kettle Pops, Light Caramel Glaze, Pre-Priced	51db37c2176fe9790a8991bc	51c3d66797c3e6d8d3b53ce2	77975028599	2	Light Caramel Glaze, Pre-Priced	Organic Rice Syrup, Organic Popcorn, Organic Sugar, Organic Molasses, 100% Expeller Pressed Organic Canola Oil, Baking Soda, Salt, Soy Lecithin (an Emulsifier), Natural Flavor.	110	10	1	0	\N	\N	\N	0	70	26	1	9	0	0	0	0	2	\N	8	0.660000000000000031	cup	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	5
Gourmet Salsa, Verde, Medium	51db37c1176fe9790a899120	51c3ce6f97c3e6d8d3b4fb29	89495569070	2	Verde, Medium	Tomatillos (Green Tomatillos, Water, Salt, Citric Acid), Diced Tomatoes (Diced Tomatoes, Tomato Juice, Tomato Puree, Calcium Chloride, Citric Acid), Water, Yellow Onions, Green Onions, Sugar, Fresh Cilantro, Jalapeno Peppers, Cumin, Serrano Peppers, Salt, Dehydrated Garlic, Garlic Powder, Jalapeno Powder, Spices.	10	0	0	0	0	\N	\N	0	105	2	1	1	0	2	6	0	2	\N	14	2	tbsp	32	32	g	\N	2014-11-24T20:24:24+00:00	\N	10
Sun-Dried White Mulberries	53d7f4c4882b207a4b5243be	55578538f6274ff415e61103	658000000000	2	\N	\N	91	7	0	0	0	\N	\N	0	24	21	3	12	3	0	130	8	20	\N	7	1	oz	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/55578678b14515de20169cd2.jpeg	2015-05-16T18:03:36+00:00	\N	8
Squeezable Fruit, Apple Cherry & Pear	51db3818176fe9790a89b45a	54fcf6b435367ad15414c8f8	78742031460	2	\N	\N	100	0	0	0	0	\N	\N	0	10	22	2	19	0.5	0	60	0	0	\N	1	1	pouch	113	113	g	https://d1r9wva3zcpswd.cloudfront.net/54fcf77747514c0630455038.jpeg	2015-03-09T01:29:27+00:00	\N	53
Crispy Halibut Fillets, Golden Battered	51db37cb176fe9790a8998a9	51c3640397c3e69de4b04066	19600920007	2	Golden Battered	Halibut, Water, Wheat Flour, Partially Hydrogenated Soybean Oil with TBHQ Added to Protect Flavor, Degermed Yellow Low Corn Flour, Enriched Wheat Flour (Flour, Niacin, Ferrous Sulfate, Thiamin Mononitrate, Riboflavin, Folic Acid), Corn Starch-Modified, Sugar, Leavening (Sodium Acid Pyrophosphate, Baking Soda, Monocalcium Phosphate), Salt, Monosodium Glutamate, Dextrose, Sodium Tripolyphosphate (to Retain Fish Moisture).	240	110	12	2	\N	\N	\N	25	590	22	0	4	11	0	0	0	6	\N	3	3	fillets	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	56
Bagels, Multigrain	526831133203b9c3390001c8	55dcb7f72583292d434c020e	774000000000	2	\N	\N	290	27	3	0.299999999999999989	0	\N	\N	0	670	57	4	4	11	0	0	4	25	\N	4	1	bagel	113	113	g	https://d1r9wva3zcpswd.cloudfront.net/55dcb71ed6f26e3a5f192659.jpeg	2015-08-25T18:42:38+00:00	\N	39
Energy Drink	51db37c9176fe9790a899674	51d37a47cc9bff5553aa9e43	818000000000	2	\N	Carbonated Water, Citric Acid, Taurine, Natural Flavors, Sodium Citrate, Caffeine, Calcium Lactate Pentahydrate, Benzoic Acid, Sorbic Acid, Acesulfame Potassium, Sucralose, Panax Ginseng Extract, Pantothenic Acid, Niacinamide, Purple Sweet Potato Juice Extract, Black Carrot Juice Concentrate, Elderberry Extract Concentrate, Pyridoxine Hydrochloride, Red Cabbage Juice Concentrate, Folic Acid, Cyanocobalamin.	10	0	\N	\N	\N	\N	\N	\N	60	0	\N	0	\N	0	0	2	0	\N	1	12	oz	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	8
Pork Jerky, BBQ Seasoned	51db37d1176fe9790a899dff	51c36dcf97c3e69de4b08dab	28400089210	2	BBQ Seasoned	Pork, Brown Sugar, Less than 2% of Salt, Corn Syrup, Hydrolyzed Soy Protein, Tomato Paste, Flavorings, Pineapple Juice Concentrate, Natural Smoke Flavor, Vinegar, Water, Molasses, Soy Sauce (Soybeans, Wheat, Salt), Caramel Color, Citric Acid and Sodium Nitrite.	80	15	1	0	0	\N	\N	30	480	8	0	6	10	2	2	2	4	\N	3	1	oz	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	8
100% Pure Squeezed Orange Juice	51db37b0176fe9790a8983f1	551a3052abb7a227746ecc6a	14027178	2	\N	\N	110	0	0	0	0	\N	\N	0	0	27	0	21	2	0	120	35	0	\N	7	8	fl oz	\N	240	ml	https://d1r9wva3zcpswd.cloudfront.net/551a30ad7122d49b56944405.jpeg	2015-03-31T05:29:17+00:00	\N	2
Tuxedo Snack Mix	545a52d45f06a919304b001a	5505dcc077b7c8f122a48282	816000000000	2	\N	\N	185	99	11	5	0	\N	\N	0	13	17	3	13	5	0	0	3	6	\N	\N	1	package	35	35	g	https://d1r9wva3zcpswd.cloudfront.net/5505dd26d7f7f1a6470ad6fd.jpeg	2015-03-15T19:27:35+00:00	\N	23
100% Whey Protein	51db382c176fe9790a89b860	546a0936eda64c0d62056475	749000000000	2	\N	\N	120	15	1.5	1	0	\N	\N	40	110	3	\N	2	24	0	0	8	0	\N	28	1	rounded scoop	32	32	g	https://d1r9wva3zcpswd.cloudfront.net/546a11a82bc0b27b2a676e18.jpeg	2014-11-24T20:24:24+00:00	\N	58
Juice Beverage, Apple Lemon Ginger Cayenne Pepper	54eee7131b52a5fa69462d03	551b11461728185b403f4f59	813000000000	2	\N	\N	110	0	0	0	0	\N	\N	0	10	27	2	20	1	0	8	2	6	\N	2	1	cup	\N	240	ml	https://d1r9wva3zcpswd.cloudfront.net/551b13f092163c543948f0ef.jpeg	2015-03-31T21:38:56+00:00	\N	5
Mini Lemon Bundt Cake	51db37b1176fe9790a89846e	55d85136fa82eaa458347291	46567606392	2	\N	\N	210	80	9	2.5	0	\N	\N	50	70	28	0	19	4	2	0	6	2	\N	8	1	mini lemon bundt cake	\N	\N	g	https://d1r9wva3zcpswd.cloudfront.net/55dc297fbd3e938e7a5d4f1c.jpeg	2015-08-25T08:38:23+00:00	\N	59
Cashews, Halves & Pieces Roasted	51db37b1176fe9790a8984d3	54e20d1ef66ebbec41282f00	49022699762	2	\N	\N	190	130	14	2.5	0	\N	\N	0	60	9	0.5	2	5	0	0	0	10	\N	8	0.25	cup	30	30	g	https://d1r9wva3zcpswd.cloudfront.net/54e76728ae3665147a594ebf.jpeg	2015-02-20T16:56:08+00:00	\N	5
Salsa, Original Gourmet, Mild	52ceb0e6bba524e06800002c	51c3644497c3e69de4b0425d	20113001725	2	Original Gourmet, Mild	Fresh Diced Tomatoes, Fresh Chopped Assorted Peppers, Fresh Diced Onions, Fresh Chopped Cilantro, Salt, Crushed Garlic, Citric Acid, Assorted Spices, Sodium Metabisulfite (as a Preservative), Ascorbic Acid, Potassium Sorbate (as a Preservative), Sodium Benzoate (as a Preservative).	10	0	0	\N	\N	\N	\N	0	75	0	\N	1	0	2	2	0	0	\N	48	2	tbsp	30	30	g	\N	2014-11-24T20:24:24+00:00	\N	10
Energy Gel, Banana Peach	51db37cd176fe9790a899b05	51c3cf0f97c3e6d8d3b50070	956609210	2	Banana Peach	Maltodextrin (Complex Carbohydrate), Water, Banana Puree, Peach Puree, Citric Acid, Potassium Citrate, Sea Salt, Potassium Sorbate and Sodium Benzoate (to Retard Spoilage).	110	0	0	\N	\N	\N	\N	\N	50	27	\N	3	0	0	0	0	0	\N	24	1	pack	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	32
Pancakes, Chocolate Chip	51db37b2176fe9790a89859b	51d2ff95cc9bff111580f85b	38000396731	2	Chocolate Chip	Enriched Flour (Wheat Flour, Malted Barley Flour, Niacin, Reduced Iron, Vitamin B1 [Thiamin Mononitrate], Vitamin B2 [Riboflavin], Folic Acid), Water, Sugar, Soybean and/or Canola Oil, Semisweet Chocolate (Sugar, Chocolate, Cocoa Butter, Dextrose, Chocolate Processed with Alkali, Soy Lecithin, Artificial Flavor), Eggs, Contains 2% or Less of Leavening (Baking Soda, Sodium Aluminum Phosphate, Monocalcium Phosphate), Salt, Fructose, Artificial Flavor, Whey, Cornstarch, Soy Lecithin. Vitamins and Minerals: Vitamin A Palmitate, Reduced Iron, Niacinamide, Vitamin B12, Vitamin B6 (Pyridoxine Hydrochloride), Vitamin B1 (Thiamin Hydrochloride), Vitamin B2 (Riboflavin).	270	80	9	2	0	\N	\N	15	490	42	1	12	6	20	0	8	25	\N	4	3	pancakes	105	105	g	\N	2014-11-24T20:24:24+00:00	\N	60
Shortbread Tartlet Shells	51db37ca176fe9790a89980c	52cd677b9d9d726f6c00106e	11110906021	2	\N	\N	120	50	6	4	0	\N	\N	25	30	15	0	11	2	6	0	0	0	\N	5	3	pastry cups	23	23	g	https://d1r9wva3zcpswd.cloudfront.net/536a7234a0ec3c690b54352e.jpeg	2014-11-24T20:24:24+00:00	\N	61
Medallones Poblanos	54c9d87fca1c9b3541c0797a	55e6630de32eb37f7ac4b265	47918030231	2	\N	\N	370	100	22	5	0	12	4	12	650	32	2.5	0	4	4	20	200	4	\N	2.5	6	pieces	150	150	g	https://d1r9wva3zcpswd.cloudfront.net/55e6639b09733f017a3fdeb2.jpeg	2015-09-02T02:49:00+00:00	\N	6
Dressing, Sesame Ginger Dressing All Natural	51db37c9176fe9790a899692	51c5476497c3e6efadd5ee62	81131387956	2	Sesame Ginger Dressing All Natural	Soybean Oil,High Fructose Corn Syrup, Water, Soy Sauce (Water, Soybeans, Wheat, Salt), Vinegar, Sesame Oil, Sugar, Peach Or Apricot Puree, Rice Vinegar, Cultured Dextrose, Lemon Juice from Concentrate, Food Starch-Modified, Dehydrated Red Bell Pepper, Sesame Seeds, Xanthan Gum, Salt, Onion, Garlic, Citric Acid, Spice. Contains: Soy, Sesame Seeds, Wheat.	100	70	8	1	0	\N	\N	0	220	7	0	6	0	0	0	0	0	\N	14	30	G	30	30	g	\N	2014-11-24T20:24:24+00:00	\N	12
Chicken Wings, Sriracha Glazed	51db37b1176fe9790a8984d3	55a8db384c9567744848e3cf	49022845657	2	\N	\N	170	90	10	2.5	0	\N	\N	65	670	5	0	2	14	2	0	0	2	\N	2.5	3	oz edible portion	84	84	g	https://d1r9wva3zcpswd.cloudfront.net/55abb71ae6718bfc489c8a97.jpeg	2015-07-19T14:41:30+00:00	\N	66
Steamers Basil Vegetable Medley	51db37b9176fe9790a898b75	51c3641297c3e69de4b040d6	20000277967	2	\N	Cauliflower, Carrots, Sugar Snap Peas, Water, Butter, Salt, Corn Starch, Gelatin, Sugar, Fructose, Basil, Spice, Xanthan Gum, Natural Flavor, Annatto Extract Color.	45	5	0.5	0	0	\N	\N	0	270	10	2	5	2	40	25	2	2	320	2.5	1.33000000000000007	cup frozen	133	133	g	https://d1r9wva3zcpswd.cloudfront.net/536a81fcc0d75149309c5dbf.jpeg	2014-11-24T20:24:24+00:00	\N	62
Nonfat Greek Yogurt, Classic Cherry Fruit on the Bottom	51db37b3176fe9790a8986a1	54efe40ac61cb7fa6ed61da5	725000000000	2	\N	\N	120	0	0	0	\N	\N	\N	10	75	20	0.5	19	12	\N	\N	15	\N	\N	1	1	container	150	150	g	https://d1r9wva3zcpswd.cloudfront.net/54f1df7cd6d8f76302dbcd74.jpeg	2015-02-28T15:32:12+00:00	\N	4
Ziti	51db37b9176fe9790a898bd7	51c3727597c3e69de4b0b62e	36800040106	2	\N	Durum Wheat Semolina (Enriched with Iron [Ferrous Sulfate] and B Vitamins [Niacin, Thiamin Mononitrate, Riboflavin, Folic Acid]).	200	10	1	0	0	\N	\N	0	0	41	2	2	7	0	0	0	10	\N	8	0.67000000000000004	cup dry	56	56	g	\N	2014-11-24T20:24:24+00:00	\N	7
Raw Chocolate Truffle	53fde027852aa5123bb6dcce	53fde028852aa5123bb6dcd0	859000000000	2	\N	\N	200	90	10	5	0	\N	\N	0	130	20	7	7	8	160	0	6	25	\N	5	8	truffles	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/53fde15b852aa5123bb6dd71.jpeg	2014-11-24T20:24:24+00:00	\N	63
Sausage Biscuits	51db37b2176fe9790a8985a6	5524f4aac8c4d9232bc36b37	44500100341	2	\N	\N	280	170	19	7	0	\N	\N	25	430	21	1	2	7	0	6	10	8	\N	10	1	package	78	78	g	https://d1r9wva3zcpswd.cloudfront.net/5524f5298856aa31686b4081.jpeg	2015-04-08T09:30:17+00:00	\N	23
Popcorn, Almond Caramel	539c866d4439661902a3d15a	5522c29a1b191740659ac725	898000000000	2	\N	\N	140	60	7	4.5	0	\N	\N	2.5	95	19	0.5	14	0.5	0	0	0	0	\N	11	1	oz	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/5522c3ea6a45a2215a2aab7d.jpeg	2015-04-06T17:35:38+00:00	\N	8
Turkey Breast, Oven Roasted Shaved, with Broth	51db37e7176fe9790a89a71a	51c3668e97c3e69de4b05340	21130153206	2	Oven Roasted Shaved, with Broth	Turkey Breast Meat, Turkey Broth, Contains 2% or Less Potassium Lactate, Salt, Modified Food Starch, Sugar, Sodium Phosphate, Carrageenan, Sodium Diacetate, Flavoring.	50	5	0	0	0	\N	\N	20	420	1	0	0	10	0	0	0	0	\N	4	2	oz	56	56	g	\N	2014-11-24T20:24:24+00:00	\N	8
Pork Roll, Mild, Hickory Smoked, Slices	51db37b9176fe9790a898bdb	51c37afc97c3e6d272824755	41190453498	2	Mild, Hickory Smoked, Slices	Pork, Salt, Sugar, Sodium Nitrate, Sodium Nitrite.	130	100	11	5	\N	\N	\N	25	450	1	\N	1	6	0	0	0	2	\N	4	1	slice	42	42	g	\N	2014-11-24T20:24:24+00:00	\N	26
Italian Rolls	51db37c5176fe9790a899399	51c3ebcb97c3e6de73cba64e	45000140172	2	\N	Enriched Wheat Flour [Flour, Barley Malt, Ferrous Sulfate (Iron), B Vitamins (Niacin, Thiamine Mononitrate (B1), Riboflavin (B2), Folic Acid)], Water, Yeast, High Fructose Corn Syrup. Contains 2% or Less of: Wheat Gluten, Salt, Soybean Oil, Calcium Sulfate, Dough Conditioners (May Contain: Sodium Stearoyl Lactylate, Ethoxylated Mono and Diglycerides, Mono and Diglycerides, Calcium Iodate, Sorbic Acid, Calcium Dioxide and/or Datem), Yeast Nutrients (May Contain: Monocalcium Phosphate, Ammonium Chloride, Calcium Carbonate and/or Ammonium Sulfate), Cornstarch, Wheat Starch, Guar Gum, Whey, Soy Flour, Vinegar, Enzymes, Calcium Propionate (to Retain Freshness), Soy Lecithin.	90	5	0	0	0	\N	\N	0	190	16	0	2	3	0	0	4	6	\N	10	1	roll	35	35	g	\N	2014-11-24T20:24:24+00:00	\N	57
Mint Chocolate Chip Ice Cream	51db37b9176fe9790a898bcd	55853b3df448376823bbedfb	41904770	2	\N	\N	150	80	9	6	0	\N	\N	30	50	17	0	13	2	6	0	8	0	\N	12	0.5	cup	68	68	g	https://d1r9wva3zcpswd.cloudfront.net/55853ce395653a350fa23e24.jpeg	2015-06-20T10:13:56+00:00	\N	5
Assorted Gelatin	54fe80e9728292121dd4d323	5557864ef22407741e5efa53	811000000000	2	\N	\N	25	0	0	0	0	\N	\N	0	30	5	0	5	1	0	0	0	0	\N	1	1	unit	99	99	g	https://d1r9wva3zcpswd.cloudfront.net/55578697b14515de20169ce1.jpeg	2015-05-16T18:04:07+00:00	\N	64
Chunk Light Tuna	51db37c5176fe9790a899358	54f956d311a47717226b63fc	725000000000	2	\N	\N	50	5	0.5	0	0	0	0	30	180	0	0	0	13	0	0	0	2	\N	5	0.25	cup drained	56	56	g	https://d1r9wva3zcpswd.cloudfront.net/54fa00d22c6fce8f65a2f6fa.jpeg	2015-03-06T19:32:35+00:00	\N	65
Yogurt, Greek, Low-Fat, Very Berry	51db37bb176fe9790a898da9	51d37629cc9bff5553aa9292	895000000000	2	Greek, Low-Fat, Very Berry	Cultured Pasteurized Nonfat Milk, Cream, Evaporated Cane Juice, Strawberries, Blueberries, Blackberries, Raspberries, Locust Bean Gum, Natural Flavors, Pectin, Fruit and Vegetable Juice [for Color], Vitamin D3. Live and Active Cultures: S. Thermophilus, L. Bulgaricus, L. Acidophilus, Bifidus and L. Casei. Gluten free.	100	15	1	1	0	\N	\N	5	40	13	0	13	8	0	4	10	0	\N	4	1	cup	100	100	g	\N	2014-11-24T20:24:24+00:00	\N	5
USDA Choice Top Sirloin Steak	54e299ac7704216e2658a175	54e2998b15111ec8709e7d72	54200009202	2	\N	\N	360	210	23	11	0	\N	\N	100	580	0	0	0	36	0	0	4	15	\N	4	7	oz	198	198	g	https://d1r9wva3zcpswd.cloudfront.net/54e769c6014162fb234f4d48.jpeg	2015-02-20T17:07:18+00:00	\N	8
Ice Cream, Peanut Butter with Peanut Butter Cookie Pieces	51db37e9176fe9790a89a7b2	51c3c9fd97c3e6d8d3b4d6f0	41548106526	2	Peanut Butter with Peanut Butter Cookie Pieces	Milk, Skim Milk, Cream, Peanut Butter Cookies [Enriched Flour (Flour, Niacin, Reduced Iron, Thiamine Mononitrate, Riboflavin, Folate), Margarine (Partially Hydrogenated Soybean Oil, Water, Salt, Lecithin, Mono and Diglycerides, Beta Carotene Color, Artificial Butter Flavor, Vitamin A Palmitate), Maltitol, Sorbitol, Peanuts, Peanut Butter (Peanuts, Hydrogenated Canola and Cottonseed Oils, Salt), Polydextrose, Maltodextrin, Leavening (Ammonium Bicarbonate, Sodium Bicarbonate), Whey Protein, Natural and Artificial Flavor, Datem, Sodium Stearoyl Lactylate, Soy Lecithin, Aspartame, Hydrogenated Cottonseed Oil, Caramel Color, Acesulfame Potassium, Annatto Color], Peanuts, Maltodextrin, Sorbitol, Polydextrose, Whey Protein, Mono and Diglycerides, Salt, Cellulose Gum, Partially Hydrogenated Palm Oil, Cellulose Gel, Yellow No. 5, Carrageenan, Red No. 40, Yellow No. 6, Aspartame, Sunett Acesulfame Potassium, Vitamin A Palmitate, Blue No. 1.	130	50	6	2	\N	\N	\N	10	85	15	1	4	4	8	0	6	0	\N	16	62	g	62	62	g	\N	2014-11-24T20:24:24+00:00	\N	22
Potato Chips, Lightly Salted	51db37d7176fe9790a899fa7	51c373f897c3e69de4b0c327	37578801005	2	Lightly Salted	Potatoes, Vegetable Oil (Contains One or More of the Following: Cottonseed, Canola, or Corn Oil), and Salt.	150	90	9	3	0	\N	\N	0	115	16	0	0	2	0	20	0	4	\N	8	1	oz	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	8
Meatless Kielbasa, Meat Free	51db37d2176fe9790a899e46	558817ee959361a7172204fd	25583006133	2	\N	\N	240	108	12	1	0	\N	\N	0	660	8	1	1	26	0	0	4	2	\N	\N	1	sausage	100	100	g	https://d1r9wva3zcpswd.cloudfront.net/55881846959361a717220510.jpeg	2015-06-22T14:14:30+00:00	\N	67
Sandwich Rounds, 100% Whole Grain	51db37b9176fe9790a898bf4	51c3ec3497c3e6de73cba8ff	72250005333	2	100% Whole Grain	Whole Wheat Flour, Water, Sugar, Yeast, Oat Fiber, Wheat Gluten, Contains 2% or Less of Each of the Following: Modified Wheat Starch, Flax Seeds, Salt, Cultured Wheat Starch, Wheat Bran, Soybean Oil, Whole Rye Flour, Rolled Oats, Dough Conditioners (Contains One or More of the Following: Sodium Stearoyl Lactylate, Calcium Stearoyl Lactylate, Monoglycerides and/or Diglycerides, Calcium Peroxide, Calcium Iodate, DATEM, Ethoxylated Mono- and Diglycerides, Azodicarbonamide), Barley Flakes, Triticale Flour, Sunflower Seed, Vinegar, Whole Amaranth Seeds, Monocalcium Phosphate, Guar Gum, Calcium Sulfate, Amaranth, Hulled Whole Millet, Kamut, Whole Brown Rice Flour, Whole Buckwheat Flour, Whole Milled Corn, Whole Spelt Flour, Reb A (Natural Stevia Leaf Sweetener).	100	10	1	0	0	\N	\N	0	180	20	5	3	5	0	0	4	6	\N	8	1	roll	43	43	g	https://d1r9wva3zcpswd.cloudfront.net/536b86024a749f8f03d60260.jpeg	2014-11-24T20:24:24+00:00	\N	57
Skillet Sauces, Sesame Chicken	51db37c1176fe9790a89907e	558c7c3ff3824e0f4cc1f799	51000219176	2	\N	\N	40	0	0	0	0	\N	\N	0	330	9	0	7	1	0	0	0	0	\N	5	0.25	cup	\N	60	ml	https://d1r9wva3zcpswd.cloudfront.net/558c7e4f4a3123a843fe5d8b.jpeg	2015-06-25T22:18:55+00:00	\N	5
Cottage Cheese, Small Curd, 1% Milkfat, Lowfat, No Salt Added	51db37b0176fe9790a8983ef	51c3c13897c3e6d8d3b495af	88267020405	2	Small Curd, 1% Milkfat, Lowfat, No Salt Added	Cultured Nonfat Milk, Nonfat Milk, Cream, Salt, Grade A Whey, Food Starch - Modified, Artificial Color, Guar Gum, Sorbic Acid (A Mold Inhibitor), Citric Acid, Carrageenan, Natural and Artificial Flavors, Locust Bean Gum, Phosphoric Acid, Sodium Phosphate, Potassium Phosphate, Vitamin A Palmitate, Enzymes.	85	10	1	0	\N	\N	\N	10	55	5	0	4	13	4	0	10	0	\N	3	0.5	cup	113	113	g	\N	2014-11-24T20:24:24+00:00	\N	5
Swiss Crepes, Assorted	51db37b0176fe9790a8983be	51c3b98b97c3e6d8d3b45a71	77890215210	2	Assorted	Sugar, Wheat Flour, Hazelnuts, Vegetable Oil (Palm Kernel, Palm, Coconut), Cocoa Liquor, Cocoa Powder, Egg Yolk Powder (from Free-Range Organic Eggs), Emulsifying Agent: Soya Lecithin, Roasted Coffee, Salt, Natural Vanilla Flavor.	160	80	9	4	0	\N	\N	0	35	19	0	4	2	0	0	0	2	\N	5	8	pieces	32	32	g	\N	2014-11-24T20:24:24+00:00	\N	6
Swiss Bar, Milk Chocolate with Ground Hazelnuts	51db37ca176fe9790a89980c	54ffb608a01741104ab54be9	41260365171	2	\N	\N	220	130	14	8	0	\N	\N	5	40	21	0.5	20	3	0	0	10	2	\N	2.5	4	squares	40	40	g	https://d1r9wva3zcpswd.cloudfront.net/54ffb61c1dc37409547d660f.jpeg	2015-03-11T03:27:24+00:00	\N	68
Lotzza Motzza, Sausage & Pepperoni Pizza	545b8d3b4a618f2d449d3188	553c5fc5a5f3288d0dd132c6	42197003228	2	\N	\N	400	190	22	10	0.5	\N	\N	60	960	29	2	3	23	4	20	35	15	\N	10	0.200000000000000011	pizza	150	150	g	https://d1r9wva3zcpswd.cloudfront.net/553c60269e6799856f9579cf.jpeg	2015-04-26T03:48:54+00:00	\N	41
Baked Beans	51db37c9176fe9790a8995f1	5464c713a9ffad0169a89b20	28800130741	2	\N	\N	130	0	0	0	0	\N	\N	0	480	25	6	10	6	0	0	6	10	\N	6	0.5	cup	130	130	g	https://d1r9wva3zcpswd.cloudfront.net/5464ca7d0f427cce040e0481.jpeg	2014-11-24T20:24:24+00:00	\N	5
Apples & Bananas, Stage 2	51db37c3176fe9790a8991f6	51c3ea5e97c3e6de73cb9b8a	52200005149	2	Stage 2	Apples, Water Necessary for Preservatives, Fully Ripened Bananas, Citric Acid and Ascorbic Acid (Vitamin C).	60	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	12	0	0	45	0	0	\N	\N	1	jar	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	69
Hand Decorated MLB Cookies, Boston Red Sox	51db37b9176fe9790a898bad	51c3eff197c3e6de73cbc2d5	6409450101	2	Boston Red Sox	Flour, Palm Shortening, Sugar, Corn Starch, Honey, Water, Skim Milk Powder, Egg Powder, Natural and Artificial Flavors, Salt, Soy Lecithin, Sodium Bicarbonate, Egg White Powder, Colors (Titanium Dioxide, Blue 1, Blue 2, Red 3, Red 40, Yellow 5, Yellow 6).	220	80	8	4	0	\N	\N	0	85	34	0	16	2	0	0	2	2	\N	24	1	cookie	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	70
Naturally Hickory Smoked Classic Cut Bacon	51db37b2176fe9790a898595	51c3f2ba97c3e6de73cbd6a1	70247123091	2	Hickory Smoked	Cured with; Water, Salt, Sugar, Sodium Phosphate, Sodium Erythorbate, Sodium Nitrite.	80	60	7	3	0	\N	\N	15	260	0	\N	\N	4	\N	\N	\N	\N	\N	10	2	pan fried slices	45	15	g	https://d1r9wva3zcpswd.cloudfront.net/53d8f0ff8e32a9444d30a671.jpeg	2014-11-24T20:24:24+00:00	\N	71
Buffalo-Style Chicken Strips	51db37b1176fe9790a898440	558d9556c375fbae0f93c927	41268188703	2	\N	\N	200	100	11	2	0	6	2.5	35	960	11	0	0	13	0	0	0	6	\N	8	3	oz	84	84	g	https://d1r9wva3zcpswd.cloudfront.net/558d964ccc71c5920fae01aa.jpeg	2015-06-26T18:13:32+00:00	\N	8
Chicken, White & Dark, In Water	51db37b6176fe9790a89899b	51c3741f97c3e69de4b0c43b	37600448932	2	White & Dark, In Water	White and Dark Chicken, Water, Salt, Modified Potato Starch, Sodium Phosphates.	70	25	3	1	0	\N	\N	45	250	0	0	0	10	0	0	0	0	\N	4	2	oz	56	56	g	\N	2014-11-24T20:24:24+00:00	\N	8
Apple Butter	5268310d3203b9c339000120	551cefb9c66514eb0b4a41fb	87222180314	2	\N	\N	30	0	0	0	0	\N	\N	0	0	8	0	6	0	\N	\N	\N	\N	\N	14	1	tbsp	18	18	g	https://d1r9wva3zcpswd.cloudfront.net/551cf14a3b5829480d4b63e0.jpeg	2015-04-02T07:35:38+00:00	\N	10
Dried Cherries & Glazed Walnuts	51db37c9176fe9790a8995f5	55d4248431e6210b0a31530b	30243696777	2	\N	\N	140	80	8	1	0	\N	\N	0	10	16	2	14	2	4	0	4	2	\N	3	0.25	cup	30	30	g	https://d1r9wva3zcpswd.cloudfront.net/55d4253ebe89ad1f0a715231.jpeg	2015-08-19T06:42:06+00:00	\N	5
Dark Chocolate Almonds	51db37c9176fe9790a899603	552e4aaab9cfee870d27bbd7	35900270291	2	\N	\N	210	140	16	6	0	\N	\N	0	0	19	4	13	4	0	0	4	15	\N	4.5	1.39999999999999991	oz	40	40	g	https://d1r9wva3zcpswd.cloudfront.net/552e4ae7b9cfee870d27bbe2.jpeg	2015-04-15T11:26:31+00:00	\N	8
Olive Oil, Extra Virgin, Cold Pressed, Bread & Salads	51db37b2176fe9790a8984fd	51c3d1bb97c3e6d8d3b516dc	73589000488	2	Extra Virgin, Cold Pressed, Bread & Salads	100% Australian Extra Virgin Olive Oil.	130	130	14	2	\N	\N	\N	0	0	0	\N	\N	0	0	0	0	0	\N	33	1	tbsp	14	14	g	\N	2014-11-24T20:24:24+00:00	\N	10
Corn, Whole Kernel Sweet	51db37b1176fe9790a898487	551cef1cb2bfc1d23ea5e3bd	37100280049	2	\N	\N	60	15	1.5	0	0	\N	\N	0	200	9	2	7	2	0	6	0	2	\N	3	0.5	cup	125	125	g	https://d1r9wva3zcpswd.cloudfront.net/551ceff250d33508433b3588.jpeg	2015-04-02T07:29:55+00:00	\N	5
Chicken Jerky	53eb774feda2225b554fe680	54e61dca1a6a53800e603efa	853000000000	2	\N	\N	60	15	1.5	0	0	\N	\N	35	280	2	0	1	12	4	0	\N	\N	\N	3	1	oz	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/54e77d2bae3665147a5953d2.jpeg	2015-02-20T18:30:03+00:00	\N	8
Pizza, Crispy Thin Crust, Hawaiian Recipe	51db37b3176fe9790a8986b6	51d2f830cc9bff111580c6bb	71921014650	2	Crispy Thin Crust, Hawaiian Recipe	Wheat Flour, Shredded Reduced Fat Reduced Sodium Mozzarella Cheese (Pasteurized Part-Skim Milk, Nonfat Milk, Modified Food Starch [Ingredient Not in Regular Mozzarella Cheese], Cheese Culture, Salt, Potassium Chloride [Ingredient Not in Regular Mozzarella Cheese], Natural Flavor [Ingredient Not in Regular Mozzarella Cheese], Annatto [Color], Vitamin A Palmitate, Enzymes), Water, Cooked Smoked Ham Water Added, Hickory Smoke Flavor Added (Cured with: Water, Salt, Potassium Lactate, Sugar, Sodium Phosphate, Smoke Flavoring, Sodium Ascorbate, Sodium Nitrite), Pineapple, Tomatoes, Tomato Juice, Tomato Paste, Partially Hydrogenated Soybean Oil, Contains Less than 2% of Soybean Oil, Sugar, Soy Lecithin, Cornmeal, Olive Oil, Garlic, Salt, Yeast, Malted Barley Flour, Dextrose, Baking Soda, Sodium Aluminum Phosphate, Enzymes, Potassium Sorbate (Preservative), Citric Acid, Flavor, Sodium Citrate, Xanthan Gum, Beta Carotene (Color).	350	100	12	5	0	\N	\N	25	640	43	2	6	18	8	6	30	15	\N	1	1	pizza	175	175	g	https://d1r9wva3zcpswd.cloudfront.net/536ae5ab86a4a2c97083e7cf.jpeg	2014-11-24T20:24:24+00:00	\N	41
Cottage Cheese, Large Curd, 4% Milkfat Min.	51db37b0176fe9790a8983e0	51c37bca97c3e6d272824d94	41250112532	2	Large Curd, 4% Milkfat Min.	Grade A Cultured Nonfat Milk, Cream, Salt, Potassium Sorbate (a Mold Inhibitor), Guar Gum, Mono & Diglycerides, Carrageenan, Polysorbate 80, Locust Bean Gum, Natural and Artificial Flavors, Enzymes.	110	45	5	3	0	\N	\N	25	440	4	0	3	13	4	0	8	0	\N	6	0.5	cup	113	113	g	\N	2014-11-24T20:24:24+00:00	\N	5
Cappuccino Sandwich Cookies	51db37b9176fe9790a898baa	51c3efe397c3e6de73cbc26b	44000016876	2	\N	Enriched Flour (Wheat Flour, Niacin, Reduced Iron, Thiamine Mononitrate (Vitamin B1), Riboflavin (Vitamin B2), Folic Acid), Sugar, Partially Hydrogenated Oils, Whey (from Milk), High Fructose Corn Syrup, Salt, Leavening (Baking Soda, Calcium Phosphate), Cornstarch, Cocoa, Natural and Artificial Flavors, Soy Lecithin (Emulsifier).	160	70	8	1	\N	\N	\N	0	130	22	0	9	1	0	0	2	4	\N	10	2	ea	33	33	g	\N	2014-11-24T20:24:24+00:00	\N	50
Nutrimeal Nutritious Meal Replacement Shake, French Vanilla	54abffc98aeb5b0d0a6de066	55809f55f68876652aad365d	112000000000	2	\N	\N	240	70	7	1	0	\N	\N	0	310	35	8	18	15	15	25	25	15	\N	9	3	scoops	60	60	g	https://d1r9wva3zcpswd.cloudfront.net/558180cd30b99954739c23d8.jpeg	2015-06-17T14:14:37+00:00	\N	73
Cereal, Flax Seeds Dates Almonds Raisins Cranberries Coconut	54fdbba9c24c51dd40e5c016	54fdbc040ff3284f1acc5199	805000000000	2	\N	\N	210	55	6	2	0	\N	\N	0	4	34	8	6	7	0	2	4	15	\N	10	0.5	cup	57	57	g	https://d1r9wva3zcpswd.cloudfront.net/54fdf5424e9d7e6f76e3f438.jpeg	2015-03-09T19:32:18+00:00	\N	5
Cheese & Grapes Snack	5457c4580d5781691593ece2	546a0899eda64c0d62056428	404000000000	2	\N	\N	270	170	19	12	0	\N	\N	60	350	11	0	9	15	10	2	40	4	\N	1	1	snack cup	111	111	g	https://d1r9wva3zcpswd.cloudfront.net/546a0faf86f80d902a7c0a27.jpeg	2014-11-24T20:24:24+00:00	\N	74
Goat Milk Feta, Crumbled	51db37b7176fe9790a8989fa	5550ec994619d01249e45b36	762000000000	2	\N	\N	70	50	6	4	0	\N	\N	10	310	1	\N	\N	4	0	0	8	\N	\N	4	0.5	inch slice	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/5550eda80bc9209e392b7a2a.jpeg	2015-05-11T17:58:00+00:00	\N	14
Pasta, Organic Spaghetti Made W/Jerusalem Artichoke Flour 8 Oz	51db37b8176fe9790a898b15	51c5478b97c3e6efadd5ef66	30684857409	2	Organic Spaghetti Made W/Jerusalem Artichoke Flour 8 Oz	Organic Durum Wheat Semolina, Organic Jerusalem Artichoke Flour. Contains: Wheat.	210	10	1	0	0	\N	\N	0	5	43	1	2	7	0	0	0	6	\N	4	56	G	56	56	g	\N	2014-11-24T20:24:24+00:00	\N	12
Reduced Calorie Pudding & Pie Filling, Chocolate	51db37b0176fe9790a8983d5	51d2fdb0cc9bff111580ebd8	43000208205	2	Sugar Free/Fat Free, Chocolate	Cornstarch, Cocoa Processed with Alkali, Modified Cornstarch, Salt, Contains Less than 2% of Natural and Artificial Flavor, Calcium Carrageenan (Thickener), Fumaric Acid, Aspartame (Phenylketonurics: Contains Phenylalanine) and Acesulfame Potassium (Sweeteners), Polysorbate 60 (Prevents Scorching), Red 40, Yellow 5. Blue 2.	30	0	0	0	0	\N	\N	0	110	7	0.5	0	0.5	0	0	0	6	\N	6	0.160000000000000003	package	9	10	g	https://d1r9wva3zcpswd.cloudfront.net/536ace1fc7f5e4565d7a035a.jpeg	2014-11-24T20:24:24+00:00	\N	23
Wheat Rolls	51db37bd176fe9790a898e92	5527cf5a15e511601d31f51d	74175001186	2	\N	\N	70	10	1	0	0	\N	\N	0	150	13	1	1	2	0	0	2	4	\N	12	1	roll	29	29	g	https://d1r9wva3zcpswd.cloudfront.net/5527cfd915e511601d31f53e.jpeg	2015-04-10T13:27:53+00:00	\N	57
Braided Pastry, Cherry	546a0930eda64c0d62056470	54fe2c2a4e9d7e6f76e3f56a	746000000000	2	\N	\N	150	40	4.5	2.5	0	\N	\N	10	105	25	0.5	10	3	4	0	0	4	\N	11	1	inch slice	57	57	g	https://d1r9wva3zcpswd.cloudfront.net/54fe2cfaab7c0b1a68eb4375.jpeg	2015-03-09T23:30:02+00:00	\N	14
Candy, Assorted Fruit, Snack Size	51db37b1176fe9790a898429	51c3ba4c97c3e6d8d3b4606c	87076807726	2	Assorted Fruit, Snack Size	Corn Syrup, Sugar, Contains 2% or Less of: Malic Acid, Natural and Artificial Flavor, and Artificial Color (Red 40, Blue 1, Yellow 5, and Yellow 6).	60	0	0	0	0	\N	\N	0	0	15	0	9	0	0	0	0	0	\N	5	2.5	pieces	15	15	g	\N	2014-11-24T20:24:24+00:00	\N	6
Marinade in A Bag, Cracked Peppercorn	51db37b9176fe9790a898c1b	51c3bd1b97c3e6d8d3b47491	51600080015	2	Cracked Peppercorn	Distilled White Vinegar, High Fructose Corn Syrup, Water, Lea and Perrins Worcestershire Sauce (Distilled White Vinegar Molasses, Sugar, Water, Salt, Onions, Anchovies Garlic, Cloves, Tamarind Extract, Natural Flavorings, Chili Pepper Extract), Molasses, Black and White Pepper, Dehydrated Garlic, Salt, Modified Cornstarch, Dehydrated Roasted Garlic, Xanthan Gum, Garlic Powder, Dehydrated Onion, Caramel Color, Onion Powder, Citric Acid, Sodium Benzoate and Potassium Sorbate Added as Preservatives, Soybean Oil, Mono- and Diglycerides, Soy Lecithin, Garlic Extract.	15	0	0	0	0	\N	\N	0	150	4	0	1	0	0	0	0	6	\N	21	1	tbsp	16	16	g	https://d1r9wva3zcpswd.cloudfront.net/536ad9b6c3cba98a306b0044.jpeg	2014-11-24T20:24:24+00:00	\N	10
Cooking Spray, Vegetable Oil	51db37b4176fe9790a898834	51c3d1d097c3e6d8d3b51794	45674250191	2	Vegetable Oil	Soybean Oil (Adds a Trivial Amount of Fat), Soy Lecithin, Dimethyl Silicone (for Anti-Foaming), Propellant.	0	0	0	0	0	\N	\N	0	0	0	0	0	0	0	0	0	0	\N	565	0.25	sec spray	0.25	0.25	g	\N	2014-11-24T20:24:24+00:00	\N	75
Kidney Beans, Light Red	51db37bc176fe9790a898dfa	51d2fc75cc9bff111580e3b0	71524017836	2	Light Red	Prepared Light Red Kidney Beans, Water, Sugar, Salt, Calcium Chloride and Disodium EDTA (for Color Retention).	120	10	1	0	0	\N	\N	0	410	21	7	1	8	0	2	8	15	\N	3.5	0.5	cup	130	130	g	\N	2014-11-24T20:24:24+00:00	\N	5
Milk Chocolate Truffles, Milk and White	534d35ea02a5a7910b462f64	550712791da242fd1ec75b55	37466048079	2	\N	\N	230	160	18	13	0	\N	\N	5	35	15	0.5	14	2	2	0	6	2	\N	17	3	balls	36	36	g	https://d1r9wva3zcpswd.cloudfront.net/550713081da242fd1ec75b7c.jpeg	2015-03-16T17:29:46+00:00	\N	76
Honey Wheat Berry Bread	51db37e5176fe9790a89a5bc	545a509f8c56fa5416027816	17072000050	2	\N	\N	90	10	1	0	0	\N	\N	0	210	17	2	1	3	0	0	0	6	\N	16	1	slice	43	43	g	https://d1r9wva3zcpswd.cloudfront.net/545a541e8c56fa5416027926.jpeg	2014-11-24T20:24:24+00:00	\N	26
Skinless & Boneless Sardines, in Water	51db37be176fe9790a898f2e	51c3ee1a97c3e6de73cbb681	70303022054	2	in Water	Sardines, Water, Salt.	160	70	8	2	\N	\N	\N	37	400	0	0	0	24	2	0	30	10	\N	1	85	g	85	85	g	\N	2014-11-24T20:24:24+00:00	\N	22
Frozen Dessert Cake, Vanilla Chocolate Allure	54ca65276f1a024b0f9197aa	54ca652976a774671dab18f0	55000406239	2	\N	\N	90	45	5	3.5	0	\N	\N	0	20	9	0	8	1	0	0	2	0	\N	0	0.100000000000000006	cake	\N	60	ml	https://d1r9wva3zcpswd.cloudfront.net/54de4ea37ea1cda21acc5a60.jpeg	2015-02-13T19:21:08+00:00	\N	77
Island Mango Marinade Sweet and Tangy	51db37c2176fe9790a8991a6	52e7e01ae463807a5c000444	715000000000	2	\N	High Fructose Corn Syrup, Water, Mango Puree, Vinegar, Modified Food Starch, Lemon Juice Concentrate, Sea Salt, Canola Oil, Red Bell Pepper (Dried), Onion (Dried), Xanthan Gum, Potassium Sorbate (as a Preservative), Garlic (Dried), Crushed Red Pepper, Sodium Benzoate (as a Preservative), Jalapeno, Spices, Citric Acid.	25	0	0	\N	0	\N	\N	\N	130	7	\N	5	0	0	0	0	0	\N	32	1	tbsp	17	17	g	https://d1r9wva3zcpswd.cloudfront.net/5360fdc25375dde50ab405c7.jpeg	2014-11-24T20:24:24+00:00	\N	10
Nantucket Blend	51db37b5176fe9790a8988bb	556f5d86af10b73b6528b93a	759000000000	2	\N	\N	130	70	8	0.5	0	2	5	0	0	16	2	12	3	0	2	4	4	\N	26	3	tbsp	30	30	g	https://d1r9wva3zcpswd.cloudfront.net/556f5e552ffdd45d65416937.jpeg	2015-06-03T20:06:46+00:00	\N	10
Sour Baguette	545a5281a1e8ac9e23de3608	557e337bf53555070a95d302	650000000000	2	\N	\N	120	0	0	0	0	\N	\N	0	270	26	0	0	4	0	0	0	4	\N	4	2	oz	57	57	g	https://d1r9wva3zcpswd.cloudfront.net/557e3442368b65e9099d5962.jpeg	2015-06-15T02:11:14+00:00	\N	8
Maple Brown Sugar Oatmeal	545ce7be90529ba36e4e1e71	54748895cabbc1f8661c06ee	858000000000	2	\N	\N	100	10	1	0	0	\N	\N	15	170	9	2	0	14	0	0	15	2	80	7	1	packet	26.6000000000000014	26.6000000000000014	g	https://d1r9wva3zcpswd.cloudfront.net/5474914d5c795fc5771e1d01.jpeg	2014-11-25T14:25:17+00:00	\N	11
Nonfat Yogurt, Vanilla Blended	555f51fa68cd008d7af1e5a6	55c8b8d2df77efc05b0f8e88	21200007873	2	\N	\N	120	0	0	0	0	\N	\N	5	60	16	0.5	13	13	0	0	15	0	\N	\N	1	container	150	150	g	https://d1r9wva3zcpswd.cloudfront.net/55c8b9bc33f7bc2439433d68.jpeg	2015-08-10T14:48:28+00:00	\N	4
Creme Soda, French Vanilla Contour	51db37e3176fe9790a89a46d	51c5443d97c3e6efadd5d5c7	49000052008	2	French Vanilla Contour	Carbonated Water, Natural And Artificial Flavors, Aspartame, Sodium Benzoate (to Protect Taste), Caramel Color, Citric Acid, Acacia	0	0	0	\N	\N	\N	\N	\N	35	0	\N	0	0	0	0	0	0	\N	6	360	ml	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	78
Strawberry Syrup	51db37c0176fe9790a89900e	51c3fcb597c3e6dfa4df1a85	70216242013	2	\N	High Fructose Corn Syrup and/or Sugar, Water, Strawberry and Other Natural Flavors, Citric Acid, Red 40, Xanthan Gum, Sodium Benzoate.	80	0	0	\N	\N	\N	\N	\N	10	21	\N	18	1	0	0	0	0	\N	11	2	tbls	51	51	g	\N	2014-11-24T20:24:24+00:00	\N	79
Happy Hour Snack Mix, Cheddar Bacon	51db37b1176fe9790a898434	5571ae48b1bfe02f228bf054	72049297	2	\N	\N	140	60	7	1	0	\N	\N	0	360	15	2	0	3	2	0	2	2	\N	3	1	oz	28.3999999999999986	28.3999999999999986	g	https://d1r9wva3zcpswd.cloudfront.net/5571ae39a41e6c7a0c329e04.jpeg	2015-06-05T14:12:09+00:00	\N	8
Ravioli Chicken Rosemary	53cd1caa9628b8892a249f00	5460edc48e3df2917ff633be	877000000000	2	\N	\N	290	100	11	4.5	0	\N	\N	70	480	26	1	1	16	8	0	15	4	\N	3.5	1	cup	103	103	g	https://d1r9wva3zcpswd.cloudfront.net/5460f4f4a7f2fb4538e921d4.jpeg	2014-11-24T20:24:24+00:00	\N	5
Pancake and Baking Mix, Organic Buckwheat Flax	54072ca47f1cfd9d3a07a884	550cc8a164b190d529519534	854000000000	2	\N	\N	110	45	4	0	0	\N	\N	0	490	23	6	2	5	0	0	4	2	\N	42	2	pancakes	40	40	g	https://d1r9wva3zcpswd.cloudfront.net/550cc8aa687e40f00ed70092.jpeg	2015-03-21T01:26:02+00:00	\N	60
Bacon Wrapped Pork Tenderloin Filet	51db37e3176fe9790a89a4d3	54de3ffd7d804f5d6b0bd4e6	35243548705	2	\N	\N	280	180	20	7	0	\N	\N	85	760	3	0	3	24	0	0	0	8	\N	2	1	pc	140	140	g	https://d1r9wva3zcpswd.cloudfront.net/54de4a457d804f5d6b0bd836.jpeg	2015-02-13T19:02:30+00:00	\N	80
Bar, Apple Cinnamon Yogurt	51db37f1176fe9790a89a9c5	51c3645a97c3e69de4b0430e	20525121226	2	Apple Cinnamon Yogurt	Other Ingredients: Corn Syrup, Coating [Sugar, Fractionated Palm Kernel Oil, Whey Powder, Nonfat Milk Powder, Yogurt Powder, Lecithin (as an Emulsifier) and Vanilla], Soy Protein, Crisp Rice (Soy Protein Isolate, Rice Flour, Malt), Soy Protein Isolate, High Fructose Corn Syrup, Defatted Soy Grits, Dehydrated Apples, Gum (Gellan Gum, Sodium Citrate), Crystalline Fructose, Natural Flavors, Tricalcium Phosphate, Lecithin (as an Emulsifier), Date Paste, Fig Paste, Glycerin, Vitamin/Mineral Premix (Ascorbic Acid, DL-Alpha-Tocopheryl Acetate, Retinyl Palmitate, Niacinamide, Zinc Oxide, Reduced Iron, Copper Gluconate, Calcium Pantothenate, Vitamin D3, Pyridoxine Hydrochloride, Riboflavin, Thiamin Mononitrate, Cyanocobalamin, Folic Acid, Biotin, Potassium Iodide, Dicalcium Phosphate), Cinnamon Powder, Chromium Polynicotinate, Selenium Amino Acid Chelate.	270	50	6	4	\N	\N	\N	\N	\N	41	2	26	15	100	100	20	90	\N	1	1	bar	72	72	g	\N	2014-11-24T20:24:24+00:00	\N	3
Bread & Butter Pickles, Sweet & Slightly Tangy	51db37b4176fe9790a8987e5	51c548ee97c3e6efadd5fa2a	41820106190	2	Sweet & Slightly Tangy	Fresh Cucumbers, High Fructose Corn Syrup, Vinegar, Contains 2% Or Less of Water, Salt, Spices, Dehydrated Onions, Natural Flavorings, Calcium Chloride, Turmeric (Color), Polysorbate 80, Yellow 5.	35	0	0	\N	\N	\N	\N	\N	135	9	\N	8	0	0	0	0	0	\N	28	28	G	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	12
Smoothie, Light, Strawberry	51db37bd176fe9790a898e8e	51c365e197c3e69de4b04ea7	21130078486	2	Light, Strawberry	Cultured Nonfat Milk, Strawberry Fruit Base [Strawberries, Crystalline Fructose, Natural Flavor, Corn Starch-Modified, Sucralose, Citric Acid, Artificial Color (FD&C Red 40)], Inulin (Polyfructose), Whey Protein Concentrate, Vitamin Premix [Magnesium Phosphate, Maltodextrin, Sodium Ascorbate, Vitamin E (Tocopheryl Acetate), Ferric Orthophosphate, Vitamin A Palmitate, Niacinamide, Zinc, Oxide, D-Calcium Pantothenate, Manganese Sulfate, Vitamin D3 (Cholecalciferol), Pyridoxine Hydrochloride, Thiamine Mononitrate, Chromium Chloride, Sodium Selenite, Riboflavin, Vitamin B12 (Cyanocobalamin), Folic Acid, Potassium Iodide, Biotin], Acesulfame Potassium (a Sweetener), Potassium Sorbate (to Maintain Freshness).	130	0	0	0	0	\N	\N	10	140	26	6	16	10	25	30	30	25	\N	1	1	bottle	283	283	g	\N	2014-11-24T20:24:24+00:00	\N	42
Hard Candies, Chocolate	51db37d4176fe9790a899f12	51c3714997c3e69de4b0ac4d	34000732012	2	Chocolate	Sugar, High Maltose Corn Syrup, Cream, Milk Fat, Cocoa Processed with Alkali, Salt, Vanillin (an Artificial Flavoring), and Soya Lecithin (an Emulsifier).	60	15	1	1	\N	\N	\N	3	30	12	\N	9	0	0	0	0	0	\N	13	3	pc	17	17	g	\N	2014-11-24T20:24:24+00:00	\N	80
Broccoli Cheddar Rice	54761f6ed6d142e27ffbd1ed	54761f6f59752938643a8c68	71117614626	2	\N	\N	190	120	13	8	0	\N	\N	40	570	10	1	1	9	15	20	20	2	\N	10	0.5	cup	110	110	g	https://d1r9wva3zcpswd.cloudfront.net/547627adbbd4fdf6606eb3d2.jpeg	2014-11-26T19:19:12+00:00	\N	5
Traditional Egg Challah	51db37b8176fe9790a898af8	51c3b6f297c3e6d8d3b446a4	14373030021	2	\N	Unbleached Unbromated Flour, Water, Eggs, White Sugar, Margarine, Salt, Vanilla, Yeast.	86	14	1	0	\N	\N	\N	8	123	15	0	\N	3	0	0	1	1	\N	21	1	oz	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	8
Meatballs	51db37b3176fe9790a898678	51c3c77297c3e6d8d3b4c4ab	41646404760	2	\N	Beef, Water, Bread Crumbs [Enriched Flour (Containing: Wheat Flour, Niacin, Reduced Iron, Thiamin Mononitrate, Riboflavin and Folic Acid), Corn Syrup, Sugar, Vegetable Shortening (One or More of the Following: Hydrogenated Soy Bean Oil and/or Cottonseed Oil), Yeast, Contains 2% or Less of the Following: Salt, Soy Flour, Whey, Dough Conditioner (Sodium-Stearoyl, 2 Lactylate), Calcium Propionate], Textured Soy Protein Concentrate (Soy Protein Concentrate, Caramel Color), Egg Whites, Soy Protein Concentrate, Contains 2% or Less of the Following: Romano Cheese (Sheep's Milk, Rennet, Salt), Dehydrated Onion, Pepper, Garlic Powder, Oregano, Parsley, Spices, Flavorings, Corn Syrup Solids, Salt, Sodium Phosphate.	270	200	23	9	\N	\N	\N	50	700	6	4	1	16	2	0	4	8	\N	5	3	meatballs	85	85	g	\N	2014-11-24T20:24:24+00:00	\N	81
Potato Chips, Grilled Cheese	51db37b0176fe9790a8983eb	54fe2c6d3b05d44e59f1c4e8	85239618455	2	\N	\N	140	70	8	1	0	\N	\N	0	160	17	1	1	2	0	6	2	2	\N	8	12	chips	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/54fe48d2ab7c0b1a68eb44b7.jpeg	2015-03-10T01:28:50+00:00	\N	15
X-3 (3-Carbs), Lemon-Lime Citrus Blast	51db37cb176fe9790a8999c0	51c3637b97c3e69de4b03a3a	18200003905	2	Lemon-Lime Citrus Blast	Carbonated Water, High Fructose Corn Syrup, Citric Acid, Natural Flavors, Sodium Bisulfate, Ascorbic Acid (Vitamin C), Caffeine, Potassium Sorbate and Sodium Benzoate (Preserve Freshness), Gum Arabic, Sodium Citrate, Sucralose, Pyridoxine Hydrochloride (Vitamin B6), Vitamin B12, FD&C Yellow No. 5, FD&C Yellow No. 6, FD&C Blue No. 1.	10	0	0	\N	\N	\N	\N	\N	50	3	\N	3	0	0	100	0	0	\N	\N	1	can	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	17
Pesto Alla Genovese	51db37b4176fe9790a8987d7	552234e367d7579618d9c925	31441000083	2	\N	\N	130	120	13	2	0	\N	\N	1	344	2	0	1	1	1	4	4	4	\N	6	2	tbsp	30	30	g	https://d1r9wva3zcpswd.cloudfront.net/5522355af8e01d2b78a05879.jpeg	2015-04-06T07:27:22+00:00	\N	10
Spreadable Cheese, Parmesan With Garlic & Herbs	51db37bc176fe9790a898e3a	51c364ca97c3e69de4b04698	21000016044	2	Parmesan With Garlic & Herbs	Cream Cheese (Pasteurized Milk and Cream, Cheese Culture, Salt, Carob Bean Gum), Skim Milk, Parmesan Cheese (Pasteurized Part-Skim Milk, Cheese Culture, Salt, Enzymes), Cream, Garlic Juice, Contains Less than 1%  of Shredded Asiago Cheese (Pasteurized Part-Skim Milk, Cheese Culture, Salt, Enzymes), Romano Cheese Made from Cow's Milk (Pasteurized Part-Skim Cows Milk, Cheese Culture, Salt, Enzymes), Spice, Sorbic Acid to Preserve Freshness, Guar Gum, Salt, Xanthan Gum, Lactic Acid, Onion Juice Concentrate, Natural Flavor.	90	80	9	5	0	\N	\N	25	140	1	0	0	2	6	0	4	0	\N	7	2	tbsp	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	10
Pepperoncini	5501cc471f92d823593480ce	55d37b80014f8d8a46f9928e	761000000000	2	\N	\N	10	0	0	0	0	\N	\N	0	600	0	1	0	0	\N	\N	\N	\N	\N	47	3	peppers	34	34	g	https://d1r9wva3zcpswd.cloudfront.net/55d3b45bb598d7481f51071e.jpeg	2015-08-18T22:40:28+00:00	\N	82
Burgers, Bison	51db37b3176fe9790a8986b0	54c7de87a2ba011e6faf50e7	60383126001	2	\N	\N	260	162	18	8	1	\N	\N	75	550	2	1	0	22	0	0	2	15	\N	\N	1	burger	142	142	g	https://d1r9wva3zcpswd.cloudfront.net/54c7dec90bcc130b6f1b79be.jpeg	2015-01-27T18:54:02+00:00	\N	47
Popped Chips, Sweet Maui Onion	5460ebc18e3df2917ff63341	54c1470775703ff96a533c7d	72600098169	2	\N	\N	140	30	3.5	0	0	\N	\N	0	220	28	1	5	0	0	0	0	2	\N	1	20	chips	35	35	g	https://d1r9wva3zcpswd.cloudfront.net/54c147422542bbdf60303b70.jpeg	2015-01-22T18:53:55+00:00	\N	15
Cajun Shrimp, Crawfish & Crab Boil	51db37cf176fe9790a899cb8	51c35f4497c3e69de4b01c33	13593534432	2	\N	Salt, Spices, (Includes Black Pepper, Red Pepper and Paprika), Dehydrated Onion and Garlic, Dextrose, Herbs, Natural and Artificial Lemon and Other Spice Extractives, Citric Acid.	0	0	0	0	0	\N	\N	0	1110	0	0	0	0	0	0	0	0	\N	151	0.5	tsp	3	3	g	\N	2014-11-24T20:24:24+00:00	\N	72
Vegi-Dressing, Creamy Dill	51db37cb176fe9790a89987f	51c36afc97c3e69de4b07667	25484000537	2	Creamy Dill	Soymilk (Water, Organic Soybeans), Sunflower and/or Soybean Oil, Cane Juice (Dried), Vinegar,Salt, Xanthan Gum, Garlic Powder, Onion Powder, Lemon Juice Concentrate, Spices, Spinach (Dried), Natural Flavor.	70	60	7	0	\N	\N	\N	0	140	1	0	1	0	0	0	0	0	\N	11	2	tbsp	30	30	g	\N	2014-11-24T20:24:24+00:00	\N	10
Pitted California Ripe Olives	51db37b8176fe9790a898b4d	551f767a54c77bfa51ec9dad	76040000072	2	\N	\N	25	20	2	0	0	0	1.5	0	95	1	\N	\N	0	\N	\N	\N	\N	\N	12	3	olives	14	14	g	https://d1r9wva3zcpswd.cloudfront.net/551f76de37b949795335687c.jpeg	2015-04-04T05:30:06+00:00	\N	83
Mini Toasts	51db37ff176fe9790a89ad67	5566937da431eb610e1af4f2	71656002588	2	\N	\N	68	18	2	1	0	\N	\N	0	64	11	1	0.5	2	0	0	0	0	\N	7	8	toast	16	16	g	https://d1r9wva3zcpswd.cloudfront.net/5566936e7825ed6627085a28.jpeg	2015-05-28T04:02:55+00:00	\N	84
Apple Juice from Concentrate with Added Vitamin C	51db37cb176fe9790a8999a4	51c3612c97c3e69de4b02834	15400013277	2	\N	Water, Apple Juice Concentrate, Ascorbic Acid (Vitamin C).	110	0	0	0	\N	\N	\N	0	35	28	\N	28	0	0	130	0	0	\N	8	8	fl oz	226	226	g	\N	2014-11-24T20:24:24+00:00	\N	2
Soup, Organic, Signature Tortilla	51db37e4176fe9790a89a555	51d2fc05cc9bff111580e07f	58328761547	2	Organic, Signature Tortilla	Water, Organic Vegetable Stock (Water, Vegetables (Certified Organic Ingredient), Reconstituted Vegetables (Certified Organic Ingredient), [Carrots (Certified Organic Ingredient), Celery (Certified Organic Ingredient), Onions (Certified Organic Ingredient), Tomatoes (Certified Organic Ingredient)]), Organic Diced Tomatoes in Organic Tomato Juice, Organic Corn, Organic Tomato Puree (Water, Organic Tomato Paste), Organic Onions, Organic Black Beans, Organic White Corn Masa, Organic Red Peppers, Contains Less than 2% of: Organic Extra Virgin Olive Oil, Organic Evaporated Cane Sugar Juice, Salt, Organic Spice, Organic Cane Sugar, Organic Maltodextrin, Organic Soy Sauce (Water, Soybeans (Certified Organic Ingredient), Salt, Alcohol (Certified Organic Ingredient)), Sea Salt, Organic Jalapeno Peppers, Organic Cilantro, Organic Oregano, Flavoring, Organic Dehydrated Onion, Organic Potato Starch, Yeast Extract, Organic Dehydrated Garlic. Gluten free.	140	30	3	1	0	\N	\N	0	680	21	6	8	5	8	2	6	8	\N	2	1	cup	205	205	g	\N	2014-11-24T20:24:24+00:00	\N	5
Grapeseed Oil	51db37e6176fe9790a89a6aa	51c3d1bf97c3e6d8d3b516fa	56240009945	2	\N	Grapeseed Oil.	120	120	14	1	0	\N	\N	0	0	0	\N	\N	0	0	0	0	0	\N	68	1	tbsp	14	14	g	\N	2014-11-24T20:24:24+00:00	\N	10
Chocolate Cakes	5457c49153af3d475e632af2	55275eb04dc5e9ff44b3382b	655000000000	2	\N	\N	160	27	3	1	0.100000000000000006	\N	\N	10	200	28	5	17	5	0	0	4	4	\N	\N	51	g	51	51	g	https://d1r9wva3zcpswd.cloudfront.net/55275fbbd75bd6832e5e4e85.jpeg	2015-04-10T05:29:32+00:00	\N	22
Lean Body, Strawberries & Cream	51db37b3176fe9790a898735	5519db827e0a3a0f4e6f31eb	118000000000	2	\N	\N	260	80	9	1	0	\N	\N	25	550	9	5	0	40	25	25	40	25	\N	1	1	drink box	\N	500	ml	https://d1r9wva3zcpswd.cloudfront.net/5519dd022e71ab0f58092c1d.jpeg	2015-03-30T23:32:18+00:00	\N	85
Milk, 2% Reduced Fat, Vitamin D Added	51db37bc176fe9790a898e4f	51c3c0d497c3e6d8d3b49267	79997000645	2	2% Reduced Fat, Vitamin D Added	Reduced Fat Milk, Vitamin A Palmitate and Vitamin D3 Added.	130	45	5	3	0	\N	\N	20	125	13	0	12	8	10	2	30	0	\N	2	1	cup	226	226	g	\N	2014-11-24T20:24:24+00:00	\N	5
Kickin' Sweet Potato Fries Straight Cut	51db37c2176fe9790a899183	52b7bdacd4a4ee243a00080c	852000000000	2	\N	\N	140	60	6	1	0	\N	\N	0	590	19	4	6	2	110	2	2	4	\N	7	3	oz	84	84	g	https://d1r9wva3zcpswd.cloudfront.net/536bc04df1f85db0054dd8bd.jpeg	2014-11-24T20:24:24+00:00	\N	8
Rustic Ciabatta Loaf	51db37c5176fe9790a8993a9	55226d5734a170c23965eb60	607000000000	2	\N	\N	150	0	0.5	0	0	\N	\N	0	370	31	1	0	5	0	0	2	10	\N	4	2	inch slice	57	57	g	https://d1r9wva3zcpswd.cloudfront.net/55226d618bf6821d508254f2.jpeg	2015-04-06T11:26:26+00:00	\N	14
Lightly Salted Macadamia Nuts	547f1a4ba603b7a9696cdf19	54bcc5dd4f94662447fdf569	24048004622	2	\N	\N	110	100	11	2	0	\N	\N	0	30	2	1	1	1	0	0	0	1	\N	5	0.5	oz	14	14	g	https://d1r9wva3zcpswd.cloudfront.net/54bcc7d3df49969d2f183825.jpeg	2015-01-19T09:01:07+00:00	\N	8
Carrots, In Escabeche 7 Oz	51db37dd176fe9790a89a0f4	51c541e397c3e6efadd5c2ff	30684939761	2	In Escabeche 7 Oz	Carrots, Onions, Jalapeno Peppers, Water, Vinegar, Salt, Sugar, Spices and Calcium Chloride.	15	0	0	\N	\N	\N	\N	\N	490	2	0	1	0	80	4	0	2	\N	7	30	G	30	30	g	\N	2014-11-24T20:24:24+00:00	\N	12
Candy, Gummi Worms	51db37c8176fe9790a8995b6	51c3ed5497c3e6de73cbb136	83350019434	2	Gummi Worms	Corn Syrup, Sugar, Gelatin, Citric Acid, White Grape Juice Concentrate, Hydrogenated Coconut Oil (Adds a Trivial Amount of Fat), Natural and Artificial Flavor, Carnauba Wax, Red 40, Yellow 5, Yellow 6, Blue 1, Beeswax.	190	0	0	\N	0	\N	\N	\N	0	46	\N	40	4	0	0	0	0	\N	1	1	package	71	71	g	\N	2014-11-24T20:24:24+00:00	\N	23
Monster Trail Mix	51db37b0176fe9790a8983eb	52cd67b9d0eefe626b000f60	85239807866	2	\N	Peanuts, Chocolate Candies (Milk Chocolate [Sugar, Chocolate, Skim Milk, Cocoa Butter, Lactose, Milkfat, Soy Lecithin, Salt, Artificial Flavors], Sugar, Cornstarch, Less than 1% of the Following: Corn Syrup, Dextrin, Coloring [Includes Blue 1 Lake, Red 40 Lake, Yellow 6, Yellow 5, Red 40, Blue 1, Blue 2 Lake, Yellow 6 Lake, Yellow 5 Lake, Blue 2], Gum Acacia), Raisins Coated with Less than 1% Sunflower and/or Canola Oil, Milk Chocolate Chips (Sugar, Cocoa Butter, Whole Milk Powder, Chocolate Liquor, Soy Lecithin, Vanillin [Artificial Flavoring]), Peanut Butter Chips (Sugar, Partially Hydrogenated Vegetable Oil [Palm Kernel and/or Soybean], Partially Defatted Peanuts, Nonfat Dry Milk Powder, Whey Powder, Reduced Minerals Whey, Peanut Butter [Peanuts, Hydrogenated Rapeseed and Cottonseed Oil], Dextrose, Contains 1% or Less of the Following: Salt, Soy Lecithin and Vanillin [Artificial Flavor]), Vegetable Oil (Peanut, Cottonseed, Soybean and/or Sunflower Seed).	170	90	9	3.5	0	\N	\N	0	20	20	1	16	4	0	0	4	2	\N	11	0.25	cup	36	36	g	https://d1r9wva3zcpswd.cloudfront.net/536b9cc9f1f85db0054dce9a.jpeg	2015-03-09T17:37:52+00:00	\N	5
Oven Roasted Sliced Almonds	51db37b4176fe9790a898796	5548e6eb27d8878c7109e4d0	78735217	2	\N	\N	40	35	3.5	\N	\N	\N	\N	\N	30	1	1	\N	2	\N	\N	2	2	\N	14	1	tbsp	7	7	g	https://d1r9wva3zcpswd.cloudfront.net/5548e6546ed6300565d181fe.jpeg	2015-05-05T15:48:36+00:00	\N	10
Dark Chocolates, Assorted	51db37b3176fe9790a8986ea	51c36fbc97c3e69de4b09d4c	31290044412	2	Assorted	Bittersweet Chocolate (Chocolate Liquor (Processed with Alkali), Sugar, Cocoa Butter, Butteroil, Milk, Soy Lecithin (Emulsifier), Natural Flavor), Heavy Cream, High Fructose Corn Syrup, Invert Sugar, Sugar, Milk, Evaporated Milk (Vitamin D), Partially Hydrogenated Palm Kernel Oil, Brown Sugar, Cocoa Butter, Chocolate Liquor, Breakfast Cocoa, Soy Lecithin (Emulsifier), Salt, Natural Flavor.	200	100	11	7	\N	\N	\N	5	55	22	2	18	2	0	0	0	10	\N	3	5	pieces	40	40	g	\N	2014-11-24T20:24:24+00:00	\N	6
Dark Chocolate, with Whole & Chopped Hazelnuts	51db37c6176fe9790a899467	51c3b81f97c3e6d8d3b44fde	39456001354	2	with Whole & Chopped Hazelnuts	Sugar, Hazelnuts, Chocolate Processed with Alkali, Cocoa Butter, Milk, Milkfat, Soy Lecithin, Vanillin - an Artificial Flavour.	150	100	11	4	0	\N	\N	3	0	15	1	12	2	0	0	2	2	\N	1	1	package	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	23
Spring Caramel Chocolate Trio	51db37c0176fe9790a89900f	5523f759133842e32049521e	748000000000	2	\N	\N	220	120	13	8	0	\N	\N	5	70	28	2	22	2	2	0	4	8	\N	5	3	squares	45	45	g	https://d1r9wva3zcpswd.cloudfront.net/5523f8b051c0ecdf2ec64fe1.jpeg	2015-04-07T15:33:04+00:00	\N	68
Coffee Creamer, Original	51db37b0176fe9790a8983f0	51c3bc9b97c3e6d8d3b470e2	75450059731	2	Original	Corn Syrup Solids, Partially Hydrogenated Soybean Oil, Sodium Caseinate (a Milk Derivative), Dipotassium Phosphate, Mono and Diglycerides, Silicon Dioxide, Artificial Color, Sodium Stearoyl Lactylate, Soy Lecithin, Artificial Flavor.	10	5	0	0	\N	\N	\N	0	0	1	0	0	0	0	0	0	0	\N	312	1	teaspoon	2	2	g	\N	2014-11-24T20:24:24+00:00	\N	86
Chocolate Covered Mini Pretzels	5457c0ca53af3d475e6329e8	559ac79f41940ee65000554c	30034078812	2	\N	\N	150	60	7	4	0	\N	\N	5	130	19	1	11	2	0	0	4	4	\N	2	4	pretzels	29	29	g	https://d1r9wva3zcpswd.cloudfront.net/559ae32e80c4c1c644e97762.jpeg	2015-07-06T20:21:02+00:00	\N	52
Turkey Breast (854002), Oven Roasted	51db37cf176fe9790a899ce5	51c5408597c3e6efadd5b803	42222854023	2	Oven Roasted	Turkey Breast Meat, Turkey Broth, Contains 2% Or Less Salt, Modified Food Starch, Sodium Phosphate, Carrageenan, Flavoring.	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	\N	\N	56	G	56	56	g	\N	2014-11-24T20:24:24+00:00	\N	12
Milk Chocolate Cashew Torties	51db37c9176fe9790a899603	545a50fd8c56fa5416027834	35900252723	2	\N	\N	180	100	11	5	0	\N	\N	10	35	20	1	13	3	2	0	4	4	\N	2.29999999999999982	3	pieces	43	43	g	https://d1r9wva3zcpswd.cloudfront.net/545a54c538554b701693aa83.jpeg	2014-11-24T20:24:24+00:00	\N	6
Ghostly Giggles, Minis, Crunchy	51db37c8176fe9790a8995d7	51c3b9b697c3e6d8d3b45bb9	40000162582	2	Minis, Crunchy	Milk Chocolate (Sugar, Cocoa Butter, Skim Milk, Chocolate, Milkfat, Lactose, Soy Lecithin, PGPR, Artificial Flavors, Salt), Rice Flour, Sugar, Less than 2% - Cocoa Butter, Barley Malt Extract, Salt, Coloring (Includes Yellow 6 Lake, Yellow 5 Lake, Red 40 Lake, Blue 1 Lake, Turmeric Yellow 5, Yellow 6, Blue 1, Red 40, Blue 2 Lake, Blue 2), Cornstarch, Corn Syrup, Dextrose, Calcium Carbonate, PGPR, Dextrin.	200	90	10	6	0	\N	\N	5	30	25	1	23	2	0	0	4	0	\N	8	6	pieces	37	37	g	\N	2014-11-24T20:24:24+00:00	\N	6
Tuna, Albacore, Solid White in Water	51db37be176fe9790a898f2e	51c3bac097c3e6d8d3b46446	70303024904	2	Albacore, Solid White in Water	Solid White Albacore Tuna, Water, Salt.	70	10	1	0	0	\N	\N	25	250	0	0	0	14	0	0	0	2	\N	2	0.25	cup	56	56	g	\N	2014-11-24T20:24:24+00:00	\N	5
Maintenance Elemental Diet, Unflavored Powder	51db37c9176fe9790a89965a	51c3c98597c3e6d8d3b4d345	43900458052	2	Unflavored Powder	Maltodextrin (Corn), Magnesium Gluconate, L-Glutamine, Calcium Glycerophosphate, L-Arginine Acetate, Food Starch Modified (Corn), L-Aspartic Acid, Glycine, L-Lysine Acetate, L-Leucine, Safflower Oil, Potassium Chloride, L-Proline, L-Phenylalanine, L-Valine, L-Alanine, L-Methionine, L-Threonine, L-Isoleucine, Sodium Phosphate Dibasic, L-Serine, Potassium Sorbate, Potassium Citrate, L-Histidine Monohydrochloride Monohydrate, Sodium Citrate, L-Tryptophan, L-Tyrosine, Choline Bitartrate, Polyoxyethylene Sorbitan Monooleate, Ascorbic Acid, Ferrous Sulfate, Alpha Tocopheryl Acetate, Zinc Sulfate, Niacinamide, Copper Gluconate, Calcium Pantothenate, Manganese Sulfate, Ascorbyl Palmitate (to Preserve Freshness), Vitamin A Palmitate, Alpha Tocopherol (to Preserve Freshness), Pyridoxine Hydrochloride, Riboflavin, Thiamine Hydrochloride, Chromic Acetate, Folic Acid, BHA/BHT (to Preserve Freshness), Biotin, Potassium Iodide, Sodium Molybdate, Sodium Selenite, Phytonadione (Vitamin K1), Cholecalciferol (Vitamin D3), Cyanocobalamin (Vitamin B12).	375	0	0	\N	\N	\N	\N	\N	176	85	\N	\N	8	21	21	21	21	\N	\N	100	g	100	100	g	\N	2014-11-24T20:24:24+00:00	\N	22
Flavored Juice Drink, Fruit Punch	51db3816176fe9790a89b365	550782ce02d374b7239057bf	87684006382	2	\N	\N	130	\N	0	\N	\N	\N	\N	\N	25	34	\N	33	0	\N	10	\N	\N	\N	\N	1	pouch	\N	331	ml	https://d1r9wva3zcpswd.cloudfront.net/550783d0f36acf0a524dc636.jpeg	2015-03-17T01:30:56+00:00	\N	53
Mixed Nuts, Deluxe, No Peanuts	51db37b2176fe9790a8984d7	51c3d13997c3e6d8d3b512ea	50428451540	2	Deluxe, No Peanuts	Cashews, Almonds, Brazil Nuts, Filberts/Hazelnuts, Pecans, Peanut and/or Canola and/or Cottonseed Oil, Sea Salt.	170	140	15	2	0	\N	\N	0	110	6	2	1	5	0	0	4	8	\N	9	0.25	cup	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	5
Fork Split English Muffins	5538f8c1d578002052e739e6	5576f3a90be581303f311ae7	836000000000	2	\N	\N	130	10	1.5	0.5	0	0	0	0	110	26	1	6	5	0	0	4	8	\N	6	1	muffin	57	57	g	https://d1r9wva3zcpswd.cloudfront.net/5576f644a1a3546857b9d853.jpeg	2015-06-09T14:20:52+00:00	\N	44
Croutons, Bacon	51db37b4176fe9790a8987c2	51c3c4e397c3e6d8d3b4b1e5	17017010021	2	Bacon	Enriched Wheat Flour (Wheat Flour, Malted Barley Flour, Niacin, Reduced Iron, Thiamin Mononitrate, Riboflavin, and Folic Acid), Water, Canola Oil, Bacon Flavored Seasoning (Salt, Paprika, Garlic, Maltodextrin, Natural Flavor, Autolyzed Yeast Extract and Less than 2% Silicon Dioxide Added to Prevent Caking), Palm Oil Shortening, Dextrose, Sea Salt, and Yeast.	30	12	1	0	0	\N	\N	0	85	4	0	0	0	1	0	0	1	\N	18	6	croutons	7	7	g	\N	2014-11-24T20:24:24+00:00	\N	87
Corndogs	51db37b1176fe9790a89846d	51c3c7b597c3e6d8d3b4c696	59987060712	2	\N	Batter: Water, Enriched Wheat Flour and Enriched Corn Meal (Both Enriched with: Niacin, Iron, Thiamine Mononitrate, Riboflavin, Folic Acid), Sugar, Salt, Baking Powder (Sodium Aluminum Phosphate, Sodium Bicarbonate), Whey Solids, Soy Flour, Whole Dried Eggs, Fried in Vegetable Oil. Chicken Frank: Mechanically Separated Chicken, Water, Salt, Contains 2% or Less of the Following: Corn Syrup Solids, Spices, Potassium Lactate, Sodium Phosphate, Sodium Diacetate, Flavorings Sodium Erythorbate, Sodium Nitrite.	270	140	15	\N	\N	\N	\N	50	730	22	1	\N	10	0	0	8	15	\N	6	1	corn dog	125	125	g	\N	2014-11-24T20:24:24+00:00	\N	88
Pizza Snacks, Pepperoni & Bacon	553bf00dd2aa910638bbaf13	553bef3c826ced140d5856fe	63100109578	2	\N	\N	210	72	8	3.5	0.100000000000000006	\N	\N	15	420	23	2	4	12	6	2	10	8	\N	\N	1	pizza snack	85	85	g	https://d1r9wva3zcpswd.cloudfront.net/553bef9bd2d6d6b2797273ea.jpeg	2015-04-25T19:48:43+00:00	\N	89
Just Chicken	51db381b176fe9790a89b587	54f4f16b687cb1c252cc1580	30204386	2	\N	\N	130	25	2.5	1	0	\N	\N	65	210	1	0	0	24	0	0	2	4	\N	5	3	oz	85	85	g	https://d1r9wva3zcpswd.cloudfront.net/54f5b725a79a909a0a3e6f77.jpeg	2015-03-03T13:29:10+00:00	\N	8
Pure Vanilla Extract	5564ed4e0620b94f48f419bd	55858fa8f1572eb8087562b4	16291445802	2	\N	\N	12	\N	0	\N	\N	\N	\N	\N	0	0	\N	\N	0	\N	\N	\N	\N	\N	23	1	tsp	\N	5	ml	https://d1r9wva3zcpswd.cloudfront.net/558591b0c24f6c897deb3b75.jpeg	2015-06-20T16:15:45+00:00	\N	72
Massive Whey Gainer, Delicious Strawberry Flavor	51db37ca176fe9790a899789	51c3d03997c3e6d8d3b50a52	99071002020	2	Delicious Strawberry Flavor	Premium Ultra and Microfiltrated Whey Protein (High Protein Concentrate and Isolate), Glucose Polymers (Maltodextrin), Crystalline Fructose, Natural Strawberry Flavor, Natural and Artificial Vanilla Flavor, Beet Powder (Color), Ascorbic Acid, Vitamin A Palmitate, Niacinamide, Calcium Pantothenate, Vitamin D3, Riboflavin, Vitamin E Acetate, Thiamin Mononitrate, Pyridoxine HCL, Vitamin B12, Folic Acid, and Biotin. Essential Amino Acids: L-Leucine (7020 mg), L-Isoleucine (3390 mg), L-Valine (2626 mg), L-Lysine (5826 mg), L-Threonine (2294 mg), L-Methionine (1127 mg), L-Phenylalanine (2116 mg), L-Tryptophan (1401 mg). Non-Essential Amino Acids: L-Arginine (1003 mg), L-Aspartic Acid (5641 mg), L-Cystine/Cystein (2024 mg), L-Alanine (2778 mg), L-Glutamic Acid (9276 mg), L-Glycine (1038 mg), L-Histidine (1127 mg), L-Proline (2273 mg), L-Serine (2149 mg), L-Tyrosine (1889 mg).	628	36	4	2	\N	\N	\N	57	105	93	0	42	55	0	0	23	0	\N	12	4	scoops	167	167	g	\N	2014-11-24T20:24:24+00:00	\N	73
Candy Bar, Triple Dazzle Caramel	51db37be176fe9790a898ee1	51c3ed1597c3e6de73cbaf69	79200034757	2	Triple Dazzle Caramel	Sugar, Cocoa Butter, Corn Syrup, Chocolate, Nonfat Milk, Sweetened Condensed Milk, Butter, Milkfat, Lactose, Less than 2% of Hydrogenated Coconut Oil, Fructose, Natural and Artificial Flavors, Salt, Mono and Diglycerides, Soy Lecithin, TBHQ and Citric Acid (to Preserve Freshness).	200	100	12	7	0	\N	\N	10	75	22	1	18	1	2	0	4	0	\N	2.5	4	pieces	40	40	g	\N	2014-11-24T20:24:24+00:00	\N	6
Raw Local Honey	54982f6b4112493933526359	54982f43dffb5d754bfcc6f0	894000000000	2	\N	\N	90	0	0	0	0	\N	\N	0	0	23	3	24	3	0	8	6	0	\N	\N	1	bottle	\N	296	ml	https://d1r9wva3zcpswd.cloudfront.net/5498394a83faf9150d6a2933.jpeg	2014-12-22T15:31:22+00:00	\N	42
Candy, Pull-N-Peel, Cherry, King Size	51db37d3176fe9790a899efd	51c3712b97c3e69de4b0ab57	34000531073	2	Pull-N-Peel, Cherry, King Size	Corn Syrup, Enriched Wheat Flour (Flour, Niacin, Ferrous Sulfate, Thiamine Mononitrate, Riboflavin, and Folic Acid), Sugar, Contains 2% or Less of: Palm Oil, Glyceryl Monostearate, Salt, Cornstarch, Glycerin, Natural and Artificial Flavor, Citric Acid, Potassium Sorbate (Preservative), Artificial Color (Red 40), Sulfur Dioxide, to Maintain Freshness.	140	5	1	0	0	\N	\N	0	85	31	0	17	0	0	0	0	2	\N	45	2	pieces	40	40	g	\N	2014-11-24T20:24:24+00:00	\N	6
Sweet N' Tangy BBQ 6.75 Oz, Seasoning	51db37b2176fe9790a89854c	51c549a497c3e6efadd5ffc2	30684894718	2	Seasoning	Salt, Brown Sugar, Sugar, Dehydrated Tomato, Garlic Powder, Chili Pepper and Other Spices, Onion Powder, Molasses, Maltodextrin, Calcium Stearate and Calcium Slicate (Anti-Caking Agents), Soy Sauce (Wheat, Soybeans, Salt) Soy Flour, Wheat Starch, Red Pepper, Extractives of Paprika (Color), Natural Smoke Flavor, Disodium Inosinate and Guanylate, White Distilled Vinegar and Lecithin. Contains Soy and Wheat.	5	0	\N	\N	\N	\N	\N	\N	95	1	\N	\N	0	0	0	0	0	\N	192	1	G	1	1	g	\N	2014-11-24T20:24:24+00:00	\N	12
Preserves, Raspberry Apricot Pecan	51db37e2176fe9790a89a461	51c3644797c3e69de4b04275	20138133258	2	Raspberry Apricot Pecan	Fruit (Apricots, Raspberries), Sugar, Pecans, Pectin.	50	0	0	0	\N	\N	\N	0	0	13	0	13	0	0	2	0	0	\N	15	1	tbsp	21	21	g	\N	2014-11-24T20:24:24+00:00	\N	10
Gravy Mix, The Original	51db37b5176fe9790a898866	51c3c5a097c3e6d8d3b4b82d	56781000753	2	The Original	Potato Starch, Salt, Wheat Starch, Caramel Color, Dried Yeast, Onion Powder.	10	0	0	\N	\N	\N	\N	\N	420	3	\N	0	0	0	0	0	0	\N	50	1.5	tsp	5	5	g	\N	2014-11-24T20:24:24+00:00	\N	72
Peanuts, Brittle 8 Oz	51db37c9176fe9790a8996a6	51c549d897c3e6efadd6014e	30684840470	2	Brittle 8 Oz	Peanuts, Syrup, Sugar, Baking Soda. May Contain Nut Traces.	130	40	4	1	0	\N	\N	0	10	18	1	10	4	0	0	0	0	\N	12	28	G	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	12
Garden Mashers, Cheddar Potatoes & Broccoli	51db37b6176fe9790a89896d	51c357d197c3e69de4aff016	1570000094	2	Cheddar Potatoes & Broccoli	Potatoes (Water, Dried Potatoes), Water, Broccoli, Dried Cheddar Cheese, (Pasteurized Milk, Cheese Culture, Salt, Enzymes), Potato Starch, Butter, Pear Juice Concentrate, Salt, Onion/Powder, Whey (From Milk), Dried Cheese (Cultured Pasteurized Milk, Salt, Enzymes, Dried Yeast, Autolyzed Yeast Extract, Natural Flavor, Buttermilk Powder, Annatto Color and Soy Lecithin.	80	20	\N	\N	0	\N	\N	\N	\N	\N	\N	1	3	6	0	6	2	\N	1	1	container	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	4
Turkey Meatballs (821506), Italian Style Lean	51db37b3176fe9790a898644	51c542aa97c3e6efadd5c906	42222821568	2	Italian Style Lean	Turkey, Water, Seasoning (Dehydrated Onion, Dried Cane Syrup, Salt, Spices, Dehydrated Garlic, Dehydrated Parsley, Spice Extract), Rice Bran, Soy Protein Concentrate (With Caramel Color), Natural Flavoring.	160	80	8	2	0	\N	\N	75	620	3	0	1	18	0	2	4	8	\N	4	84	G	84	84	g	\N	2014-11-24T20:24:24+00:00	\N	12
Beef Steaks, Loin, Top Sirloin	51db37b8176fe9790a898aee	51d37db4cc9bff5553aaa60e	201000000000	2	Loin, Top Sirloin	100% US beef.	270	180	20	8	\N	\N	\N	75	65	0	\N	\N	21	0	0	0	10	\N	\N	4	oz	112	112	g	\N	2014-11-24T20:24:24+00:00	\N	8
Choco Pie	51db382e176fe9790a89b8db	55678fba759f78be7bd7d861	717000000000	2	\N	\N	130	45	5	3.5	0	\N	\N	0	75	20	0.5	12	1	0	0	2	4	\N	48	30	g	30	30	g	https://d1r9wva3zcpswd.cloudfront.net/556790a3759f78be7bd7d897.jpeg	2015-05-28T22:03:15+00:00	\N	22
Baobab Superfood Chews, Raspberry	54072c9c7f1cfd9d3a07a881	54072c9f7f1cfd9d3a07a883	854000000000	2	\N	\N	90	0	1	0	0	\N	\N	0	0	30	7	14	2	1	60	2	0	40	\N	1	packet	40	40	g	https://d1r9wva3zcpswd.cloudfront.net/54073998a67cfab13a61ab11.jpeg	2014-11-24T20:24:24+00:00	\N	11
Chicken Wings, Sweet Paprika	551fae666e3c45d33db7f73a	55310aa763c037a064fb5967	770000000000	2	\N	\N	290	162	18	5	0	\N	\N	75	610	7	1	6	25	2	0	2	8	\N	\N	4	pieces	100	100	g	https://d1r9wva3zcpswd.cloudfront.net/55310bf0d00705285809b2c9.jpeg	2015-04-17T13:34:41+00:00	\N	6
Salted Caramel Crunch	555f51fa68cd008d7af1e5a6	55843f726516c17a2bfbc3d2	2417000055	2	\N	\N	190	45	5	2.5	0	\N	\N	15	170	25	0.5	17	12	0	0	15	4	\N	\N	1	container	150	150	g	https://d1r9wva3zcpswd.cloudfront.net/55843fbf6516c17a2bfbc3df.jpeg	2015-06-19T16:13:51+00:00	\N	4
Seasoned Plum	51db37cf176fe9790a899c8e	55196b846bf10321588142e0	11152139869	2	\N	\N	20	0	0	0	0	\N	\N	0	1290	5	1	4	0	0	0	0	0	\N	3.5	1	oz	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/55196c442e71ab0f580927f3.jpeg	2015-03-30T15:31:16+00:00	\N	8
Whipped Cream Cheese, Chive	51db37bc176fe9790a898e3a	553c5fca9e6799856f9579b2	68100896503	2	\N	\N	35	27	3	2	0.100000000000000006	\N	\N	10	75	1	0	1	1	4	0	2	0	\N	\N	12	gram	12	12	g	https://d1r9wva3zcpswd.cloudfront.net/553c610aa106f6d21deaac8e.jpeg	2015-04-26T03:52:42+00:00	\N	90
Gluten Free, Chocolate Chunk Cookies	51db37b9176fe9790a898b86	54fe645f74a6d29e2f18ff57	856000000000	2	\N	\N	80	35	4	2.5	0	0	1	10	45	12	1	6	1	0	0	0	4	\N	14	1	cookie	18	18	g	https://d1r9wva3zcpswd.cloudfront.net/54fe817128e6258d2fcf900f.jpeg	2015-03-10T05:30:25+00:00	\N	70
Yogurt, Nonfat,  Strawberry Flavor, with Rainbow Sprinkles	51db37c5176fe9790a89933c	51d2fd8ccc9bff111580ead3	36632009760	2	Nonfat,  Strawberry Flavor, with Rainbow Sprinkles	Strawberry Flavored Nonfat Yogurt (Cultured Grade A Non Fat Milk, Sugar, Water, Modified Food Starch, Contains Less than 1% of Modified Corn Starch, Kosher Gelatin, Natural Flavors, Agar Agar, Beta Carotene and Black Carrot Juice Concentrate (for Color), Malic Acid, Potassium Sorbate (to Maintain Freshness), Sodium Citrate, Vitamin D3). Naturally and Artificially Flavored Sprinkles Topping (Sugar, Corn Starch, Palm Oil, Palm Kernel Oil, Dextrin, Confectioner's Glaze (Shellac) Contains Less than 1% of Soy Lecithin, Carnauba Wax, Red 3, Red 40, Blue 1 Lake, Yellow 5 Lake, Yellow 6 Lake, Red 40 Lake).	110	20	2	2	0	\N	\N	3	50	20	0	14	3	0	0	10	0	\N	4	1	container	100	100	g	\N	2014-11-24T20:24:24+00:00	\N	4
Vanilla Sugar Cookies	51db37b9176fe9790a898c49	559a8e5795f6dfe42fd64407	666000000000	2	\N	\N	70	30	3.5	1.5	0	0	1.5	10	30	10	0	5	0.5	\N	\N	\N	\N	\N	24	1	cookie	17	17	g	https://d1r9wva3zcpswd.cloudfront.net/559a8e6f0d5df1010b06a650.jpeg	2015-07-06T14:19:27+00:00	\N	70
French Bread	526831133203b9c3390001c8	55bb1771b7b4ce5e0f73bc26	41172000368	2	\N	\N	130	10	1.5	0.5	0	\N	\N	0	250	26	1	2	3	0	0	0	10	\N	8	2	oz	58	58	g	https://d1r9wva3zcpswd.cloudfront.net/55bb196527d1bbae4747748c.jpeg	2015-07-31T06:44:53+00:00	\N	8
Butter Pancake Syrup	51db37c5176fe9790a899358	52b65898ab70f55d2e0006fb	725000000000	2	\N	\N	210	0	0	\N	\N	\N	\N	\N	140	53	0	29	0	\N	\N	\N	\N	\N	12	0.25	cup	\N	60	ml	https://d1r9wva3zcpswd.cloudfront.net/536bb5d0f1f85db0054dd55e.jpeg	2014-11-24T20:24:24+00:00	\N	5
Pine Nuts	51db37c3176fe9790a899268	51c3d0ac97c3e6d8d3b50e25	99137205525	2	\N	Pine Nuts.	213	189	21	2	0	\N	\N	0	0	4	2	1	3	0	0	0	0	\N	2.79999999999999982	0.25	cup	23	23	g	\N	2014-11-24T20:24:24+00:00	\N	5
Lemonade Iced Tea, Half & Half, Diet	51db37b3176fe9790a898712	51d2fb23cc9bff111580da5e	76183000199	2	Half & Half, Diet	Our Real Tea Starts with the Finest Tea Leaves and is Made From: Filtered Water, Clarified Lemon Juice Concentrate, Citric Acid, Natural Flavors, Tea, Potassium Citrate, Sucralose, Acesulfame Potassium.	10	0	0	\N	\N	\N	\N	\N	15	1	\N	\N	0	\N	\N	\N	\N	\N	6	1	bottle	\N	\N	g	https://d1r9wva3zcpswd.cloudfront.net/536b8f92480d28113fe8d2f1.jpeg	2014-11-24T20:24:24+00:00	\N	42
Pistachios	51db37cb176fe9790a8998aa	51c3643597c3e69de4b041de	20022010634	2	\N	Pistachios, Salt.	180	130	16	2	0	\N	\N	0	230	8	3	2	4	2	4	4	6	\N	5	0.25	cup	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	5
Pie Filling & Topping, Premium Dark Sweet Cherry	51db37b1176fe9790a898476	51c53ecc97c3e6efadd5aa90	41255431867	2	Premium Dark Sweet Cherry	Dark Sweet Cherries, Water, Liquid Sugar (Natural Sugar, Water), Food Starch-Modified, Natural And Artificial Flavor, Artificial Color (Red 40), Erythorbic Acid (to Promote Color Retention).	70	0	0	0	0	\N	\N	0	25	18	0	14	0	0	0	0	0	\N	7	89	G	89	89	g	\N	2014-11-24T20:24:24+00:00	\N	12
Cranberry Couscous	5268310f3203b9c33900015e	550b06c0e267112c38544470	36406303117	2	\N	\N	310	150	17	1.5	0	\N	\N	\N	140	35	3	9	5	0	4	\N	4	\N	3.5	4	oz	140	140	g	https://d1r9wva3zcpswd.cloudfront.net/550b07a3b6129de43be896f9.jpeg	2015-03-19T17:30:11+00:00	\N	8
Trail Mix Clusters	51db37e7176fe9790a89a6f5	55ba5304662a9d00795ded12	4141426	2	\N	\N	220	120	13	5	0	\N	\N	5	50	25	2	21	3	0	2	6	4	\N	5	0.25	cup	43	43	g	https://d1r9wva3zcpswd.cloudfront.net/55ba5336662a9d00795ded2a.jpeg	2015-07-30T16:39:18+00:00	\N	5
Pop Grains Snack Squares	51db37b2176fe9790a898543	5600c1b46cfbe037067d4c64	78907399077	2	\N	\N	130	40	4.5	0	0	0	3	0	110	20	3	0	2	0	0	0	4	\N	20	1	oz	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/5600c3f495e068d83db77061.jpeg	2015-09-22T02:59:01+00:00	\N	8
Rich & Creamy Variety Pack, Probiotic Banana & Strawberry Blended Lowfat Yogurt	51db37bc176fe9790a898df6	51c54acb97c3e6efadd608fe	53600001465	2	Probiotic Banana & Strawberry Blended Lowfat Yogurt	Banana Ingredients: Cultured Pasteurized Grade A Lowfat Milk, Sugar, Nonfat, Milk Solids, Modified Cornstarch, Banana Puree, Fructose, Kosher Gelatin, Natural Flavors, Citric Acid, Potassium Sorbate (to Maintain Freshness), Turmeric (Color), Vitamin A Palmitate And Vitamin D3. Contains Active Yogurt With L. Bulgaricus, S. Thermophilus, Bifidobacterium Bb-12(R), L. Acidophilus And L. (Casei Cultures). Contains Milk. Gluten Free. Strawberry Ingredients: Cultured Pasteurized Grade A Lowfat Milk, Sugar, Nonfat Milk Solids, Modified Cornstarch, Strawberry Puree, Fructose, Kosher Gelatin, Natural Flavors, Potassium Sorbate (to Maintain Freshness), Citric Acid, Red 40, Vitamin A Palmitate And Vitamin D3. Contains Active Yogurt With L. Bulgaricus, S. Thermophilus, Bifidobacterium Bb-12(R), L. Acidophilus And L. Casei Cultures. Contains Milk.	180	15	1	1	0	\N	\N	10	100	33	0	29	7	15	4	25	0	\N	\N	170	G	170	170	g	\N	2014-11-24T20:24:24+00:00	\N	12
Ravioli, Mini Beef, in Tomato & Meat Sauce	51db37b1176fe9790a8984b5	51c3d48c97c3e6d8d3b52e8d	7880702178	2	Mini Beef, in Tomato & Meat Sauce	Water, Tomato Puree (Water, Tomato Paste), Enriched Wheat Flour (Flour, Malted Barley Flour, Niacin, Ferrous Sulfate, Thiamine Mononitrate, Riboflavin, Folic Acid), Beef, Crackermeal (Wheat Flour Enriched with Niacin, Iron, Thiamine Mononitrate, Riboflavin, Folic Acid), High Fructose Corn Syrup, Salt, Carrots, Food Starch-Modified, Textured Vegetable Protein (Soy Flour, Caramel Color), Dehydrated Onion, Citric Acid, Caramel Color, Monosodium Glutamate, Enzyme Modified Cheddar Cheese (Cheddar Cheese [Pasteurized Milk, Cheese Cultures, Salt, Enzymes], Water, Sodium Citrate, Disodium Phosphate, Enzymes), Natural Flavor, Hydrolyzed Corn Gluten, Soy and Wheat Gluten Protein, Partially Hydrogenated Soybean and Cottonseed Oils.	220	60	7	2	\N	\N	\N	10	1125	32	6	6	9	6	6	2	10	\N	2	1	cup	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	5
Cookies, White Frosted Mini Sugar	51db37b0176fe9790a8983f1	54dc4570060628e63e9ac632	85239441220	2	\N	\N	130	40	4.5	2	0	\N	\N	2.5	95	21	0	13	0.5	4	0	0	2	\N	10	2	cookies	30	30	g	https://d1r9wva3zcpswd.cloudfront.net/54de669a613cd9670418e81c.jpeg	2015-02-13T21:03:22+00:00	\N	16
Juice, Tropical Blend	51db37b0176fe9790a8983ed	550b5b10f42a6ae174f70aca	57961020745	2	\N	\N	130	\N	0	0	0	\N	\N	0	20	31	0	30	1	2	100	2	2	\N	\N	250	ml	\N	250	ml	https://d1r9wva3zcpswd.cloudfront.net/550b5c73d096291d2a2a2dfd.jpeg	2015-03-19T23:32:03+00:00	\N	78
Kalamata Olive	5451514867447cde17be5fd8	55a2794049b57637569e529a	657000000000	2	\N	\N	150	25	3	0	0	\N	\N	0	330	26	2	0	4	0	0	0	6	\N	7	57	g	57	57	g	https://d1r9wva3zcpswd.cloudfront.net/55a27b32b5320f704f7156ea.jpeg	2015-07-12T14:35:30+00:00	\N	22
Regular Cheese Ravioli	51db37b3176fe9790a898650	51c3f8eb97c3e6dfa4deff33	76239420605	2	\N	Ricotta Cheese (Whey, Milk, Cream, Vinegar), Enriched Durum Flour (Flour, Niacin, Ferrous Sulfate, Thiamine Mononitrate, Riboflavin, Folic Acid), Water, Egg Whites (Egg Whites, Water, Guar Gum), Imported Pecorino Romano Cheese (Sheep's Milk, Rennet), Sea Salt and Spices.	250	35	4	2	0	\N	\N	45	180	40	2	3	13	6	0	10	10	\N	6	9	pieces	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	6
Drink Mix, Appletini	51db37dc176fe9790a89a08e	51c3fcfa97c3e6dfa4df1c7b	19212910069	2	Appletini	Drink Mix: Sucrose, Citric Acid. Modified Food Starch, Partially Hydrogenated Soybean and Cottonseed Oil. Flavor Concentrate: Filtered Water, Natural and Artificial (Apple) Flavors, Yellow 5 and Blue1.	150	0	0	\N	\N	\N	\N	\N	0	47	\N	44	0	0	0	0	0	\N	16	6	oz	44	44	g	\N	2014-11-24T20:24:24+00:00	\N	8
Santa Fe Style Salad	51db37b0176fe9790a8983ef	5460ed29a7f2fb4538e91f72	688000000000	2	\N	\N	280	170	19	4	0	\N	\N	30	540	16	2	4	11	90	10	10	6	\N	\N	1	container	177	177	g	https://d1r9wva3zcpswd.cloudfront.net/5460f3138e3df2917ff6359d.jpeg	2014-11-24T20:24:24+00:00	\N	4
Sweet & Salty, Dark Chocolate Nut	51db37cb176fe9790a8998a7	5464c81da9ffad0169a89b54	65633506893	2	\N	\N	170	72	8	3	0	\N	\N	0	125	21	2	9	3	0	0	2	4	\N	1	1	bar	35	35	g	https://d1r9wva3zcpswd.cloudfront.net/5464cc53836c82a558165951.jpeg	2014-11-24T20:24:24+00:00	\N	3
Milk, Lowfat, Ultimate Chocolate, 1% Milkfat	51db37bc176fe9790a898e53	51c3c0d797c3e6d8d3b49280	79967132420	2	Lowfat, Ultimate Chocolate, 1% Milkfat	Skim Milk, Milk, Sugar, Cocoa (Processed with Alkali), Corn Starch, Salt, Carrageenan, Guar Gum, Artificial Flavor, Vitamin A Palmitate and Vitamin D3.	180	25	2	1	0	\N	\N	10	210	32	0	30	8	10	0	30	0	\N	8	1	cup	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	5
Rice-Lentil Crepe Batter	5505889677b7c8f122a47f06	5505887ddfc7e5791f579355	805000000000	2	\N	\N	120	5	0	0	0	\N	\N	0	160	24	3	1	3	0	2	2	4	\N	12	1	dosa	65	65	g	https://d1r9wva3zcpswd.cloudfront.net/5505898fdfc7e5791f57938b.jpeg	2015-03-15T13:30:55+00:00	\N	92
Organic Energy Bar, Original with Almond	51db37bf176fe9790a898f53	51c3fdf997c3e6dfa4df238e	60590041357	2	Original with Almond	Organic Sesame Seeds, Organic Almonds, Organic Brown Rice Syrup, Organic Evaporated Cane Juice, Organic Flax Seeds, Organic Extract of Vanilla, Organic Cinnamon, Sea Salt, Natural Vitamin E for Freshness. Processing Agents: Organic Sunflower Oil and/or Organic Safflower Oil. Gluten free.	230	130	15	2	\N	\N	\N	0	60	20	4	11	5	0	0	25	20	\N	15	1	bar	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	3
Tomato Paste, Club Pack	51db37e3176fe9790a89a4b7	51c53f3497c3e6efadd5ad9c	24000045564	2	Club Pack	Tomatoes.	30	0	0	\N	0	\N	\N	\N	20	6	1	3	2	10	10	0	4	\N	96	33	G	33	33	g	\N	2014-11-24T20:24:24+00:00	\N	12
Black Bean & Corn Salsa	5478e7fdfb51561224943d49	556c661169d2b26d39ada1a5	624000000000	2	\N	\N	25	\N	0	0	0	\N	\N	0	320	5	1	3	1	4	4	0	4	\N	\N	0.25	cup	\N	60	ml	https://d1r9wva3zcpswd.cloudfront.net/556c65e59aba6c422b844c9b.jpeg	2015-06-01T14:02:14+00:00	\N	5
Sandwiches, Ham & Cheese, Whole Grain Crust	51db381f176fe9790a89b66e	51d2f7a4cc9bff111580c414	43695083002	2	Ham & Cheese, Whole Grain Crust	Water, Ham Turkey Added Ground & Formed Natural Hickory Smoke Flavor Added (Contains Up to 18% of Water, Dextrose, Salt, Sugar, Sodium Phosphates, Natural Hickory Smoke Flavor, Flavorings, Sodium Erythorbate, Sodium Nitrite), Whole Wheat Flour, Unbleached Enriched Flour (Wheat Flour [Niacin, Reduced Iron, Thiamine Mononitrate, Riboflavin, Folic Acid]), Reduced Fat Cheddar Cheese (Pasteurized Part-Skim Milk, Cheese Cultures, Salt, Enzymes, Annatto, Vitamin A Palmitate), Seasoning (Corn Maltodextrin, Whey, Buttermilk Powder, Cheddar Cheese [Milk, Cheese Cultures, Salt, Enzymes], Palm Oil, Salt, Corn Syrup Solids, Sugar, Sunflower Oil, Modified Corn Starch, Methyl Cellulose, Dehydrated Garlic, Citric Acid, Titanium Dioxide, Disodium Phosphate, Sodium Phosphate, Lactic Acid, Blue Cheese [Milk, Cheese Cultures, Salt, Enzymes], Sodium Caseinate [Milk], Dipotassium Phosphate, Disodium Inosinate & Guanylate, Natural & Artificial Flavor, Extractives of Paprika, Extractives of Turmeric), Margarine (Partially Hydrogenated Soybean Oil, Palm Oil, Water, Partially Hydrogenated Cottonseed Oil, Sugar, Mono- and Diglycerides, Artificial Flavor, Soybean Lecithin, Potassium Sorbate and Citric Acid [Preservatives], Colored with Annatto and Turmeric, Vitamin A Palmitate), Less than 2% Sugar, Modified Food Starch, Whey, Non Fat Dry Milk, Partially Hydrogenated Palm Kernel Oil (with Soy Lecithin), Dough Conditioner (Calcium Sulfate, Salt, L-Cysteine Hydrochloride, Garlic Powder, Tricalcium Phosphate, Enzymes), Unbleached Enriched Flour (Wheat Flour, Malted Barley Flour, Niacin, Iron, Thiamine Mononitrate, Riboflavin, Folic Acid), Egg Yolks, Yeast, Methylcellulose, Salt, Soy Flour, Egg Whites, Soybean Oil.	270	70	8	4	\N	\N	\N	25	490	40	3	6	12	4	0	25	15	\N	2	1	piece	127	127	g	\N	2014-11-24T20:24:24+00:00	\N	28
Quesadilla Cornucopia	51db381b176fe9790a89b56c	51c3c85497c3e6d8d3b4c9ad	77694782123	2	\N	Filling: Monterey Jack Cheese with Jalapeno Peppers (Monterey Jack Cheese [Milk, Cheese Culture, Salt, Enzymes], Water, Jalapeno Peppers [Jalapeno Pepper, Vinegar, Salt], Sodium Phosphate, Milkfat, Salt, Sodium Hexametaphosphate), Pasteurized Processed Cheddar Cheese ([Milk, Cheese Culture, Salt, Enzymes], Water, Sodium Phosphate, Milkfat, Cellulose Gel, Sodium Hexametaphosphate, Salt, Artificial Color), Tomato, Bell Pepper, Onion, Green Onion, Cilantrol, Problano Pepper, Margarine (Soybean Oil, Partially Hydrogenated Soybean Oil, Water, Salt, Whey, Soy Lecithin, Sodium Benzoate and Citric Acid as Preservatives, Soybean Mono and Diglycerides, Artificial Flavor, Beta Carotene [Color], Added Vitamin A Palmitate), Soybean Oil, Garlic, Modified Food Starch. Tortilla: Enriched Flour (Wheat Flour, Niacin, Reduced Iron, Thiamine Mononitrate, Riboflavin, Folic Acid), 100% Vegetable Shortening, Salt, Baking Powder (Sodium Acid Pyrophosphate, Bicarbonate Soda, Corn Starch, Mono Calcium Phosphate), Water, Calcium Propionate. Flour Paste: Water, Flour (Bleached Wheat Flour, Malted Barley Flour).	350	150	17	8	\N	\N	\N	35	810	36	2	2	13	20	40	20	15	\N	2.5	5	pieces	119	119	g	\N	2014-11-24T20:24:24+00:00	\N	6
Noodles & Beef	51db37b6176fe9790a89899b	55974284e43798226d98d554	37600469623	2	\N	\N	150	20	2	1	0	\N	\N	25	940	26	3	2	7	6	0	2	4	\N	1	1	tray	213	213	g	https://d1r9wva3zcpswd.cloudfront.net/559743eb131177c0181afa39.jpeg	2015-07-04T02:24:43+00:00	\N	93
American Vegetable Salad	51db37b6176fe9790a898966	5481fc2cd8fceade43f938c1	71279241036	2	\N	\N	10	\N	0	0	0	\N	\N	0	10	2	1	1	1	15	8	2	2	\N	\N	1.5	cups	65	65	g	https://d1r9wva3zcpswd.cloudfront.net/5481ff5db276f9c4434b1062.jpeg	2014-12-05T18:54:21+00:00	\N	25
Luxury Wafers, Vanilla	51db37ba176fe9790a898cbd	51c3f06297c3e6de73cbc594	77330570060	2	Vanilla	Sugar, Wheat Flour, Palm Oil, Tapioca Starch, Dextrin, Whey, Rice Flour, Milk, Dairy Creamer (Whey, Vegetable Oils [Coconut, Palm], Natural Flavor, Soy Lecithin), Salt, Soy Lecithin, Artificial Flavors (Vanilla, Milk), and Eggs.	130	45	5	2	0	\N	\N	0	70	21	0	7	1	0	0	0	0	\N	13	3	pieces	28.5	28.5	g	\N	2014-11-24T20:24:24+00:00	\N	6
Dark Semi-Sweet Chips	51db37cf176fe9790a899d3a	55a0b8af838558c60c367ff5	30684790027	2	\N	\N	80	50	6	3.5	0	\N	\N	0	0	7	2	4	1	0	0	0	0	\N	19	1	tbsp	15	15	g	https://d1r9wva3zcpswd.cloudfront.net/55a17cc708a336670df17585.jpeg	2015-07-11T20:29:59+00:00	\N	10
Cheese, Reduced Fat, Sharp Cheddar	51db37b0176fe9790a8983ec	51c37d7f97c3e6d272825a15	41303007051	2	Reduced Fat, Sharp Cheddar	Pasteurized Part-Skim Milk, Cheese Culture, Salt, Enzymes, Color Added, Vitamin A Palmitate.	80	45	5	3	0	\N	\N	15	190	0	0	0	8	6	0	25	0	\N	8	1	oz	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	8
Grilled Asiago Chicken & Penne Pasta	51db37b2176fe9790a89858b	52fbd907ad2709a894000075	13800139276	2	\N	\N	320	90	10	4	0	\N	\N	32	770	35	3	4	23	8	20	20	8	\N	3	0.330000000000000016	package	283	283	g	https://d1r9wva3zcpswd.cloudfront.net/5360051b2ae36a5775c09a6b.jpeg	2014-11-24T20:24:24+00:00	\N	23
Instant Rice Noodle Soup, Garlic & Vegetables	51db37b0176fe9790a8983c2	51c3d89f97c3e6d8d3b54fcd	80991103690	2	Garlic & Vegetables	Rice Noodles, Seasoning Packet (Cane Sugar, Salt, Garlic Powder, Yeast Extract, Natural Flavors, White Pepper, Spices, Onion Powder, Black Pepper), Oil Sachet (Rice Bran Oil, Paprika Oil). Gluten free.	190	5	0	0	0	\N	\N	0	480	40	1	3	3	0	0	2	2	\N	1	1	pkg	57	57	g	\N	2014-11-24T20:24:24+00:00	\N	94
Stuffed Sweet Peppers	51db37b3176fe9790a898676	51c3f90997c3e6dfa4defffc	98311000017	2	\N	Pepper, Rice Blend: (Rice, Brown Rice, Wild Rice), Peppers, Carrots, Onions, Celery, Carr Valley Feta (Pasteurized Cow's Milk, Cheese Cultures, Enzymes, Salt), Egg, Garlic, Zalta Fresh Herb Infused Sea Salts (Sea Salt, Fresh Green Garlic, Thyme, Rosemary), Spices.	160	25	2	1	\N	\N	\N	10	190	31	5	8	6	130	270	8	6	\N	1	12	oz	340	340	g	\N	2014-11-24T20:24:24+00:00	\N	8
Thickened Water, Nectar Consistency, Lemon Flavored	51db37c9176fe9790a899653	51c3d01697c3e6d8d3b50914	43900224800	2	Nectar Consistency, Lemon Flavored	Water, Corn Starch Modified, Sugar, Natural Flavor, Phosphoric Acid.	70	0	0	\N	\N	\N	\N	0	25	17	\N	7	0	0	0	0	0	\N	1	1	carton	226	226	g	\N	2014-11-24T20:24:24+00:00	\N	95
Spinach, Chopped	51db37b0176fe9790a8983ea	51c3c89b97c3e6d8d3b4cba2	54807101859	2	Chopped	Spinach.	30	0	0	0	0	\N	\N	0	120	3	1	0	2	50	2	8	4	\N	6	1	cup	75	75	g	\N	2014-11-24T20:24:24+00:00	\N	5
Ground Beef Patties	51db37b0176fe9790a8983ef	5543bc3b272b54965166b58f	688000000000	2	\N	\N	290	200	23	9	1.5	0.5	9	80	75	0	0	0	19	0	0	2	10	\N	16	1	patty	113	113	g	https://d1r9wva3zcpswd.cloudfront.net/5543bc9eb071308451145cff.jpeg	2015-05-01T17:49:18+00:00	\N	13
Russet Potatoes	53a02f4bab3d45464bb6877b	5457c48d0d5781691593ecf3	648000000000	2	\N	\N	110	0	0	0	0	\N	\N	0	0	26	2	1	3	0	45	2	6	620	\N	1	potato	148	148	g	https://d1r9wva3zcpswd.cloudfront.net/5457d2130d5781691593f172.jpeg	2014-11-24T20:24:24+00:00	\N	46
Wild Pacific Salmon Fillets, Sweet & Spicy Peach Salsa	54bd19d0a09dabf70a684686	5512d4396ed0b6691e7b33ca	11150571067	2	\N	\N	180	60	6	1	0	\N	\N	50	330	7	1	4	24	15	60	2	4	\N	2	1	fillet	170	170	g	https://d1r9wva3zcpswd.cloudfront.net/5512d45ec2de35d1073c75f1.jpeg	2015-03-25T15:29:35+00:00	\N	35
Brown Sugar Cinnamon Roll Wafflers	54be3369463f929e29169805	555b093fad71960e186cf55c	32712124	2	\N	\N	250	80	9	2.5	0	\N	\N	10	510	40	0.5	16	4	20	0	20	25	\N	4	2	waffles	76	76	g	https://d1r9wva3zcpswd.cloudfront.net/555b25d810838034188f9363.jpeg	2015-05-19T12:00:24+00:00	\N	37
High Performance Whole Food Nutrition, Whole Berry Blast	51db37c9176fe9790a899621	51c3c46b97c3e6d8d3b4aec0	53152002026	2	Whole Berry Blast	Natural Unsalted Almond Butter (Almonds), Brown Rice Syrup With Real Fruit Puree, Barley Malt Syrup, Fruit & Nut Mix (Raisins, Sunflower Seeds, Juice Sweetened Papaya, Juice Sweetened Pineapple, Dates, Cashews, Unsweetened Coconut, Pumpkin Seeds, Brazil Nuts), Granola (Rolled Oats, Raisins, Corn Flakes, [Corn, Flour, Mixed Fruit Juice Concentrate {Pineapple Juice, Pear Juice, Peach Concentrate}, Organic Rye, Crisp Brown Rice {Brown Rice and Malted Barley Flour}, Organic Evaporated Cane Juice, Grape Concentrate, Expeller Pressed Canola Oil, Brown Rice Syrup, Flax Seeds, Hemp Seeds, Almonds, Apples, Oat Bran, Organic Oat Syrup Solids, Sea Salt, Organic Molasses, Rice Bran Extract, Epasote, Prune Powder, Cardamom, Fennel, Fenugreek, Nutmeg], Natural Orange Oil), Carob Chips (Whole Grain Malted Barley and Corn, Palm Oil, Carob Powder, Soy Lecithin), Dates, Organic Sunflower Seeds, Organic Unsweetened Coconut, Organic Flax Seeds, Dried Strawberries (Strawberries, Apple Juice, Sunflower Oil), Organic Brown Sesame Seeds, Dried Blueberries (Blueberries, Apple Juice, Sunflower Oil).	380	170	19	4	0	\N	\N	0	40	50	6	20	8	0	0	0	0	\N	1	1	ea	85	85	g	\N	2014-11-24T20:24:24+00:00	\N	50
Bread, Whole Wheat 7-Grain	51db37d1176fe9790a899e10	51c36e0197c3e69de4b08f16	28833010805	2	Whole Wheat 7-Grain	Organic Whole Wheat Flour, Filtered Water, Wheat Gluten, Honey, Organic Millet, Organic Cracked Wheat, Organic Corn Meal, Fresh Yeast, Pure Barley Malt, Molasses, Expeller Pressed Safflower Oil, Sea Salt, Organic Raisins, Organic Oats, Organic Rye, Organic Sunflower Seeds, Organic Flax Seeds, Soy Based Lecithin.	80	15	1	0	\N	\N	\N	0	160	14	2	2	4	0	0	0	4	\N	20	1	slice	34	34	g	\N	2014-11-24T20:24:24+00:00	\N	26
Rotelle	51db37b0176fe9790a8983ba	51c3d35b97c3e6d8d3b5248f	21130506804	2	\N	Durum Wheat, Semolina, [Enriched with Iron (Ferrous Sulfate) and B Vitamins (Niacin, Thiamin Mononitrate, Riboflavin, Folic Acid)].	210	10	1	0	0	\N	\N	0	0	42	2	3	7	0	0	0	10	\N	8	2	oz	57	57	g	\N	2014-11-24T20:24:24+00:00	\N	8
Long Grain Brown Rice	51db37bb176fe9790a898d7b	54ef3b1fd3422d1d22db787a	721000000000	2	\N	\N	150	10	1	0	0	\N	\N	0	0	32	1	0	3	0	0	0	4	\N	21	0.25	cup uncooked	42	42	g	https://d1r9wva3zcpswd.cloudfront.net/54f01c8aadc5a97a212c2b7f.jpeg	2015-02-27T07:28:10+00:00	\N	96
Korean BBQ Sauce	51db37ce176fe9790a899c5d	548706d47586ce4b42440250	807000000000	2	\N	\N	25	0	0	0	0	\N	\N	0	340	6	0	6	0	0	2	0	0	\N	33.2999999999999972	1	tbsp	15	15	g	https://d1r9wva3zcpswd.cloudfront.net/54870a3c7586ce4b4244037d.jpeg	2014-12-09T14:42:04+00:00	\N	10
Grade A Jumbo Eggs	51db37b9176fe9790a898bdd	54a6c61b8a51d1e63c4b954f	11110505200	2	\N	\N	90	50	5	2	0	\N	\N	235	90	0	\N	\N	8	8	0	4	6	\N	12	1	egg	63	63	g	https://d1r9wva3zcpswd.cloudfront.net/54a6cb712dea1e720d42ec84.jpeg	2015-01-02T16:46:41+00:00	\N	97
Raisins, Dark Chocolate	51db37d2176fe9790a899e8e	51c36f3197c3e69de4b098f2	30684017230	2	Dark Chocolate	Organic Dark Chocolate (Organic Evaporated Cane Juice, Organic Chocolate Liquor, Organic Cocoa Butter, Organic Soy Lecithin (an Emulsifier), and Organic Vanilla), Organic Raisins and Organic Confectioners Glaze.	160	70	8	4	0	\N	\N	0	0	27	2	19	2	0	0	6	10	\N	8	1	oz	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	8
Taro Pastry	54fe4833ab7c0b1a68eb4489	56044591c4228b577566b8b5	766000000000	2	\N	\N	240	92	10	3	0	\N	\N	10	59	33	6	12	4	2	0	2	5	\N	8	1	pcs	60	60	g	https://d1r9wva3zcpswd.cloudfront.net/560447566232756d761bc18c.jpeg	2015-09-24T18:56:22+00:00	\N	98
Peanuts, Salted & Roasted	51db37cd176fe9790a899b54	5460ec51388fc43c2fa0730b	81864001754	2	\N	\N	170	110	12	2	0	\N	\N	0	72	8	4	0.5	7	0	0	0	0	\N	40	25	pieces	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/5460f206a7f2fb4538e920f4.jpeg	2014-11-24T20:24:24+00:00	\N	6
Yogurt, Greek, Blended Greek Honey	51db37bd176fe9790a898e77	51d2fd66cc9bff111580e9a6	58543490000	2	Greek, Blended Greek Honey	Grade A Pasteurized Skim Milk, Honey and Live and Active Cultures.	130	0	0	0	0	\N	\N	5	45	18	0	17	13	0	0	15	4	\N	1	5.29999999999999982	oz	150	150	g	\N	2014-11-24T20:24:24+00:00	\N	8
Organic Tropical Island Fruit Blend	54b52ed704e843bd19521244	54fc15c2f42fa10136d10af9	826000000000	2	\N	\N	70	0	0	0	0	\N	\N	0	0	18	2	13	1	8	80	2	4	\N	13	140	g	140	140	g	https://d1r9wva3zcpswd.cloudfront.net/54fc162aa9b35c986a8ab135.jpeg	2015-03-08T09:28:11+00:00	\N	22
Bean and Beef Enchiladas	545ce74313fb28bc6d02a10e	545ce74313fb28bc6d02a10f	709000000000	2	\N	\N	210	25	3	1	0	\N	\N	10	480	35	5	6	11	2	4	6	15	450	1	1	tray	227	227	g	https://d1r9wva3zcpswd.cloudfront.net/5460f337388fc43c2fa0754b.jpeg	2014-11-24T20:24:24+00:00	\N	93
Romaine Hearts	5453bbcbe29dd49a47880b09	546a082186f80d902a7c07b6	72668600007	2	\N	\N	20	0	0.5	0	0	\N	\N	0	0	3	1	2	1	20	4	2	2	140	\N	6	leaves	85	85	g	https://d1r9wva3zcpswd.cloudfront.net/546a0e0f2bc0b27b2a676cda.jpeg	2014-11-24T20:24:24+00:00	\N	99
Medium Grain Rice, White Arborio 32 Oz	51db37ca176fe9790a89981a	51c5420297c3e6efadd5c3f3	30684862939	2	White Arborio 32 Oz	Eco-Framed White Arborio Rice.	160	10	1	0	0	\N	\N	0	35	35	1	0	5	0	0	0	0	\N	20	45	G	45	45	g	\N	2014-11-24T20:24:24+00:00	\N	12
Pickles, Dill	51db37b0176fe9790a8983ec	5532afbc8398a62c4c64a5cc	41303005750	2	\N	\N	0	\N	0	\N	\N	\N	\N	\N	210	0.5	\N	\N	0	\N	\N	\N	\N	\N	20	2.5	pickle	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/5532b0fbf42ecd972d1eeb4b.jpeg	2015-04-18T19:31:07+00:00	\N	100
Cider, Gourmet Caramel Apple	51db37c0176fe9790a89903a	51c545ea97c3e6efadd5e2ce	29776413708	2	Gourmet Caramel Apple	Sugar, Corn Syrup Solids, Natural and Artificial Flavors, Partially Hydrogenated Coconut Oil, Citric Acid, Silicon Dioxide, Sodium Citrate, Malic Acid, Tricalcium Phosphate, Magnesium Oxide, Sodium Caseinate, Carageenan, Mono and Diglycerides, Caramel Color, Ascorbic Acid. Contains Milk.	90	10	1	1	\N	\N	\N	0	70	21	0	19	0	0	60	0	2	\N	20	23	G	23	23	g	\N	2014-11-24T20:24:24+00:00	\N	12
Iced Tea Mix, Tea & Honey Iced Green Tea/Blackberry Pomegranate	51db37c9176fe9790a8996ef	51c54a0497c3e6efadd602bd	41000303036	2	Tea & Honey Iced Green Tea/Blackberry Pomegranate	Honey Granules (Sugar, Honey), Citric Acid (Provides Tartness), \rGreen Tea Powder, Hibiscus Extract, Sucralose (Sweetener), Maltodextrin, Natural Flavor, Blackberry Juice Solids, Isomalt, Soy Lecithin, Pomegranate Juice Solids.	5	0	0	0	0	\N	\N	0	0	1	0	1	0	4	0	0	0	\N	40	2	G	2	2	g	\N	2014-11-24T20:24:24+00:00	\N	12
Condensed Soup, Chicken, with Rice	51db37b1176fe9790a898466	51c4043897c3e6dfa4df5346	5388187916	2	Chicken, with Rice	Water, Chicken Stock, Rice, Chicken Meat, Carrots, Salt, Celery, Modified Cornstarch, Monosodium Glutamate, Soybean Oil, Soy Protein Isolate, Onion Powder, Maltodextrin, Natural Flavor, Beta-Carotene (for Color), Sodium Phosphate, Garlic Powder.	70	20	2	0	0	\N	\N	5	850	11	1	0	2	10	0	0	0	\N	2.5	0.5	cup	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	5
Chicken Fried Rice	529d0c3dae976a0000000009	546a6c8f4e3da8103cb58d8f	72036708618	2	\N	\N	240	20	2	0	0	\N	\N	50	1190	44	2	7	12	30	10	4	8	\N	3	1	cup	235	235	g	https://d1r9wva3zcpswd.cloudfront.net/546a6da0f591c7233c57f73e.jpeg	2014-11-24T20:24:24+00:00	\N	5
Pancake Syrup	51db37e4176fe9790a89a576	51c35dfb97c3e69de4b012fe	11600000734	2	\N	Corn Syrup, High Fructose Corn Syrup, Water, Potassium Sorbate, Sodium Benzoate, Artificial Maple Flavor, Caramel Coloring.	220	0	0	\N	0	\N	\N	\N	148	56	\N	56	0	0	0	0	0	\N	12	0.25	cup	57	57	g	\N	2014-11-24T20:24:24+00:00	\N	5
Turkey Bacon & Egg White Sandwich	51db37b3176fe9790a898733	55d2d4b6eab012f46b7dd8ab	102000000000	2	\N	\N	210	60	7	2.5	0	\N	\N	10	430	22	3	3	11	0	0	8	0	\N	1	1	package	88	88	g	https://d1r9wva3zcpswd.cloudfront.net/55d2d5f1eab012f46b7dd8f6.jpeg	2015-08-18T06:51:29+00:00	\N	23
Turkey & Cheese	551eb12975545033054d5f03	55dc9a43586534cf1139c1fb	748000000000	2	\N	\N	400	120	14	5	0	\N	\N	65	2080	46	0	5	24	10	0	20	15	\N	1	1	ea	\N	\N	g	https://d1r9wva3zcpswd.cloudfront.net/55dc9a560abc77ff5e4edde3.jpeg	2015-08-25T16:39:50+00:00	\N	50
CARBmaster Cultured Dairy Blend, Cherry	51db37b9176fe9790a898bdd	551e08bad7f7829513dd5ad8	59547778	2	\N	\N	60	10	1.5	1	0	\N	\N	5	95	4	0	3	9	8	0	30	2	\N	\N	1	container	\N	\N	g	https://d1r9wva3zcpswd.cloudfront.net/551e08d74bb37dd63673ad43.jpeg	2015-04-03T03:28:23+00:00	\N	4
Cashews, Unsalted	51db37b9176fe9790a898bdd	51c35a5197c3e69de4affcfb	11110735744	2	Unsalted	Cashews, Peanut and/or Cottonseed Oils.	160	120	14	2	0	\N	\N	0	0	8	1	1	5	0	0	2	10	\N	10	0.25	cup	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	5
Pasta Sauce, Premium, Authentic Italian Plum Tomato Marinara Sauce	51db37e0176fe9790a89a2f1	51c4045597c3e6dfa4df543d	30315021308	2	Premium, Authentic Italian Plum Tomato Marinara Sauce	Tomato Puree (Water, Tomato Paste), Italian Plum Tomatoes, Water, Expeller Pressed Canola Oil, Organic Roasted Onions, Carrots (Carrots, Water, Salt, Calcium Chloride), Sea Salt, Dried Onion, Spices, Dried Garlic, Extra Virgin Olive Oil, Garlic Powder. Gluten free.	70	30	3	0	0	\N	\N	0	730	9	3	5	1	20	10	0	2	\N	5	0.5	cup	136	136	g	\N	2014-11-24T20:24:24+00:00	\N	5
Cereal, Sweetened Oat with Marshmallows	51db37b1176fe9790a898440	51c37c3697c3e6d272825108	41268108237	2	Sweetened Oat with Marshmallows	Whole Grain Oat Flour (Includes the Oat Bran), Marshmallows (Sugar, Corn Syrup, Dextrose, Modified Food Starch, Gelatin, Artificial and Natural Flavor, Yellow 5 & 6, Red 40, Blue 1), Sugar, Wheat Starch, Corn Syrup, Salt, Calcium Carbonate, Color Added, Dicalcium Phosphate, Trisodium Phosphate, Artificial Flavor, Vitamin C (Sodium Ascorbate), Zinc and Iron (Mineral Nutrients), A B Vitamin (Niacinamide), BHT (a preservative), Vitamin B6 (Pyridoxine Hydrochloride), Vitamin B2 (Riboflavin), Vitamin, Vitamin B1 (Thiamin Mononitrate), Vitamin A Palmitate,  A B Vitamin(Folic Acid), Vitamin B12, Vitamin D.	120	10	1	0	\N	\N	\N	0	160	27	1	13	2	10	10	10	25	\N	13	0.75	cup	30	30	g	\N	2014-11-24T20:24:24+00:00	\N	5
Mixed Berry Drink	546b62c9ade15fe62e67f286	54b2fcc778a1787b572f301e	804000000000	2	\N	\N	70	0	0	0	0	\N	\N	0	15	4	2	2	15	0	0	2	0	15	7	1	packet	\N	34	ml	https://d1r9wva3zcpswd.cloudfront.net/54b302859b94708d3676fa09.jpeg	2015-01-11T23:08:54+00:00	\N	11
Cottage Cheese, with Pineapple, Small Curd	51db37b5176fe9790a8988d2	51c3bfba97c3e6d8d3b48981	72510012163	2	with Pineapple, Small Curd	Cultured Pasteurized Grade A Nonfat Milk, Cream, Pineapple, Sugar, High Fructose Corn Syrup, Whey, Salt, Modified Food Starch, Maltodextrin, Natural Flavors, Pineapple Juice, Citric Acid, Phosphoric Acid, Guar Gum, Carrageenan, Carob Bean Gum, Potassium Sorbate (to Preserve Freshness), Enzyme.	140	35	4	2	\N	\N	\N	20	340	18	0	15	9	4	2	10	0	\N	4	0.5	cup	113	113	g	\N	2014-11-24T20:24:24+00:00	\N	5
Iced Coffee Beverage, Vanilla	51db37bc176fe9790a898deb	545ce512d43cefdf6dbf7fca	41271021035	2	\N	\N	160	22.5	2.5	1.5	0	\N	\N	10	105	30	0	23	4	2	0	15	0	\N	\N	1	cup	\N	250	ml	https://d1r9wva3zcpswd.cloudfront.net/545ce98e4ce901f7437d9f80.jpeg	2014-11-24T20:24:24+00:00	\N	5
Jalapeno Stuffed Olives	51db37b0176fe9790a8983c2	51c4011f97c3e6dfa4df3bb5	80991102082	2	\N	California Olives Stuffed With Jalapenos, Water, Salt, Lactic Acid and Vinegar.	15	15	1	0	0	\N	\N	0	410	0	\N	\N	0	0	0	0	0	\N	20	0.5	oz	14	14	g	\N	2014-11-24T20:24:24+00:00	\N	8
Balady	54b56ec004e843bd19521560	54b56ec1565b558019158a54	69066000294	2	\N	\N	160	9	1	0.100000000000000006	0	\N	\N	0	270	32	4	0	6	0	0	2	20	\N	0	1	roll	57	57	g	https://d1r9wva3zcpswd.cloudfront.net/54b5705908485b0e4e464d5e.jpeg	2015-01-13T19:22:01+00:00	\N	57
Hot Cocoa Mix, Cappuccino Classics Suprema 1.16 Oz	51db37b7176fe9790a8989cb	51c5464a97c3e6efadd5e5a2	30684800702	2	Cappuccino Classics Suprema 1.16 Oz	Sugar, Non Dairy Creamer [Corn Syrup Solids, Partially Hydrogenated Coconut and Soybean Oil, Sodium Caseinate (A Milk Derivative), Potassium Phosphate, Mono and Diglycerides, Sugar, Sodium Stearoyl Lactylate, Soy Lecithin, Color (Annatto, Turmeric),  Artificial Flavor], Nonfat Dry Milk, Instant Coffee, Cocoa (Processed With Alkali), Cellulose Gum, Salt, Artificial Flavor. Contains Milk, Soy.	140	30	3	3	\N	\N	\N	0	120	25	0	20	3	0	0	8	0	\N	1	33	G	33	33	g	\N	2014-11-24T20:24:24+00:00	\N	12
Herbal Tea, Caffeine Free, Chamomile	51db37c4176fe9790a8992ed	51c4050297c3e6dfa4df5880	70734005251	2	Caffeine Free, Chamomile	Chamomile. Gluten free.	0	0	0	\N	\N	\N	\N	\N	0	0	\N	0	0	0	0	0	0	\N	25	1	tea bag	1	1	g	\N	2014-11-24T20:24:24+00:00	\N	101
Frosting Mix, Toffee Vanilla 16.5 Oz	51db37c3176fe9790a899289	51c5417697c3e6efadd5bf98	30684893711	2	Toffee Vanilla 16.5 Oz	Brown Sugar, Rice Milk Powder, Silicon Dioxide (Added to Prevent Caking), Salt and Pure Ground Vanilla Bean.	150	40	4	2	0	\N	\N	10	65	29	0	27	0	2	0	2	0	\N	16	37	G	37	37	g	\N	2014-11-24T20:24:24+00:00	\N	12
Crustless Chicken Pot Pie	51db37b3176fe9790a89863a	55d2d344456a0aa119b815e2	72655001466	2	\N	\N	280	70	8	2	0	2	3	65	600	34	7	3	19	25	4	4	8	\N	\N	1	meal	272	272	g	https://d1r9wva3zcpswd.cloudfront.net/55d2d467456a0aa119b81625.jpeg	2015-08-18T06:44:55+00:00	\N	102
Gummy Bears, Organic	51db37be176fe9790a898ee4	51c3ede297c3e6de73cbb4ee	10165014101	2	Organic	Organic Rice Syrup, Organic Cane Sugar, Gelatin, Organic Aronia Juice, Organic Black Currant Juice, Natural Flavor, Citric Acid, Ascorbic Acid, Carnauba Wax, Organic Sunflower Oil. Gluten free.	96	0	0	0	0	\N	\N	0	0	21	0	12	0	0	0	0	0	\N	5	11	bears	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	103
Pure Honey	51db382d176fe9790a89b8c3	54b2fbf79b94708d3676f7fd	73296114836	2	\N	\N	60	\N	0	\N	\N	\N	\N	\N	0	17	\N	16	0	\N	\N	\N	\N	\N	16	1	tbsp	21	21	g	https://d1r9wva3zcpswd.cloudfront.net/54b30086baec062b59909a52.jpeg	2015-01-11T23:00:22+00:00	\N	10
Milk, 2% Reduced Fat	51db37bc176fe9790a898ded	54f01bf33e1cba632126a72e	74336863950	2	\N	\N	230	80	9	5	0	\N	\N	35	200	19	0	19	16	17	0	50	0	\N	1	1.73999999999999999	cups	\N	414	ml	https://d1r9wva3zcpswd.cloudfront.net/54f01c52adc5a97a212c2b75.jpeg	2015-02-27T07:27:14+00:00	\N	25
Cashews, Halves & Pieces, Salted	51db37b8176fe9790a898af0	54fdf3feb48bcb64594a8473	11150189941	2	\N	\N	160	120	13	2.5	0	2.5	7	0	110	8	0.5	1	5	0	0	2	10	\N	24	0.25	cup	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/54fdf4434e9d7e6f76e3f3e2.jpeg	2015-03-09T19:28:25+00:00	\N	5
Hot Sauce, Pineapple Habanero	551eb1057af2ac495b48a3c1	551eb1057af2ac495b48a3c2	760000000000	2	\N	\N	0	\N	0	\N	\N	\N	\N	\N	60	0	\N	\N	0	\N	\N	\N	\N	\N	72	1	tsp	4.5	4.5	g	https://d1r9wva3zcpswd.cloudfront.net/551eb1a2481c7eb05f58ac4e.jpeg	2015-04-03T15:28:34+00:00	\N	72
Soup, Caribbean Black Bean	51db37e0176fe9790a89a2df	51c4041a97c3e6dfa4df524c	72010825119	2	Caribbean Black Bean	Water, Black Beans, Green Peppers, Red Peppers, Onions, Rice Starch, Chili Peppers, Jalapeno Peppers, Olive Oil, Lower Sodium Sea Salt, Sugar, Cumin, Allspice, Nutmeg.	210	20	2	0	0	\N	\N	0	230	38	8	4	10	20	50	8	15	\N	2	1	cup	212	212	g	\N	2014-11-24T20:24:24+00:00	\N	5
Puttanesca Fresh Pasta Sauce, Gluten Free	52ceb1eabba524e06800055e	54072a30a67cfab13a61a524	689000000000	2	\N	\N	50	25	3	0.5	0	\N	\N	0	320	6	2	3	2	15	30	4	6	\N	5	4	oz	110	110	g	https://d1r9wva3zcpswd.cloudfront.net/5407352f6dab6ba257b12c16.jpeg	2014-11-24T20:24:24+00:00	\N	8
Warm Delights, Molten Chocolate Cake	51db37b0176fe9790a8983c7	51c361fe97c3e69de4b02dd8	16000296527	2	Molten Chocolate	Cake Mix: Sugar, Enriched Flour Bleached (Wheat Flour, Niacin, Iron, Thiamin Mononitrate, Riboflavin, Folic Acid), Partially Hydrogenated Soybean and/or Cottonseed Oil, Cocoa Processed with Alkali, Corn Starch, Distilled Monoglycerides, Modified Corn Starch, Dried Egg Whites, Whey Protein Isolate, Cellulose Powder, Baking Soda, Salt, Monocalcium Phosphate, Corn Syrup Solids, Nonfat Milk, Soy Lecithin, Xanthan Gum, Artificial Flavor, Freshness Preserved by BHT, Citric Acid, Tocopherol, Ascorbic Acid, Fudge Sauce: Water, Sweetened Condensed Skim Milk (Skim Milk, Sugar, Corn Syrup), Sugar, Fructose, Partially Hydrogenated Palm Kernel Oil, Cocoa, Corn Starch, Buttermilk, Cocoa Processed with Alkali, Butter, Whey, Salt, Sodium Alginate, Natural and Artificial Flavor, Potassium Sorbate (Preservative), Artificial Color, Mono and Diglycerides, Xanthan Gum, Sodium Bicarbonate.	370	110	12	6	1.5	\N	\N	0	480	61	3	41	5	\N	\N	10	15	\N	1	1	bowl	95	95	g	https://d1r9wva3zcpswd.cloudfront.net/536a7db2a0ec3c690b543840.jpeg	2014-11-24T20:24:24+00:00	\N	104
Pub Nuts, Sweetened and Salted Peanuts	51db37c2176fe9790a8991b2	51c3fefd97c3e6dfa4df2b83	77817212100	2	Sweetened and Salted Peanuts	Peanuts, Sugar, Corn Syrup, Peanut Oil, Salt.	190	140	15	2	\N	\N	\N	0	160	10	2	4	7	0	0	2	2	\N	8	0.25	cup	32	32	g	\N	2014-11-24T20:24:24+00:00	\N	5
Ice Cream Bar, Double Caramel	51db3810176fe9790a89b215	551e40f95625602056ca0d5a	7753282	2	\N	\N	340	190	21	15	0	\N	\N	20	90	37	1	31	3	4	0	10	10	\N	1	98	g	98	98	g	https://d1r9wva3zcpswd.cloudfront.net/551e40a1afbd58f827666ded.jpeg	2015-04-03T07:26:25+00:00	\N	22
Ravioli, Three Cheese	51db37b0176fe9790a8983be	51c3c3ee97c3e6d8d3b4aad1	77890878422	2	Three Cheese	Pasta: Enriched Durum Semolina (Enriched with Niacin, Ferrous Sulfate, Thiamine Mononitrate, Riboflavin, Folic Acid), Enriched Wheat Flour (Enriched with Niacin, Iron, Thiamine Mononitrate, Riboflavin, Folic Acid), Enriched Wheat Flour (Enriched with Niacin, Iron, Thiamine Mononitrate, Riboflavin, Folic Acid), Fresh Whole Pasteurized Eggs, Water. Filling: Cheese (Ricotta, Parmesan & Romano Cheese Blend [Pasteurized Cow's Milk, Cheese Cultures, Bacterial Culture, Rennet, Calcium Chloride, Microbial Enzyme, Lipase, Cellulose]), Toasted Wheat Crumbs (Wheat Flour, Salt, Hydrogenated Soybean Oil, Spices), Cream (with Dextrose, Sodium Citrate, Sodium Phosphate, Carrageenan, Locust and Carob Bean Gum), Fresh Whole Pasteurized Eggs, Salt, Enriched Wheat Flour (Enriched with Niacin, Iron, Thiamine Mononitrate, Riboflavin, Folic Acid), Canola Oil, Spices, Seasoning (Glucose Solids, Hydrolyzed Plant Protein [Corn, Soy], Hydrogenated Soybean Oil, Onion Powder, Garlic Powder, Ground Turmeric, Disodium Inosinate and Guanylate [Soy]).	270	45	5	2	0	\N	\N	40	380	45	2	1	11	4	0	4	20	\N	5.5	0.75	cup	100	100	g	\N	2014-11-24T20:24:24+00:00	\N	5
Skim Milk	526831133203b9c3390001c8	545a523ea1e8ac9e23de35f3	83217205185	2	\N	\N	80	2	0.200000000000000011	0.100000000000000006	\N	\N	\N	7	110	11	0	11	8	12	5	30	0	\N	\N	1	cup	\N	240	ml	https://d1r9wva3zcpswd.cloudfront.net/545a578b38554b701693ab7f.jpeg	2014-11-24T20:24:24+00:00	\N	5
100% Juice, Sparkling Apple-Pear	51db37c9176fe9790a8996d2	51c549bd97c3e6efadd6006f	41244902507	2	Sparkling Apple-Pear	Pure Carbonated Filtered Water (Sufficient to Reconstitute Juice Concentrate), 100% Pure Apple Juice from Us Grown Fresh Apples, Pure Concentrated Pear Juice, Natural Flavors.	130	0	0	0	0	\N	\N	0	15	31	0	25	1	0	0	2	2	\N	1	250	ml	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	78
Naturally Hickory Smoked Thick Cut Sliced Bacon	51db37b2176fe9790a89859a	52b658a12dedad540e00536d	785000000000	2	\N	Cured with: Water, Salt, Sugar, Sodium Phosphate, Sodium Erythorbate, Sodium Nitrite.	80	60	7	2.5	0	\N	\N	20	390	0	0	0	6	0	0	0	2	\N	9	1	fried slice	18	18	g	https://d1r9wva3zcpswd.cloudfront.net/536bbb9bf1f85db0054dd73d.jpeg	2014-11-24T20:24:24+00:00	\N	105
Energy Gum, Sugar Free, Iced Orange	51db37c9176fe9790a899674	51c3c97297c3e6d8d3b4d2a5	18094007058	2	Sugar Free, Iced Orange	Maltitol, Sorbitol, Gum Base, Maltitol Syrup, Natural and Artificial Flavors, Carnauba Wax, Caffeine, Taurine, Titanium Dioxide (Color), Gum Arabic, Citric Acid, Inositol, Niacinamide, Malic Acid, Glycerin, Sucralose, Calcium Pantothenate, Aspartame, Soy Lecithin, Resinous Glaze, Fumaric Acid, Pyridoxine Hydrochloride, Acesulfame Potassium, Riboflavin, Cyanocobalamin, BHT (to Maintain Freshness). Active Ingredients (per Serving): Caffeine (80 mg), Taurine (75 mg), Inositol (25 mg), Vitamin B3 (20 mg), Vitamin B5 (10 mg), Vitamin B6 (2 mg), Vitamin B2 (0.5 mg), Vitamin B12 (6 mcg).	10	0	0	\N	\N	\N	\N	\N	0	3	\N	0	0	0	0	0	0	\N	\N	2	pieces	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	6
Lima Beans, Lima Bean, Fordhook	51db37b0176fe9790a8983ea	51c3f9c797c3e6dfa4df047a	54807100951	2	Lima Bean, Fordhook	Fordhook Lima Beans, Salt (Processing Aid).	100	0	0	0	0	\N	\N	0	5	18	4	3	6	2	25	0	10	\N	6	0.5	cup	94	94	g	\N	2014-11-24T20:24:24+00:00	\N	5
Coconut Oil	526831133203b9c3390001c8	54a6c78c2dea1e720d42ead5	26700155420	2	\N	\N	120	126	14	12	0	\N	\N	\N	\N	0	\N	\N	0	\N	\N	\N	\N	\N	\N	15	ml	\N	15	ml	https://d1r9wva3zcpswd.cloudfront.net/54a6cda0d9eab4484bcdb991.jpeg	2015-01-02T16:56:00+00:00	\N	78
Cavalla French Roast, Coffee	545b9c34546fc72656d568ed	5522a61843e613de6336b086	629000000000	2	\N	\N	10	\N	0	\N	\N	\N	\N	\N	0	1.5	\N	0	\N	\N	\N	\N	\N	\N	\N	2	tbsp grounds	\N	\N	g	https://d1r9wva3zcpswd.cloudfront.net/5522a629b4e7ef126780abbd.jpeg	2015-04-06T15:28:41+00:00	\N	106
Potato Salad, Mustard	54dcd2202c7abad33391e400	5564d0606996de8b6d3d0533	11110653734	2	\N	\N	190	90	10	1.5	0	\N	\N	15	580	24	3	4	3	0	10	0	8	\N	3.5	0.5	cup	135	135	g	https://d1r9wva3zcpswd.cloudfront.net/5564d1a00620b94f48f4181d.jpeg	2015-05-26T20:03:44+00:00	\N	5
Sugar, granulated	5457c38253af3d475e632a6f	54fb6d450fa179a75619f8ee	70552904040	2	\N	\N	15	0	0	0	0	\N	\N	0	0	4	0	4	0	0	0	0	0	\N	454	1	tsp	4	4	g	https://d1r9wva3zcpswd.cloudfront.net/54fb6e13a1aed1f4311ba73a.jpeg	2015-03-07T21:30:59+00:00	\N	72
Granola, Pumpkin Spice	51db37ce176fe9790a899c10	525ec93f9f1e7c0500000996	794000000000	2	\N	\N	150	90	10	2	0	\N	\N	0	0	13	2	5	3	0	0	2	6	\N	12	0.25	cup	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/536bbc9a90c62af30c28525b.jpeg	2014-11-24T20:24:24+00:00	\N	5
Iced Tea Mix, Lemon Calorie Free	51db37c9176fe9790a8996ef	51c5498c97c3e6efadd5ff06	41000008771	2	Lemon Calorie Free	Citric Acid (Provides Tartness), Instant Tea, Maltodextrin, Sodium Saccharin, Natural Lemon Flavor.	0	0	0	\N	\N	\N	\N	\N	5	0	\N	0	0	0	0	0	0	\N	140	1.19999999999999996	G	1	1	g	\N	2014-11-24T20:24:24+00:00	\N	12
Party Cheese Tray	51db37e7176fe9790a89a71a	54b82350621847b127744c31	21130046119	2	\N	\N	110	80	9	6	0	\N	\N	35	190	1	\N	\N	8	6	\N	20	\N	\N	3.5	2	slices	32	32	g	https://d1r9wva3zcpswd.cloudfront.net/54b8245d621847b127744c97.jpeg	2015-01-15T20:34:37+00:00	\N	31
Men's Daily Gummies	51db37ba176fe9790a898cfa	54ca6517064e3a791d67382e	50428462171	2	\N	\N	15	\N	\N	\N	\N	\N	\N	\N	\N	3	\N	3	\N	80	125	\N	\N	\N	25	2	gummies	\N	\N	g	https://d1r9wva3zcpswd.cloudfront.net/54de4d0f7ea1cda21acc59e0.jpeg	2015-02-13T19:14:23+00:00	\N	107
Rotini & Meatballs	53d0085ffdb35bcf368daf5f	5457c450c0cdde5a6ab18cd1	633000000000	2	\N	\N	220	50	6	2.5	0	\N	\N	25	600	26	3	6	17	2	4	15	15	\N	1	1	package	227	227	g	https://d1r9wva3zcpswd.cloudfront.net/5457d1bd0d5781691593f159.jpeg	2014-11-24T20:24:24+00:00	\N	23
Pretzels, Specials	51db3800176fe9790a89adf1	51c3d71497c3e6d8d3b542d2	70104100012	2	Specials	Choice Blended Wheat Flour, Salt, Vegetable Shortening (Contains One or More of the Following: Corn, Canola, Cottonseed, Sunflower, Soybean Oil), Yeast, Malt Syrup, Corn Syrup and Soda.	120	10	1	0	0	\N	\N	0	340	24	2	0	3	0	0	0	8	\N	24	5	pretzels	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	52
Meal Replacement, Rich Vanilla Beans	55080f5847a43f8a4a0a4d17	55080fc7f9212f824cbc9adc	753000000000	2	\N	\N	103	18	2	\N	\N	\N	\N	0	145	7	5	0	14	50	50	15	50	\N	20	41	g	41	41	g	https://d1r9wva3zcpswd.cloudfront.net/55081081fb5995d662a90629.jpeg	2015-03-17T11:31:13+00:00	\N	22
Outshine Fruit Bars, Strawberry Wildberry Lime	51db37e9176fe9790a89a7b2	554cf78d4dabd8be64c30783	4157687	2	\N	\N	40	0	0	0	0	\N	\N	0	0	10	0	10	0	0	20	0	0	\N	12	1	bar	46	46	g	https://d1r9wva3zcpswd.cloudfront.net/554cf729a5b0b55b39e8275b.jpeg	2015-05-08T17:49:29+00:00	\N	3
Shredded Cheese, Fancy, Asiago Medium	51db37b1176fe9790a8984c7	51c3f3c597c3e6de73cbde44	70038597124	2	Fancy, Asiago Medium	Cultured Pasteurized Milk, Salt, Enzymes, Potato Starch and Powdered Cellulose Added to Prevent Caking, Natamycin (a Natural Mold Inhibitor).	110	70	9	6	0	\N	\N	25	310	0	0	0	7	6	0	25	0	\N	6	0.330000000000000016	cup	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	5
Spin Pop Candy, Toy Story 2, Woody	51db37c6176fe9790a899477	51c3694b97c3e69de4b067b4	22629045712	2	Toy Story 2, Woody	Sugar, Corn Syrup. Starch, Citric Acid, Glycerin, Artificial Flavors, Artificial Colors (Including FD&C Blue No. 1), Turmeric Coloring, and BHT Added as a Preservative.	60	0	0	\N	\N	\N	\N	\N	0	14	\N	12	0	0	0	10	0	\N	1	1	pop	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	45
Chewing Gum, Slim Packs	51db37c9176fe9790a899695	51c368ca97c3e69de4b062f3	22000106988	2	Slim Packs	Sugar, Gum Base, Corn Syrup, Dextrose, Less than 2% of: Natural and Artificial Flavors, Glycerol, Soy Lecithin, Aspartame, Acesulfame K, Hydroxylated Soy Lecithin, Color (Yellow 5 Lake), BHT (to Maintain Freshness).	10	0	0	\N	\N	\N	\N	\N	0	2	\N	2	0	0	0	0	0	\N	150	1	stick	2.70000000000000018	2.70000000000000018	g	\N	2014-11-24T20:24:24+00:00	\N	55
Pretzels, Sourdough Hard	51db3800176fe9790a89adf1	51c3d71097c3e6d8d3b542ad	70104999777	2	Sourdough Hard	Unbleached Wheat Flour, Water, Salt, Yeast, Soda.	140	0	0	0	0	\N	\N	0	240	18	0	0	2	0	0	0	0	\N	11	1	pretzel	31	31	g	\N	2014-11-24T20:24:24+00:00	\N	108
Macaroni and Cheese Dinner, Organic, Three Cheese	51db37b1176fe9790a898469	51c3f93097c3e6dfa4df012e	79893406978	2	Organic, Three Cheese	Organic Semolina Flour (Durum Wheat), Water, Organic Whole Milk (Grade A Milk, Vitamin D3), Organic White Cheddar Cheese (Pasteurized Grade A Milk, Salt, Cheese Culture, Non-Animal Rennet), Organic Pasteurized Eggs, Organic Unsalted Butter (Grade A Pasteurized Sweet Cream, Lactic Acid), Organic Mozzarella Cheese (Cultured Pasteurized Whole Milk, and Skim Milk, Salt, Microbial Enzymes), Organic Natural Corn Starch, Sea Salt, Organic Wheat Gluten, Natural Organic Cheese Flavor, Organic Parmesan Cheese (Cultured Part Skim Milk, Salt, Enzymes), Organic Black Pepper, Organic Cayenne Pepper, Organic Natural Annatto, Organic Onion Powder.	310	60	7	4	0	\N	\N	35	460	49	3	3	12	4	0	21	15	\N	4	5	oz	142	142	g	\N	2014-11-24T20:24:24+00:00	\N	8
Couscous, Tomato & Herbs	51db37c6176fe9790a899414	51c400a697c3e6dfa4df37e8	13568001877	2	Tomato & Herbs	All Natural: Couscous, Diced Tomatoes, Herbs, Spices & Onions.	130	15	2	0	0	\N	\N	0	10	24	2	1	5	10	8	2	4	\N	3	0.330000000000000016	cup	53	53	g	\N	2014-11-24T20:24:24+00:00	\N	5
NY Plain Bagels, Mini	51db37c5176fe9790a8993aa	560d2b01b1050e7102471bf2	96784102511	2	\N	\N	110	0	0	0	0	\N	\N	0	210	23	1	2	4	0	0	4	8	\N	12	1	bagel	43	43	g	https://d1r9wva3zcpswd.cloudfront.net/560d2d6d5ad577cc23904ac1.jpeg	2015-10-01T12:56:13+00:00	\N	39
Classic Favorites Mini Rigatoni with Vodka Cream Sauce	51db37f0176fe9790a89a99d	51c36b3a97c3e69de4b0788f	25800020249	2	\N	Cooked Enriched Macaroni Product (Water, Enriched Semolina (Semolina, Niacin, Iron, Thiamine Mononitrate, Riboflavin, Folic Acid), Whole Wheat Flour), Vodka Cream Sauce (Water, Tomatoes [Tomatoes, Tomato Juice, Calcium Chloride, Citric Acid], Tomato Puree [Tomato Paste, Water], Cream [Cream, Milk, Carrageenan], Vodka [Vodka, Salt], Onions, Romano Cheese [Cow's Milk, Cheese Cultures, Salt, Enzymes], Cheese Flavor [Water, Lipolyzed Cream, Butterfat, Salt, Flavoring], Whey Protein Concentrate, Parmesan Cheese [Part Skim Milk, Cheese Cultures, Salt, Enzymes], Olive Oil, Sugar, Modified Cornstarch, Granulated Garlic, Spices, Garlic in Oil [Garlic, Soybean Oil, Citric Acid], Salt, Xanthan Gum, Flavor [Potassium Chloride, Ammonium Chloride, Yeast Extract, Maltodextrin (Corn), Lactic Acid, Citric Acid, Calcium Lactate, Natural Flavor], Lactic Acid, Onion Concentrate [Sauteed Onions, Butter, Salt, Sugar, Onion Powder, Natural Flavor], Tomato Flavor [Medium Chain Triglycerides, Flavor, Soybean Oil], Black Pepper), Reduced Fat Mozzarella Cheese (Part Skim Milk, Cultures, Salt, Vitamin A Palmitate, Enzymes), Water, Carrageenan.	280	50	6	2.5	0	1	1.5	10	450	46	4	6	12	15	6	20	10	\N	1	1	package	255	255	g	https://d1r9wva3zcpswd.cloudfront.net/53600a5a2ae36a5775c09c4e.jpeg	2014-11-24T20:24:24+00:00	\N	23
Dip, Toasted Onion, with Shallots	51db37c9176fe9790a89970c	51c3615c97c3e69de4b02998	15500201208	2	Toasted Onion, with Shallots	Sour Cream (Cultured Milk, Cream, Nonfat Milk Powder, Gelatin), Toasted Onion Flavor Mix (Toasted Onion, Salt, Sugar, Guar Gum, Caramel Color, Monosodium Glutamate, Partially Hydrogenated Soybean Oil & Cottonseed Oil, Tricalcium Phosphate), Onion, Shallot, Parsley, Sodium Benzoate, Potassium Sorbate.	60	40	4	3	\N	\N	\N	15	150	2	0	1	1	2	0	0	0	\N	11	2	tbsp	30	30	g	\N	2014-11-24T20:24:24+00:00	\N	10
Potato Rolls	51db37c6176fe9790a899402	55677432ff548c1b685ac92b	7564444	2	\N	\N	130	10	1.5	0	0	0	0	0	180	24	2	5	7	0	0	20	10	\N	8	1	roll	53	53	g	https://d1r9wva3zcpswd.cloudfront.net/5567736337081fb05bbe76a8.jpeg	2015-05-28T19:58:28+00:00	\N	57
Yaki Nori Roasted Seaweed	51db37cf176fe9790a899cdc	51c53ea697c3e6efadd5a958	11152250830	2	Toasted Seaweed	Ingredients: Seaweed	10	0	0	0	0	\N	\N	0	20	1	0	0	1	20	0	0	2	\N	10	1	sheet	3	2.5	g	https://d1r9wva3zcpswd.cloudfront.net/54072e8c7f1cfd9d3a07a927.jpeg	2014-11-24T20:24:24+00:00	\N	109
Redskin & Gold Mashed Potatoes	51db37b9176fe9790a898b66	542ada06bb5a9a3d2cbe2280	11140871054	2	\N	\N	90	0	0	0	0	\N	\N	0	20	19	2	0.5	2	0	15	0	2	160	15	24	g dry	24	24	g	https://d1r9wva3zcpswd.cloudfront.net/542adb5cfd57000f19b350fb.jpeg	2014-11-24T20:24:24+00:00	\N	110
Meatloaf & Meatball Mix	54dc45874411e9fd3e66b782	54dc45a0570111b44b848a6b	94922386908	2	\N	\N	330	250	28	11	\N	\N	\N	80	60	0	\N	\N	18	\N	\N	\N	6	\N	5	4	oz	112	112	g	https://d1r9wva3zcpswd.cloudfront.net/54de69985f7c2fb71a703b26.jpeg	2015-02-13T21:16:08+00:00	\N	8
100% Juice Smoothie, Boosted Blue Machine, No Sugar Added	51db37bc176fe9790a898e18	552742831037c59e17c8ce1d	118000000000	2	\N	\N	110	10	1	0.5	0	\N	\N	40	55	2	0	1	24	0	0	15	2	\N	30	1	scoop	29.9299999999999997	29.9299999999999997	g	https://d1r9wva3zcpswd.cloudfront.net/552742ed6b4d00b5608a82ee.jpeg	2015-04-10T03:26:37+00:00	\N	111
Melba Rounds, Sesame 5.25 Oz	51db37ba176fe9790a898d18	51c5497997c3e6efadd5fe88	30684814839	2	Sesame 5.25 Oz	Organic Wheat Flour, Organic Sesame Seeds, Organic Canola Oil, Sea Salt, Organic Molasses, Yeast, Organic Wheat Gluten, Organic Vinegar. Contains: Wheat.	70	15	2	0	0	\N	\N	0	100	11	1	0	2	0	0	0	4	\N	10	15	G	15	15	g	\N	2014-11-24T20:24:24+00:00	\N	12
Ground Cinnamon	550204781f92d82359348256	550204c4da68c8162286a3f8	776000000000	2	\N	\N	0	\N	0	0	\N	\N	\N	0	0	0	\N	0	0	\N	\N	\N	\N	\N	142	0.25	tsp	0.599999999999999978	0.599999999999999978	g	https://d1r9wva3zcpswd.cloudfront.net/550204e554667443629d921e.jpeg	2015-03-12T21:28:05+00:00	\N	72
Fresh Watermelon	51db37b0176fe9790a8983ca	54f4b9a3b86b7cbe42a37b28	718000000000	2	\N	\N	25	0.900000000000000022	0.100000000000000006	0	0	\N	\N	0	1	6	0	5	0.5	4	10	0	2	\N	5	2.70000000000000018	oz	77	77	g	https://d1r9wva3zcpswd.cloudfront.net/54f4ba4c215c8bf84f7c7b24.jpeg	2015-03-02T19:30:20+00:00	\N	8
Syrup, Chocolate Flavored	51db37b1176fe9790a8984d0	51c3d9cd97c3e6d8d3b5595f	49705054345	2	Chocolate Flavored	High Fructose Corn Syrup, Corn Syrup, Water, Sugar, Cocoa, Contains 2% or Less of Potassium Sorbate (a Preservative), Salt, Mono- and Diglycerides (Adds a Trivial Amount of Fat), Polysorbate 60 (an Emulsifier), Xanthan Gum, and Vanillin (an Artificial Flavor).	100	0	0	0	0	\N	\N	0	20	23	1	16	1	0	0	0	6	\N	36	2	tablespoons	38	38	g	\N	2014-11-24T20:24:24+00:00	\N	112
Grade AA Large Eggs	51db37d7176fe9790a899fe7	5617eb41c94d5866786b9a97	11166636064	2	\N	\N	70	40	4.5	1.5	0	\N	\N	215	65	1	\N	\N	6	6	0	2	4	\N	18	1	egg	50	50	g	https://d1r9wva3zcpswd.cloudfront.net/5617ebf84a37e6ad4d0c9fa3.jpeg	2015-10-09T16:29:01+00:00	\N	97
Toll House Ultimates Pecan Turtle Delight	51db37c9176fe9790a8995ea	51d2f88ecc9bff111580c911	50000009282	2	Turtle	Bleached Enriched Flour (Wheat Flour, Niacin, Reduced Iron, Thiamin Mononitrate, Riboflavin, Folic Acid, Sugar, Nestle Toll House Morsels (Semi-Sweet Chocolate [Sugar, Chocolate, Cocoa Butter, Milkfat, Soy Lecithin, Vanillin -an Artificial Flavor, Natural Flavor]), Margarine (Palm Oil, Water, Sunflower Oil, Hydrogenated Cottonseed Oil, Salt, Vegetable Mono Diglycerides, Soy Lecithin, Natural! Artificial Flavors, Vitamin A Palmitate Added, Beta Carotene [Color], Whey), Caramel Filling (High Fructose Corn Syrup, Fructose, Water, Partially Hydrogenated Soybean and Cottonseed Oils, Dextrose, Modified Cornstarch, Modified Tapioca Starch, Glycerin, Natural Flavor [with Milk and Soy], Cornstarch, Cellulose Gel, Caramel Color, Salt, Mono - and Diglycerides, Cellulose Gum, Potassium Sorbate, Datem, Sot Lecithin, Yellow 6, Red 40), Pecans, Water, Corn Syrup Solids, Molasses, Eggs, Baking Soda (Contains Sot Lecithin), Salt, Sodium Aluminum Phosphate, Vanilla Extract, Vanillin - an Artificial Flavor.	170	80	9	4	0	\N	\N	5	170	21	1	11	2	2	0	2	4	\N	12	1	cookie	38	38	g	https://d1r9wva3zcpswd.cloudfront.net/536014b617e5c5f951b9b303.jpeg	2014-11-24T20:24:24+00:00	\N	70
Bread, Sesame Seed French	51db37c9176fe9790a899692	51c54cad97c3e6efadd61840	78742981994	2	Sesame Seed French	French Bread: Enriched Flour (Wheat Flour, Malted Barley Flour, Niacin, Ferrous Sulfate, Thiamin Mononitrate, Riboflavin, Folic Acid), Water, Yeast. Contains Less Than 2% of The Following: High Fructose Corn Syrup, Salt, Soybean Oil, Sodium Aluminum Phosphate, Baking Soda, Dough Conditioners (Datem, Ammonium Sulfate, Calcium Sulfate, Ascorbic Acid, Enzymes, Potassium Iodate, Azodicarbonamide, L-Cysteine Hydrochloride). Sesame Seed Topping: Sesame Seed. Contains: Wheat, Soy.	120	5	1	0	0	\N	\N	0	280	24	1	1	5	0	0	0	8	\N	10	46	G	46	46	g	\N	2014-11-24T20:24:24+00:00	\N	12
Chocolate Sensations, Dark Chocolate Coffee	545ce7be90529ba36e4e1e71	551754c815d392fc463af30b	858000000000	2	\N	\N	40	30	3	2	0	\N	\N	0	0	4	0.5	0	0.5	0	0	1	3	\N	14	1	piece	8	8	g	https://d1r9wva3zcpswd.cloudfront.net/551756244d8d0fc71bfd5d9e.jpeg	2015-03-29T01:32:20+00:00	\N	28
Atomic Fire Balls	51db37bd176fe9790a898ec0	51c3ba4297c3e6d8d3b46021	73380360576	2	\N	Sucrose, Contains Less than 2% of the Following: Modified Food Starch, Artificial Flavor, Carnauba Wax, Gum Acacia, Color Added, Red 40 Lake.	60	0	0	0	0	\N	\N	0	0	17	0	16	0	0	0	0	0	\N	8	3	pieces	18	18	g	\N	2014-11-24T20:24:24+00:00	\N	6
Gluten Free Multiseed Snack Crackers, Sea Salt	547cd5d7e1f1478767ca0ddf	5518c24f952b050265229c05	11000006794	2	\N	\N	130	45	5	0.5	0	\N	\N	0	120	19	1	3	2	0	0	0	0	\N	4	13	crackers	\N	\N	g	https://d1r9wva3zcpswd.cloudfront.net/5518c2de69492df3166d9cf7.jpeg	2015-03-30T03:28:30+00:00	\N	54
White Popcorn, Organic	51db37b1176fe9790a8984af	5563f053e7b5a25f68ddae41	706000000000	2	\N	\N	180	20	2.5	0	0	\N	\N	0	0	36	6	0	6	0	0	0	6	\N	18	0.25	cup	50	50	g	https://d1r9wva3zcpswd.cloudfront.net/5563f0d1e7b5a25f68ddae5e.jpeg	2015-05-26T04:04:33+00:00	\N	5
Bologna, Thick Sliced W/Turkey, Chicken & Pork	51db37b6176fe9790a89894e	51c3c22797c3e6d8d3b49cf3	90046806407	2	Thick Sliced W/Turkey, Chicken & Pork	Mechanically Separated Turkey, Mechanically Separated Chicken, Pork, Water, Corn Syrup, Salt, Contains Less Than 2% of Flavorings, Modified Food Starch, Dextrose, Sodium Lactate, Sodium Phosphate, Beef, Sodium Diacetate, Sodium Erythorbate, Sodium Nitrite, Extract of Paprika	150	110	12	4	0	\N	\N	30	500	2	0	1	6	0	0	2	2	\N	8	56	G	56	56	g	\N	2014-11-24T20:24:24+00:00	\N	12
Chocolate Digestive	51db37e8176fe9790a89a771	559d15265d4d528a0d7913d0	40032002016	2	\N	\N	120	60	6	3.5	1	\N	\N	0	40	14	0	7	1	0	0	2	4	\N	\N	1	pack	22	22	g	https://d1r9wva3zcpswd.cloudfront.net/559d16a4a65f560f3cf48883.jpeg	2015-07-08T12:25:08+00:00	\N	32
Enchilada Sauce, Hot Red Chili 10 Oz	51db37bc176fe9790a898dfa	51c5430b97c3e6efadd5cc20	30684901843	2	Hot Red Chili 10 Oz	Water, Red Chili Paste, Wheat Flour, Canola Oil Or Partially Hydrogenated Canola Oil, Salt, Tomato Paste, Spices, Caramel Color, Garlic Powder, Red Color #40, Citric Acid.	80	45	5	1	\N	\N	\N	0	440	12	5	2	2	100	10	2	8	\N	4	65	G	65	65	g	\N	2014-11-24T20:24:24+00:00	\N	12
Seeds The Day Organic Bread	545a52135f06a919304affd0	54982dffda5d8d5133d1a3d0	73132031075	2	\N	\N	90	25	2.5	0	0	1	0.5	0	95	12	2	2	4	0	0	2	4	\N	18	1	slice	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/549834bff5cc7db676ece974.jpeg	2014-12-22T15:11:59+00:00	\N	26
Orange Roughy Fillets	51db37b2176fe9790a8985da	550b772addd8540b7be660a8	75391901021	2	\N	\N	80	0	0	0	0	\N	\N	55	70	0	0	0	19	10	2	2	10	\N	4	1	fillet	113	113	g	https://d1r9wva3zcpswd.cloudfront.net/550b785fee56b14c4386cd56.jpeg	2015-03-20T01:31:12+00:00	\N	35
Danish, Amazing Apricot	51db3828176fe9790a89b7c0	55198742ce40f78825458e91	45084223150	2	\N	\N	170	70	8	3.5	0	\N	\N	15	190	21	1	9	3	6	0	2	4	\N	8	1	slice	50	50	g	https://d1r9wva3zcpswd.cloudfront.net/551987c07e0a3a0f4e6f3046.jpeg	2015-03-30T17:28:32+00:00	\N	26
Yogurt Raisins, Strawberry Flavor	51db37b0176fe9790a8983ca	51c3c93297c3e6d8d3b4d07d	86831128199	2	\N	Sugar, Raisins, Partially Hydrogenated Palm Kernel Oil, Nonfat Yogurt Powder, Corn Syrup, Dextrin, Maltodextrin, Natural and Artificial Flavor, Soy Lecithin, Confectioner's Glaze, Red 40 Lake, Vanillin (Artificial Flavor), Salt and Ascorbic Acid.	120	50	6	5	\N	\N	\N	0	15	19	1	17	0	0	30	2	2	\N	6	1	bag	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	20
Organic Apple Slices	51db37e4176fe9790a89a56d	5550eb22a8e6cef7380b4f40	73239802	2	\N	\N	35	0	0	0	0	\N	\N	0	0	8	0.5	6	0	0	140	4	0	\N	\N	1	bag	62	62	g	https://d1r9wva3zcpswd.cloudfront.net/5550ec3c136caeb106ff8998.jpeg	2015-05-11T17:51:56+00:00	\N	20
Cream Cheese, Fat Free	51db37bc176fe9790a898e3a	51c3651c97c3e69de4b04908	21000612390	2	Fat Free	Protein Concentrated Skim Milk, Cultured Skim Milk, Skim Milk, Contains Less than 2% of Sodium Tripolyphosphate (Ingredients Not in Regular Cream Cheese), Sugar (Ingredients Not in Regular Cream Cheese),  Xanthan Gum, Pasteurized Milk and Cream (Trivial Source of Fat), Salt,  Artificial Color (Ingredients Not in Regular Cream Cheese), Carrageenan, Potassium Sorbate (Ingredients Not in Regular Cream Cheese), and Calcium Propionate (Ingredients Not in Regular Cream Cheese) as Preservatives, Cheese Culture, Sodium Phosphate (Ingredients in Regular Cream Cheese), Artificial Flavor (Ingredients in Regular Cream Cheese), Carob Bean Gum, Vitamin A Palmitate.	30	0	0	0	0	\N	\N	5	190	2	0	1	4	8	0	15	0	\N	8	1	oz	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	8
SpaghettiOs, Meatballs	51db37c1176fe9790a89907e	51c3d42897c3e6d8d3b52b37	51000025630	2	Meatballs	Water, Tomato Puree (Water, Tomato Paste), Meatballs (Beef, Pork, Water, Bread Crumbs [Enriched Flour (Wheat Flour, Niacin, Ferrous Sulfate, Thiamine Mononitrate, Riboflavin, Folic Acid), Dextrose, Salt, Yeast, Soybean Oil], Soy Protein Concentrate, Salt, Dehydrated Onion, Dehydrated Garlic, Beef Flavor [Beef Stock, Flavoring, Salt], Spice Extract), Enriched Macaroni Product with Added Calcium and Vitamin D (Wheat Flour, Calcium Phosphate, Niacin, Ferrous Sulfate, Thiamine Mononitrate, Riboflavin, Folic Acid, Vitamin D) [All Nutrients in Excess of Standard], Enriched Macaroni Product (Wheat Flour, Niacin, Ferrous Sulfate, Thiamine Mononitrate, Riboflavin, Folic Acid), Contains Less than 2% of: Sugar, Carrot Juice Concentrate, Salt, Enzyme Modified Cheddar Cheese (Cheddar Cheese [Cultured Milk, Salt, Enzymes, Calcium Chloride], Water, Disodium Phosphate, Enzymes), Potassium Chloride, Vegetable Oil, Enzyme Modified Butter (Milk), Yeast Extract, Flavoring, Ascorbic Acid, Citric Acid, Nonfat Dry Milk, Malic Acid, Succinic Acid.	190	50	6	2	0	\N	\N	20	490	25	3	6	9	8	10	10	20	\N	1	1	can	206	206	g	\N	2014-11-24T20:24:24+00:00	\N	17
Panini, Italian Style	51db381b176fe9790a89b568	51c3f39197c3e6de73cbdcc9	52083740106	2	Italian Style	Dough: Enriched Wheat Flour (Wheat Flour, and 2% or Less of Niacin, Iron, Thiamin, Mononitrate, Riboflavin, Folic Acid and Enzymes), Water, Soybean Oil, Dough Conditioner (Salt, Partially Hydrogenated Soybean Oil, Dextrose, Wheat Flour, Mono and Diglycerides, Ascorbic Acid, L-Cysteine), Yeast (Yeast, Starch, 1% or Less of Sorbitan Monostearate by Weight, and May Contain Ascorbic Acid). Filling: Ham Water Added (Cured with Water, Contains 2% or Less of Dextrose, Potassium Lactate, Salt, Sodium Erythorbate, Sodium Nitrite, Sodium Phosphate, Browned in Vegetable Oil), Provolone Cheese (Pasteurized Milk, Cultures, Salt, Enzymes), Pepperoni (Pork, Beef, Salt, Contains 2% or Less of Water, Dextrose, Natural Spices, Oleoresin of Paprika, Lactic Acid Starter Culture, Garlic Powder, Sodium Nitrite, BHA, BHT, Citric Acid), Salami (Beef and Pork, Salt, Contains 2% or Less of Dextrose, Water, Natural Spices, Garlic Powder, Sodium Ascorbate, Lactic Acid Starter Culture, Sodium Nitrite, BHA, BHT, Citric Acid). Topping Mix: Romano Cheese (Grated Imported Romano Cheese [Aged Over 8 Months] Produced from Sheep's Milk, Cheese Cultures, Salt, Rennet), Parsley, Oregano, Bread Crumbs (Bleached Flour, Water, Partially Hydrogenated Vegetable Oil [Soybean, Cottonseed and/or Canola], Salt, Yeast, Contains 2% or Less of the Following: Sugar, Dextrose), Cornmeal (Niacin, Iron, Thiamin, Mononitrate, Riboflavin, Folic Acid).	390	190	21	8	\N	\N	\N	40	850	30	1	0	18	4	6	15	10	\N	2	0.5	panini	127	127	g	\N	2014-11-24T20:24:24+00:00	\N	114
Nonfat Yogurt, Lemon	51db37bb176fe9790a898db4	51c3bff197c3e6d8d3b48b26	71700449819	2	Lemon	Cultured Pasteurized Nonfat Milk, Whey Protein Concentrate, Modified Food Starch, Whey, Lemon Flavor (preserved with Potassium Sorbate), Aspartame, Gelatin, Citric Acid, and Turmeric (for Color).	100	0	0	0	\N	\N	\N	3	130	17	0	10	8	0	0	25	0	\N	1	1	ct	226	226	g	\N	2014-11-24T20:24:24+00:00	\N	115
Gum, Sugarfree, Polar Ice, Big E Pak	51db37e0176fe9790a89a33e	51c368a797c3e69de4b061fc	22000005748	2	Sugarfree, Polar Ice, Big E Pak	Made of: Sorbitol, Maltitol, Gum Base, Natural and Artificial Flavors, Acacia; Less than 2% of: Glycerol, Aspartame, Soy Lecithin, Color (Titanium Dioxide), Acesulfame K, Carnauba Wax, BHT (to Maintain Freshness).	5	0	0	\N	\N	\N	\N	\N	0	2	\N	0	0	0	0	0	0	\N	30	2	pieces	3	3	g	\N	2014-11-24T20:24:24+00:00	\N	6
Cactus Water with Prickly Pear	55e173936b1ac4a57854c33c	55e1718e4c1e6b860776fd18	853000000000	2	\N	\N	35	0	0	0	0	\N	\N	0	15	9	0	9	0	0	8	\N	\N	\N	1	1	box	\N	\N	g	https://d1r9wva3zcpswd.cloudfront.net/55e1722b0d66a92f2e61af3d.jpeg	2015-08-29T08:49:47+00:00	\N	21
Barbecue Sauce, Hickory	51db37c1176fe9790a8990fb	51c3bd0f97c3e6d8d3b47437	74609170006	2	Hickory	Tomato Puree (Water, Tomato Paste), High Fructose Corn Syrup, Molasses, Vinegar, Salt, Less than 2% of: Spices, Natural Hickory Smoke Flavor, Modified Food Starch, Natural Flavors, Salt,  Xanthan Gum, Caramel Color, Dried Onion, Dried Garlic, Turmeric, Paprika Extracts.	60	0	0	\N	\N	\N	\N	0	260	15	\N	12	0	0	0	0	0	\N	22	2	tbsp	36	36	g	\N	2014-11-24T20:24:24+00:00	\N	10
Andouille, Artisan, Cajun-Style	51db37d2176fe9790a899e46	51c36b0d97c3e69de4b0771c	25583006041	2	Artisan, Cajun-Style	Vital Wheat Gluten, Water, Organic Tofu (Water, Organic Soybeans, Magnesium Chloride, Calcium Chloride), Expeller Pressed Non-Genetically Engineered Canola Oil, Wheat Flour, Wheat Berries, Poblano Peppers, Shoyu Soy Sauce (Water, Non-Genetically Engineered Soybeans, Wheat, Salt, Culture), Garlic Puree, Granulated Garlic, Organic Cane Sugar, Potassium Chloride, Paprika, Annatto, Spices, Natural Vegetarian Flavors, Oat Fiber, Sea Salt, Natural Smoke Flavor.	270	100	12	1	0	\N	\N	0	550	12	3	5	29	2	0	4	12	450	4	3.5	oz	100	100	g	https://d1r9wva3zcpswd.cloudfront.net/53e226e05b5cf4106ed7b8b0.jpeg	2014-11-24T20:24:24+00:00	\N	8
Turkey Pot Pie	52ceb0f8bba524e0680000b8	51c367ef97c3e69de4b05c72	21131301347	2	\N	Filling: Water, Cooked Turkey Breast [Turkey Breast, Water, Isolated Soy Protein Product (Isolated Soy Protein, Modified Food Starch, Starch, Carrageenan, Soy Lecithin), Salt, Dextrose, Chicken Broth Powder (Maltodextrin, Chicken Broth, Salt, Flavors), Fructose, Flavoring (Spice Extractives with Polysorbate 80, Canola Oil, Soybean Oil, Flavor)], Carrots, Peas, Contains 2% or Less of Each of the Following: Celery, Modified Corn Starch, Heavy Whipping Cream, Onions, Rendered Chicken Fat, Salt, Turkey Flavor (Turkey Broth, Turkey Fat, Salt, Flavor, Spices), Chicken Broth Powder (Maltodextrin, Chicken Broth, Salt, Flavors), Nonfat Dry Milk, Sugar, Methylcellulose Gum, Spices, Mono- and Diglycerides, Turmeric. Crust: Wheat Flour Enriched with (Niacin, Iron, Thiamine Mononitrate, Riboflavin, Folic Acid), Partially Hydrogenated Soybean and Cottonseed Oil with TBHQ and Citric Acid, Water, Dairy Product Solids, Salt, Caramel Color.	630	330	36	14	0	\N	\N	20	1070	59	5	6	17	25	4	4	20	320	4	1	pie	283	283	g	https://d1r9wva3zcpswd.cloudfront.net/5360091967efca3d4b64cf45.jpeg	2014-11-24T20:24:24+00:00	\N	116
Dark Chocolate Covered Gingerbread Hearts	526e670fc8e1000200000007	547cd577656e5cf516c7fe44	41498176334	2	\N	\N	100	20	2	1.5	0	\N	\N	0	30	21	1	12	1	0	0	0	10	\N	10	2	pieces	30	30	g	https://d1r9wva3zcpswd.cloudfront.net/547cdc93d9fbbadf16c3a384.jpeg	2014-12-01T21:24:39+00:00	\N	6
Clover Honey	56105aadcc0bbcaa197731e3	56105b55b2b06ede2aca772d	98114600605	2	\N	\N	60	\N	0	\N	\N	\N	\N	\N	0	17	\N	16	0	\N	\N	\N	\N	\N	29	1	tbsp	21	21	g	https://d1r9wva3zcpswd.cloudfront.net/56105d468ac38ef664554c26.jpeg	2015-10-03T22:57:10+00:00	\N	10
Nonfat Greek Yogurt, Coconut Flavored	51db37b3176fe9790a8986a1	54982ebeb714fd8d4b3e57a5	725000000000	2	\N	\N	120	0	0	0	\N	\N	\N	10	50	19	0.5	18	13	0	\N	15	\N	\N	1	1	container	150	150	g	https://d1r9wva3zcpswd.cloudfront.net/5498377b1ac7c9a076b233b4.jpeg	2014-12-22T15:23:39+00:00	\N	4
Bars, Coconut	51db37f8176fe9790a89ab4b	51c3ca5397c3e6d8d3b4d9b5	67778001011	2	Coconut	Milk Fat and Non Fat Milk, Sugar, Corn Syrup, Shredded Coconut (Coconut, Sugar, Propylene Glycol), Guar Gum, Xanthan Gum, Mono and Diglycerides, Cellulose Gum, Polysorbate 80, Carrageenan, Natural and Artificial Flavors.	180	77	10	7	\N	\N	\N	32	53	19	0	16	3	7	0	7	0	\N	6	1	bar	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	3
Bread, Breakfast, Raisin & Grains	51db37b2176fe9790a89857c	51c3602497c3e69de4b02173	14100089261	2	Breakfast, Raisin & Grains	Whole Wheat Flour, Unbromated Unbleached Enriched Wheat Flour (Flour, Malted Barley Flour, Niacin, Reduced Iron, Thiamin Mononitrate (Vitamin B1), Riboflavin (Vitamin B2), Folic Acid, Water, Wheat Gluten, High Fructose Corn Syrup, Sunflower Seeds, Yeast, Oat Fiber, Wheat Gluten, Sugar, Blueberries, Contains 2 Percent or Less of; Oats, Nonfat Yogurt (Adds a Trivial Amount of Cholesterol) (Milk), Soybean Oil, Calcium Sulfate, Salt, Honey, Cinnamon, Dextrose, Wheat Flour, Calcium Propionate (to Retard Spoilage), Datem (Dough Conditioner), Vegetable Mono and Diglycerides, Wheat Starch, Soy Lecithin, Enzymes, Natural Flavors and Sucralose.	100	15	1	0	0	\N	\N	0	150	19	3	6	5	0	0	15	4	\N	10	1	slice	45	45	g	\N	2014-11-24T20:24:24+00:00	\N	26
Mini Pretzel Twists	5460eca4a7f2fb4538e91f52	55163bf145e93bb118779f90	93901405180	2	\N	\N	110	10	1	0	0	\N	\N	0	340	23	0.5	0.5	3	0	0	0	10	\N	32	17	pieces	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/55163c28fbefbf994e702a63.jpeg	2015-03-28T05:29:12+00:00	\N	6
CarbSlim Bites, Peanut Butter Crunch	51db37c9176fe9790a899724	51c3fdf397c3e6dfa4df236d	24038903010	2	Peanut Butter Crunch	Peanut Butter (Fractionated Palm Kernel Oil, Inulin, Erythritol, Milk Protein Isolate, Partially Defatted Peanut Flour, Whey, Dry Roasted Peanuts, Soy Lecithin, Salt, and Sucralose), Milk Chocolate (Fractionated Palm Kernel Oil, Inulin, Erythritol, Whole Milk Powder, Cocoa Butter Oil, Soy Lecithin, Natural Flavors, Salt, Sucralose), Isolated Soy Protein, Rice Flour, Cocoa.	114	81	9	8	\N	\N	\N	1	82	14	6	0	5	0	2	0	3	\N	1.5	28	g	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	22
House Salad Dressing	51db37b4176fe9790a8987cd	51c3c4f297c3e6d8d3b4b26f	11751826153	2	\N	Corn Oil, Sugar, Soybean Oil, Extra Virgin Olive Oil, Sugar, Water, Vinegar, Red Wine Vinegar, Salt, Mustard Flour, Garlic, Spices, and Polysorbate (Emulsifier).	210	200	22	3	0	\N	\N	0	200	3	0	3	0	0	0	0	0	\N	11	2	tbsp	31	31	g	\N	2014-11-24T20:24:24+00:00	\N	10
Organic Applesauce	51db37b5176fe9790a89884d	54b52df9b1fc8a584e635ccf	14800003840	2	\N	\N	50	\N	0	0	0	\N	\N	0	0	13	1	11	0	0	20	0	0	85	36	1	container	111	111	g	https://d1r9wva3zcpswd.cloudfront.net/54bc8da24f94662447fdf4c9.jpeg	2015-01-19T04:52:50+00:00	\N	4
Tropical Fruit Medley	51db37b0176fe9790a8983ef	5521a84bb4d536e06662c98d	100000000000	2	\N	\N	70	0	0	0	0	0	0	0	0	18	3	13	0.5	10	130	2	4	\N	2	1.25	cups	154	154	g	https://d1r9wva3zcpswd.cloudfront.net/5521a8e8b4d536e06662c9b5.jpeg	2015-04-05T21:28:08+00:00	\N	25
Pasta di Gragnano	55e6f026112130673dfb106c	55e6ef9563b370555ff43cc8	41220251711	2	\N	\N	210	10	1	0	0	\N	\N	0	0	41	2	2	8	0	0	0	4	\N	9	0.75	cup dry	56	56	g	https://d1r9wva3zcpswd.cloudfront.net/55e6efb963b370555ff43ccf.jpeg	2015-09-02T12:46:49+00:00	\N	7
Flossugar, Blue Raspberry	51db37c5176fe9790a8993c3	55dc0d760407ce7826b159c6	90939132019	2	\N	\N	50	\N	0	\N	\N	\N	\N	\N	0	14	\N	14	0	\N	\N	\N	\N	\N	104	0.5	oz	14	14	g	https://d1r9wva3zcpswd.cloudfront.net/55de08843acaa9164a1e97d7.jpeg	2015-08-26T18:42:12+00:00	\N	8
Energy Drink, Organic Energy	51db37cc176fe9790a899a93	52663eac5ab0a80500002c79	857000000000	2	\N	Sparkling  Filtered Water, Organic Raw Cane Sugar, Organic Lemon Juice (Fruit Juice From Concentrate), Organic Elderberry Juice (Fruit Juice From Concentrate), Organic Ginseng, OrganicEnergy (135 mg) Caffeine (Organic Guarana, Green Tea & Raw Green Coffee Bean) (11%).	112	0	0	\N	\N	\N	\N	\N	0	28	\N	26	0	\N	\N	\N	\N	\N	1	1	can	\N	250	ml	https://d1r9wva3zcpswd.cloudfront.net/536bc3094a749f8f03d61551.jpeg	2014-11-24T20:24:24+00:00	\N	17
Ultra Thin Pizza Crust	5460ea84388fc43c2fa0729d	5466475b0bd65ad56142a8ea	23402087202	2	\N	\N	130	15	1.5	0	0	\N	\N	0	75	24	4	1	4	0	0	6	8	\N	9	1	slice	45	45	g	https://d1r9wva3zcpswd.cloudfront.net/54664ad40bd65ad56142a9c9.jpeg	2014-11-24T20:24:24+00:00	\N	26
Ice Cream, Michigan Deer Traxx	51db3810176fe9790a89b212	54ecb4397daee9762d276916	70438102539	2	\N	\N	170	90	10	5	0	\N	\N	20	65	18	1	15	3	4	0	8	0	\N	14	0.5	cup	64	64	g	https://d1r9wva3zcpswd.cloudfront.net/54ecb5377daee9762d276947.jpeg	2015-02-24T17:30:31+00:00	\N	5
Greek Dressing	51db37b4176fe9790a898793	54b79c01c298a73220e18688	697000000000	2	\N	\N	120	63	7	1	0	\N	\N	0	200	15	1	5	0	0	0	0	0	\N	16	2	tablespoon	36	36	g	https://d1r9wva3zcpswd.cloudfront.net/54b79c90c298a73220e186b9.jpeg	2015-01-15T10:55:12+00:00	\N	117
Baby Corn, Whole	51db37ca176fe9790a8997d9	51c37c1e97c3e6d272825038	41253006012	2	Whole	Baby Corn, Water, Salt.	15	0	0	0	0	\N	\N	0	320	4	2	1	0	0	0	0	0	\N	2	0.5	cup	110	110	g	\N	2014-11-24T20:24:24+00:00	\N	5
Ciabatta Loaf	51db37c5176fe9790a8993a9	51c3ebd697c3e6de73cba6a0	6991010400	2	\N	Enriched, Unbleached, Unbromated Flour (Wheat Flour, Malted Barley Flour, Niacin, Iron, Thiamin Mononitrate, Riboflavin, Folic Acid), Water, Kosher Salt, Yeast.	116	3	0	0	\N	\N	\N	0	254	24	1	0	4	0	0	1	8	\N	8	2	oz	56.6000000000000014	56.6000000000000014	g	\N	2014-11-24T20:24:24+00:00	\N	8
Sandwich, Grilled Chicken	5460ebd4cd31bf2c3808b6bc	5536fde944eead46118474c4	60522000087	2	\N	\N	280	80	9	2	0	\N	\N	30	490	\N	2	6	15	0	8	4	0	\N	1	1	sandwich	113	113	g	https://d1r9wva3zcpswd.cloudfront.net/5536fea344eead46118474f5.jpeg	2015-04-22T01:51:31+00:00	\N	118
Mild Buffalo Sauce with Seasoned Chicken Wings	51db37b7176fe9790a8989db	51c3c2ab97c3e6d8d3b4a0ed	78929482740	2	\N	Chicken Wings, Cayenne Pepper Sauce (Aged Cayenne Red Peppers, Vinegar, Salt, Garlic), Water, Partially Hydrogenated and Fractionated Soybean Oil, Contains 2% or Less of Seasoning Blend (Maltodextrin, Mono & Diglycerides, Natural Flavors, Potassium Sorbate, Sodium Benzoate, Corn Syrup Solids, Xanthan Gum, Propylene Glycol Alginate, Dehydrated Garlic, Dehydrated Onion, Sugar, Lemon Juice Solids, Guar Gum, Worcestershire Sauce Solids, [Molasses, Vinegar, Corn Syrup, Salt, Caramel Color, Garlic, Sugar, Spice, Tamarind, Natural Flavor], Spice, Artificial Flavor), Modified Cornstarch, Pepper Sauce (Distilled Vinegar, Red Pepper, Salt), Preservative Blend (Sodium Citrate, Sodium Diacetate), Salt, Cultured Dextrose, Propionic Acid, Sugar, Autolyzed Yeast, Flavoring, Dextrose, Sugar, Guar and Xanthan Gums, Sodium Phosphates, Sodium Bicarbonate, Disodium Inosinate and Disodium Guanylate, Nisin Preparation (Salt, Nisin).	200	140	16	4	\N	\N	\N	75	1900	3	\N	2	12	2	2	0	4	\N	3	5	oz	151	151	g	\N	2014-11-24T20:24:24+00:00	\N	8
Tortilla Chips	51db37c2176fe9790a8991c5	51c402b197c3e6dfa4df4763	48867312164	2	\N	Stoneground Corn Masa Flour, Trace of Lime, Vegetable Oil (Canola Oil or Soybean Oil), Salt and Water.	170	100	9	1	0	\N	\N	0	105	15	3	0	2	2	0	2	8	\N	15	13	tortillas	28.3500000000000014	28.3500000000000014	g	https://d1r9wva3zcpswd.cloudfront.net/54ca111fca1c9b3541c07a97.jpeg	2015-01-29T10:53:19+00:00	\N	119
Mealtime Shake, Delicious Vanilla	51db37e5176fe9790a89a5dd	51c3c43397c3e6d8d3b4acfe	93749066017	2	Delicious Vanilla	Whole Milk, Water, Sucrose, Protein Blend (Nonfat Dry Milk, Milk Protein Concentrate, Calcium Caseinate, Whey Protein Concentrate, Soy Protein Isolate, Soy Protein Concentrate), Microcrystalline Cellulose, Natural and Artificial Flavors, Dipotassium Phosphate, Salt, Sucralose, Carageenan, Guar Gum, Gum Arabic, Soy Lecithin, Calcium and Potassium Salts, (Calcium Hydroxide, Citric Acid, Phosphoric Acid, Potassium Hydroxide), Vitamin A Palmitate, Vitamin D, Vitamin E Acetate, Ascorbic Acid (Vitamin C), Thiamin Mononitrate (Vitamin B1), Riboflavin (Vitamin B2), Manganese Sulfate, Pyridoxine HCL (Vitamin B6), Chromium Chloride, Cyanocobalamin (Vitamin B12), Niacinamide (Vitamin B3), Folic Acid, Pantothenic Acid, Biotin, Sodium Molybdate, and Sodium Selenate.	200	45	5	3	0	\N	\N	20	250	32	1	30	10	20	20	50	5	\N	4	1	package	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	23
Syrian Lebanese Bread	54f5b6ba6d947d10506cf2a9	54f5b6ba6d947d10506cf2aa	744000000000	2	\N	\N	70	6	0.599999999999999978	0	0	\N	\N	0	100	12	0	0	2	0	0	0	4	\N	4	1	pc	56	56	g	https://d1r9wva3zcpswd.cloudfront.net/54f5b8aad06b565d757f6b23.jpeg	2015-03-03T13:35:39+00:00	\N	80
Exotic Juice Drink, Guanabana	51db3812176fe9790a89b295	51c3fc6897c3e6dfa4df182c	64579007044	2	Guanabana	Water, Guanabana Pulp, Sugar, Malic Acid, Guar and Xanthan Gum (Stabilizer), Natural and Simulated Flavours, Ascorbic Acid (Vitamin C).	140	0	0	0	0	\N	\N	0	0	34	1	30	0	0	100	0	0	\N	4	8.44999999999999929	fl oz	239	239	g	\N	2014-11-24T20:24:24+00:00	\N	2
Orange Soda	550edf24222ed57433ff372a	550edfa09b696e9e38262d19	729000000000	2	\N	\N	120	\N	0	\N	0	\N	\N	\N	15	31	\N	29	0	\N	\N	\N	\N	\N	2.5	8	fl oz	\N	240	ml	https://d1r9wva3zcpswd.cloudfront.net/550ee1059b696e9e38262d78.jpeg	2015-03-22T15:34:30+00:00	\N	2
Pizza Pouches, Meat-Trio	51db381b176fe9790a89b573	51c3f96c97c3e6dfa4df0268	72180631954	2	\N	Enriched Flour (Wheat Flour, Malted Barley Flour, Niacin, Reduced Iron, Thiamine Mononitrate, Riboflavin, Folic Acid), Low Moisture Part Skim Mozzarella Cheese (Cultured Pasteurized Part Skim Milk, Salt, Enzymes), Water, Tomatoes (Water, Tomato Paste), Cooked Ham, Water, and Isolated Soy Protein Product, Natural Hickory Smoke Flavor Added (Ham, Water, Isolated Soy Protein, Dextrose, Salt, Corn Syrup Solids, Sodium Phosphate, Smoke Flavorings, Sodium Erythorbate, Sodium Nitrite), Cooked Pizza Topping (Sausage [Pork, Beef, Water, Spices, Salt, Sugar, Garlic Powder],Water, Textured Vegetable Protein [Soy Flour, Salt]), Dough Concentrate (Enriched Flour [Wheat Flour, Malted Barley Flour, Niacin, Iron, Thiamine Mononitrate, Riboflavin, Folic Acid], Rice Flour, Dried Whey Partially Hydrogenated Soybean Oil, Leavening [Sodium Acid, Pyrophosphate, Sodium Bicarbonate Pepperoni, Monocalcium Phosphate], Sugar, Salt, Powered Cellulose, Carboxymethyl Cellulose, Calcium Propionate (Added as a Preservative]), Pepperoni (Pork and Beef, Salt, Spices, Dextrose, Lactic Acid Starter Culture, Natural Smoke Flavor, Flavoring, Oleoresin of Paprika, Sodium Nitrite, BHA, BHT, with Citric Acid Added to Help Protect Flavor), Soybean Oil, Contains 2 percent or less of modified Food Starch, Sugar, Salt, Yeast (Yeast, Sorbitan Monostearate, Ascorbic Acid), Spices, Maltodextrin, Flavoring (Autolyzed Yeast Extract, Salt, Maltodextrin, Soy Sauce [Wheat, Soybeans, Salt], Natural Flavor, Sugar, Onion Powder, Garlic Powder, Spice, Disodium Inosinate, Disodium Guanylate), Hydrolyzed Soy and Corn Protein, Paprika, Garlic Powder, Beet Powder.	320	130	14	5	\N	\N	\N	25	710	35	2	4	15	4	0	20	6	\N	2	1	pc	127	127	g	\N	2014-11-24T20:24:24+00:00	\N	80
Skim Fat Free Milk	545b8e00209f63214035eede	54b80c73e6d674c85ea0b972	88365000194	2	\N	\N	90	0	0	0	0	\N	\N	5	105	12	0	12	8	10	0	30	0	\N	4	1	cup	\N	240	ml	https://d1r9wva3zcpswd.cloudfront.net/54b825af8d4114765b576808.jpeg	2015-01-15T20:41:42+00:00	\N	5
Salsa, Twist of Greece, Medium	51db37dc176fe9790a89a0d1	51c3cdc297c3e6d8d3b4f59e	56952011267	2	Twist of Greece, Medium	Diced Tomatoes, Crushed Tomatoes, Onions, Water, Apple Cider Vinegar, Jalapeno Peppers, Garlic, Cilantro, Sea Salt, Chili Pepper, Capers.	10	0	0	0	0	\N	\N	0	130	3	1	0	0	2	6	2	2	\N	11	2	tbsp	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	10
Rotini	51db37b4176fe9790a89875d	51d2fc3acc9bff111580e1ee	76808533583	2	\N	Semolina (Wheat), Grain and Legume Flour Blend [Grains and Legumes (Lentils, Chickpeas, Flaxseed, Barley, Oats, Spelt), Egg Whites, Oat Fiber], Durum Flour, Niacin, Iron (Ferrous Sulfate), Thiamine Mononitrate, Riboflavin, Folic Acid.	210	20	2	0	0	1	0.5	0	25	38	4	2	10	0	0	2	15	\N	7	0.140000000000000013	box	56	56	g	https://d1r9wva3zcpswd.cloudfront.net/536b90b0f1f85db0054dca3f.jpeg	2014-11-24T20:24:24+00:00	\N	21
Hand-Crafted Soft Drinks, Shirley Temple Flavored	51db37ce176fe9790a899bf9	51c3587a97c3e69de4aff38c	9450050641	2	Shirley Temple Flavored	Carbonated Water, High Fructose Corn Syrup, Natural & Artificial Flavors, Sodium Benzoate, Citric Acid, Aspartame, FD&C Red No. 40 and FD&C Blue No. 1.	195	0	0	\N	\N	\N	\N	\N	58	50	\N	50	0	0	0	0	0	\N	6	1	bottle	\N	\N	\N	\N	2014-11-24T20:24:24+00:00	\N	42
All Natural Beef Jerky, Honey Glazed	51db3812176fe9790a89b2b1	5571e5661b77af5071c28fd7	710000000000	2	\N	\N	90	10	1	0	0	\N	\N	10	640	7	0	7	11	0	0	0	10	\N	3	1	oz	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/5571e62f54f112724d076dbf.jpeg	2015-06-05T18:10:55+00:00	\N	8
Cheese Snacks, Twists	51db37b9176fe9790a898bdd	51c35a2597c3e69de4affba6	11110587923	2	Twists	Pasteurized Part-Skim Milk, Cream and Skim Milk, Cheese Cultures, Salt, Annatto (for Color), Enzymes.	80	50	6	3	0	\N	\N	15	200	0	0	0	6	4	0	20	0	\N	12	1	pc	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	80
Green Goodness Fruit Juice Smoothie	51db37b9176fe9790a898b72	552a01d29ce0fe093bf61bcc	121000000000	2	\N	\N	260	2.70000000000000018	0.299999999999999989	0.100000000000000006	0	\N	\N	0	50	61	5	56	3	20	100	8	10	\N	1	450	ml	\N	450	ml	https://d1r9wva3zcpswd.cloudfront.net/552a035960329439264a2fc3.jpeg	2015-04-12T05:32:09+00:00	\N	78
Mini Cakes, Creme Filled Chocolate, Cakes, Individual Servings	51db37b9176fe9790a898c23	51c3d5d997c3e6d8d3b538b9	72030013275	2	Cakes, Individual Servings	Sugar, Enriched Bleached Wheat Flour [Flour, Malted Barley Flour, reduced Iron, Niacin, Thiamin Mononitrate (b1), Riboflavin (B2), Folic Acid], Whole Milk Partially Hydrogenated Vegetable Shortening (Soybean, Cottonseed), Eggs, Nonfat Milk, Invert Sugar, Cocoa (Processed With Alkali), Chocolate Powder (Sugar, Chocolate Liquor, Dextrose), Corn Syrup, Glycerine, Butter, Natural & artificial Flavors, Mono- and Diglycerides, Leavening (Baking Soda, Sodium Aluminum Phosphate), Modified Cornstarch, Salt, Water, Potassium Sorbate (Preservative), Dextrose, Xanthan Gum, Calcium Carbonate, Calcium Sulfate, Soy Lecithin, Agar, Pectin, Cream Of Tartar, Sodium Aluminum Sulfate, Artificial Color, Caramel Color.	220	90	10	3	\N	\N	\N	15	260	31	1	\N	2	0	0	2	4	\N	6	1	pc	57	57	g	\N	2014-11-24T20:24:24+00:00	\N	80
Sourdough Bread	51db3825176fe9790a89b759	5460eb6c8e3df2917ff63332	62240023393	2	\N	\N	190	31.5	3.5	0.400000000000000022	0	\N	\N	0	270	35	4	1	7	0	0	2	20	\N	\N	2	slices	68	68	g	https://d1r9wva3zcpswd.cloudfront.net/5460f03a388fc43c2fa07441.jpeg	2014-11-24T20:24:24+00:00	\N	31
Soymilk, Organic, Unsweetened	51db37b1176fe9790a898468	54eb2aa36a865f6c472354f1	688000000000	2	\N	\N	70	35	4	0.5	0	\N	\N	0	120	4	2	2	7	10	0	30	8	\N	4	1	cup	\N	240	ml	https://d1r9wva3zcpswd.cloudfront.net/54eb70e1f5d806982af5d940.jpeg	2015-02-23T18:26:41+00:00	\N	5
Premium Dark Chocolate, with Mint Cookie Crunch	51db37b1176fe9790a8984ba	556540ff5d613c9d5f5935a9	82086061441	2	\N	\N	280	160	18	11	0	\N	\N	5	60	34	3	25	3	2	0	2	10	\N	1	1	bar	57	57	g	https://d1r9wva3zcpswd.cloudfront.net/5565417d5d613c9d5f5935c8.jpeg	2015-05-27T04:01:01+00:00	\N	3
Greek Yogurt, Lemon	51db37bd176fe9790a898e85	55806622970e3b40405abbc7	62100009741	2	\N	\N	100	0	0	0	0	\N	\N	2.5	80	14	0	9	10	4	10	10	\N	\N	\N	1	container	150	150	g	https://d1r9wva3zcpswd.cloudfront.net/5580691421a6d9323385f8ef.jpeg	2015-06-16T18:21:08+00:00	\N	4
Sauce with Vegetables, Golden Curry, Hot	51db37ce176fe9790a899c64	51c3d27397c3e6d8d3b51cc9	74880040623	2	Golden Curry, Hot	Water, Vegetables (Potato, Onion, Carrot), Edible Oils (Palm Oil, Canola Oil), Wheat Flour, Sugar, Curry Powder, Hydroxypropyl Distarch Phosphate, Salt, Yeast Extract, Spices, Caramel, Apple Vinegar, Dried Bonito Powder, Dextrin.	240	130	15	9	0	\N	\N	0	1100	25	3	7	3	6	4	6	6	\N	1	1	package	230	230	g	\N	2014-11-24T20:24:24+00:00	\N	23
Best Fiber Powder, Fiber Supplement	51db37c9176fe9790a8995f5	5531b2a1a168e8d670d0f8d4	846000000000	2	\N	\N	15	\N	\N	\N	\N	\N	\N	\N	0	4	3	0	\N	\N	\N	\N	\N	\N	62	2	tsp	3.5	3.5	g	https://d1r9wva3zcpswd.cloudfront.net/5531b3a0da1655a64b5192ec.jpeg	2015-04-18T01:30:08+00:00	\N	72
Tomatoes, Stewed Italian	51db37b0176fe9790a8983b6	51c3e9f397c3e6de73cb9a63	70253267345	2	Stewed Italian	Tomatoes, Tomato Juice, Sugar, Salt, Dehydrated Onion, Dehydrated Celery, Dehydrated Bell Peppers, Spices, Calcium Chloride, Citric Acid, Natural Flavors.	35	0	0	0	0	\N	\N	0	270	8	1	6	1	10	20	4	6	\N	3.5	0.5	cup	117	117	g	\N	2014-11-24T20:24:24+00:00	\N	5
Smoked Sausage	550fa3be8e6b0b9018425072	550fa43b1f5f82cb1e2c2578	18619418659	2	\N	\N	280	210	24	8	0	\N	\N	55	870	4	1	1	12	15	2	6	6	\N	0	1	link	91	91	g	https://d1r9wva3zcpswd.cloudfront.net/550fa45b1f5f82cb1e2c258a.jpeg	2015-03-23T05:27:55+00:00	\N	91
Premium Deli Turkey Breast	51db37b0176fe9790a8983ec	54be6c1130b9dfdc6a5bc7fa	41303029862	2	\N	\N	60	10	1	0	0	0	0	25	390	2	0	1	9	0	0	0	4	\N	8	2	oz	56	56	g	https://d1r9wva3zcpswd.cloudfront.net/54be6da23b2abff06af10812.jpeg	2015-01-20T15:00:50+00:00	\N	8
Vanilla Sandwich Cremes	51db37cc176fe9790a899a4d	51c35d2e97c3e69de4b00d2e	11213900759	2	Sandwich Cremes, Vanilla	Enriched Flour (Contains: Wheat) (Bleached Wheat Flour, Niacin, Reduced Iron, Thiamin Mononitrate [Vitamin B1], Riboflavin [Vitamin B2], Folic Acid), Sugar, Vegetable Oil (Contains: Soy) (Contains One or More of the Following: Palm, Canola, Soybean with TBHQ for Freshness), Corn Syrup, Dextrose, Corn Flour, Contains Two Percent or Less of: Cornstarch, Salt, Baking Soda, Soy Lecithin (Contains: Soy) (Emulsifier), Artificial Color (FD&C Yellow 5, Yellow 6), Natural and Artificial Flavors.	120	40	4.5	1.5	0	1.5	1.5	0	75	19	0	9	1	0	0	0	4	\N	26	2	cookies	26	26	g	https://d1r9wva3zcpswd.cloudfront.net/536a758521f62f01209bd49d.jpeg	2014-11-24T20:24:24+00:00	\N	16
Italian Pull-A-Part 3/4 Bake	554c4ed2ad93e45475aba77b	554c4e24a81c45e161cb47c0	42155000573	2	\N	\N	100	0	0	0	0	\N	\N	0	210	21	1	0	3	\N	\N	\N	\N	\N	10	1	roll	100	100	g	https://d1r9wva3zcpswd.cloudfront.net/554c4e11ccaba88f04eef04d.jpeg	2015-05-08T05:48:01+00:00	\N	57
Ice Cream, Mint Chocolate Chip	51db3810176fe9790a89b222	55c258ace8512be77f3130c4	72623005151	2	\N	\N	110	25	3	1.5	0	\N	\N	15	75	19	1	15	3	4	0	10	0	\N	32	0.5	cup	65	65	g	https://d1r9wva3zcpswd.cloudfront.net/55c25b0e11b613614b4c113c.jpeg	2015-08-05T18:50:54+00:00	\N	5
Bread Pudding Mix	51db37e3176fe9790a89a4df	51c357cd97c3e69de4afefea	645001028	2	\N	Sugar, Coconut Oil, Corn Syrup Solids, Egg Yolk Solids, Egg White Solids, Nonfat Dry Milk and/or Sodium Caseinate, Artificial Flavor, Calcium & Potassium Phosphate, Sodium Stearoyl Lactylate, Soy Lecithin, Annatto (Color), Mono & Diglycerides.	150	35	4	3	0	\N	\N	25	15	29	0	26	1	0	0	0	0	\N	16	3	tbsp dry	34	34	g	\N	2014-11-24T20:24:24+00:00	\N	113
Roasted Pine Nut Hummus	51db37b3176fe9790a8986ce	51c3f36a97c3e6de73cbdbb8	40822011747	2	Roasted Pine Nut	Cooked Chickpeas (Chick Peas [Garbanzos], Water), Tahini (Ground Sesame), Soybean Oil, Garlic, Salt, Citric Acid, Red Bell Pepper, Pine Nuts, Potassium Sorbate Added to Maintain Freshness, Spices, Natural Flavors. Gluten free.	80	50	6	1	0	\N	\N	0	130	5	2	0	2	0	0	2	4	\N	10	2	tbsp	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/53cd1df89628b8892a249fc8.jpeg	2014-11-24T20:24:24+00:00	\N	10
Grilled White Meat Chicken	51db37b3176fe9790a898696	5501942de1d6024060110a59	70077812509	2	\N	\N	100	25	3	1	0	\N	\N	55	490	2	0	1	17	0	0	0	2	\N	4	0.75	cup	85	85	g	https://d1r9wva3zcpswd.cloudfront.net/5501941cc2ed91d528657170.jpeg	2015-03-12T13:26:52+00:00	\N	5
Lattice Apple Pie	52ceb0f8bba524e0680000b8	51d37ba7cc9bff5553aaa33d	613000000000	2	\N	Filling: Apples, Water, Sugar, Modified Food Starch, Salt, Spice, Citric Acid. Crust: Enriched Wheat Flour (Flour, Niacin, Reduced Iron, Thiamine Mononitrate, Riboflavin, Folic Acid), Vegetable Shortening (Partially Hydrogenated Soybean Oil), Water, Dextrose, Salt, Sodium Metabisulfite. Sugar Topping: Sugar.	330	160	18	4	\N	\N	\N	0	160	42	2	22	2	0	4	0	6	\N	10	0.100000000000000006	pie	130	130	g	\N	2014-11-24T20:24:24+00:00	\N	116
Food Bar, Organic Live Raspberry & Chocolate 12 Bars	51db37ca176fe9790a899843	51c54bd897c3e6efadd611b6	30684810701	2	Organic Live Raspberry & Chocolate 12 Bars	Cashews*, Sunflower Seeds*, Agave Nectar*, Dates*, Cocoa Processed With Alkali*, Almonds*, Raspberry Powder*, Sprouted Flax Seeds*. Contains Nuts.	260	130	15	2	0	\N	\N	0	5	30	6	18	8	2	20	8	20	\N	12	62	G	62	62	g	\N	2014-11-24T20:24:24+00:00	\N	12
Sausage, Smoked	51db37b2176fe9790a8985ac	51c3c34297c3e6d8d3b4a591	70800050024	2	Smoked	Pork, Water, Beef, Corn Syrup, Salt, Contains 2% or Less Flavorings, Dextrose, Sodium Phosphate, Sodium Erythorbate, Sodium Nitrite.	280	210	23	8	0	\N	\N	55	810	4	0	1	12	0	0	2	4	\N	5	1	link	90	90	g	\N	2014-11-24T20:24:24+00:00	\N	91
Premium Syrup, Peppermint	54a2c596eebd703e1258209a	54f6cfcbce35108f6809c413	719000000000	2	\N	\N	35	\N	0	\N	\N	\N	\N	\N	0	8	\N	8	0	\N	\N	\N	\N	\N	94	1	pump	\N	8	ml	https://d1r9wva3zcpswd.cloudfront.net/54f6d1654e9eb9c0518e9498.jpeg	2015-03-04T09:33:25+00:00	\N	120
Parmesan Crisps, Rosemary	51db380a176fe9790a89b0a0	51c3f0e497c3e6de73cbc97e	93222000071	2	Rosemary	Pasteurized Part Skim Milk, Rosemary, Cheese Cultures, Salt, Non-Animal Rennet. Gluten free.	80	50	6	3	0	\N	\N	15	150	0	0	0	7	2	0	20	2	\N	6	3	crisps	14	14	g	\N	2014-11-24T20:24:24+00:00	\N	121
Brownies, Salted Caramel Brownies	51db37b1176fe9790a89846f	551e409f751a48a1446113ec	688000000000	2	\N	\N	540	220	25	14	0.5	\N	\N	145	630	75	3	54	5	10	0	6	25	\N	2	1	dessert	125	125	g	https://d1r9wva3zcpswd.cloudfront.net/551e4196533598b454d03d86.jpeg	2015-04-03T07:30:30+00:00	\N	122
Party Mix	54c3089f875eeb9e61a80a41	54c30902b841d74d3ad0fb48	646000000000	2	\N	\N	140	30	3	0	0	\N	\N	0	385	20	2	0	10	0	0	2	8	\N	1	1	packet	38	38	g	https://d1r9wva3zcpswd.cloudfront.net/54c308e9875eeb9e61a80a50.jpeg	2015-01-24T02:52:25+00:00	\N	11
Mayonnaise, Light	51db37b4176fe9790a898763	51c547c097c3e6efadd5f10c	47900507338	2	Light	Water, Soybean Oil, Egg Yolks, Modified Food Starch, Distilled Vinegar, Sugar, Salt, Xanthan Gum, Gellan Gum, Potassium Sorbate And Edta As Preservatives, Natural Flavor, Beta Carotene And Tocopherols (Vitamin E). Contains Egg.	45	45	5	0	0	\N	\N	5	110	0	0	0	0	0	0	0	0	\N	60	14	G	14	14	g	\N	2014-11-24T20:24:24+00:00	\N	12
Cereal, Fiber Essentials	51db37b0176fe9790a8983be	51c3bc1b97c3e6d8d3b46e4f	77890319604	2	Fiber Essentials	Corn Bran, Whole Grain Wheat, Wheat Bran, Color Added, Canola Oil, Sodium Bicarbonate, Salt, Aspartame (Phenylketonurics: Contains Phenylalanine), Vitamin E (Mixed Tocopherols) Added to Preserve Freshness. Vitamins and Minerals: Calcium Carbonate, Zinc Oxide and Reduced Iron (Mineral Nutrients), Sodium Ascorbate, Niacin, Vitamin B6 (Pyridoxine Hydrochloride), Vitamin B2 (Riboflavin), Vitamin B1 (Thiamin Mononitrate), Folic Acid, Vitamin B12.	60	10	1	0	0	\N	\N	0	105	25	14	0	2	0	10	10	25	\N	15	0.5	cup	30	30	g	\N	2014-11-24T20:24:24+00:00	\N	5
Pretzels, Yogurt Flavored, Mister Salty	51db37ba176fe9790a898c86	51d2f9becc9bff111580d189	44000022327	2	Yogurt Flavored, Mister Salty	Yogurt Flavored Coating [Sugar, Palm Kernel Oil, Milk, Yogurt Powder (Cultured Whey Protein Concentrate, Cultured Skim Milk, Yogurt Cultures), Color Added, Soy Lecithin, Salt], Unbleached Enriched Flour (Wheat Flour, Niacin, Reduced Iron, Thiamine Mononitrate {Vitamin  B1}, Riboflavin {Vitamin B2}, Folic Acid), Salt, Corn and/or Canola and/or Cottonseed and/or Soybean Oil, Corn Syrup, Baking Soda, Yeast.	100	35	4	3	0	\N	\N	0	160	16	0	7	1	0	0	0	4	\N	6	1	package	22	22	g	\N	2014-11-24T20:24:24+00:00	\N	23
Cheddar Slices	51db37b5176fe9790a8988d1	5575db24bac87bda767fecee	68200805023	2	\N	\N	35	9	1	1	0	\N	\N	5	320	2	0	1	4	0	0	10	0	\N	\N	1	slice	19	19	g	https://d1r9wva3zcpswd.cloudfront.net/5575dad23072ae6a733e2598.jpeg	2015-06-08T18:11:30+00:00	\N	26
Pancetta	51db37b6176fe9790a89895b	51c3c23497c3e6d8d3b49d58	73541405269	2	\N	Pork Belly, Salt, and Less than 2% of the Following: Natural Flavorings, Sugar, Sodium Nitrate, Sodium Ascorbate, Sodium Nitrite, Lactic Acid Starter Culture.	120	60	11	4	0	\N	\N	25	410	0	0	0	5	0	0	0	0	\N	4	1	oz	28	28	g	\N	2014-11-24T20:24:24+00:00	\N	8
Mandarin Oranges	51db37cb176fe9790a8998d5	532c568dfd4ace9773e1a728	78742027227	2	\N	\N	45	0	0	0	0	0	0	0	10	13	0.5	6	0	2	20	0	0	130	3.5	0.5	cup	122	122	g	https://d1r9wva3zcpswd.cloudfront.net/53601f9125b29d1111f0712a.jpeg	2014-11-24T20:24:24+00:00	\N	5
Greek Nonfat Yogurt, Traditional, Plain	51db37b8176fe9790a898af0	55333c463031eec23b6bda49	1118827	2	\N	\N	130	0	0	0	0	\N	\N	15	90	10	0.5	9	23	0	0	25	2	\N	4	1	cup	227	227	g	https://d1r9wva3zcpswd.cloudfront.net/55333c7152876df8674c9a57.jpeg	2015-04-19T05:26:10+00:00	\N	5
Granola	551f21db5b98dbc23e884f1f	5560c0d438f506317c2e1991	858000000000	2	\N	\N	130	60	7	0.5	0	\N	\N	0	20	15	2	7	2	2	0	2	4	\N	12	0.25	cup	28	28	g	https://d1r9wva3zcpswd.cloudfront.net/5560c0cea323292b0f6ea976.jpeg	2015-05-23T18:02:55+00:00	\N	5
\.


--
-- PostgreSQL database dump complete
--

