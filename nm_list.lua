-- TODO Update Respawn times for retail
local nm_list = T{
    T{ mobid = 16781327, mobname = "Stubborn Dredvodd" },
    T{ mobid = 16785593, mobname = "Tempest Tigon" },
    T{ mobid = 16785676, mobname = "Orctrap" },
    T{ mobid = 16793646, mobname = "Serra" },
    T{ mobid = 16793698, mobname = "Shankha" },
    T{ mobid = 16793742, mobname = "Intulo" },
    T{ mobid = 16793776, mobname = "Splacknuck" },
    T{ mobid = 16797770, mobname = "Skvader" },
    T{ mobid = 16797968, mobname = "Magnotaur" },
    T{ mobid = 16797969, mobname = "Jormungand" },
    T{ mobid = 16798031, mobname = "Mountain Worm" },
    T{ mobid = 16798056, mobname = "Bonnacon" },
    T{ mobid = 16805962, mobname = "Sekhmet" },
    T{ mobid = 16806162, mobname = "Citipati" },
    T{ mobid = 16806227, mobname = "Tiamat" },
    T{ mobid = 16806249, mobname = "Ambusher Antlion" },
    T{ mobid = 16822423, mobname = "Bugbear Strongman" },
    T{ mobid = 16822427, mobname = "Bugbear Strongman" },
    T{ mobid = 16826510, mobname = "Swashstox Beadblinker" },
    T{ mobid = 16826517, mobname = "Swashstox Beadblinker" },
    T{ mobid = 16843043, mobname = "Cerebrator" },
    T{ mobid = 16851267, mobname = "Satiator" },
    T{ mobid = 16859472, mobname = "Coveter" },
    T{ mobid = 16875552, mobname = "Padfoot" },
    T{ mobid = 16875578, mobname = "Padfoot" },
    T{ mobid = 16875615, mobname = "Padfoot" },
    T{ mobid = 16875703, mobname = "Padfoot" },
    T{ mobid = 16875741, mobname = "Megalobugard" },
    T{ mobid = 16875748, mobname = "Padfoot" },
    T{ mobid = 16879737, mobname = "Odqan" },
    T{ mobid = 16879847, mobname = "Okyupete" },
    T{ mobid = 16887908, mobname = "Tres Duendes" },
    T{ mobid = 16887953, mobname = "Eba" },
    T{ mobid = 16896107, mobname = "Imdugud" },
    T{ mobid = 16896131, mobname = "Boroka" },
    T{ mobid = 16900230, mobname = "Carmine Dobsonfly" },
    T{ mobid = 16900231, mobname = "Carmine Dobsonfly" },
    T{ mobid = 16900232, mobname = "Carmine Dobsonfly" },
    T{ mobid = 16900233, mobname = "Carmine Dobsonfly" },
    T{ mobid = 16900234, mobname = "Carmine Dobsonfly" },
    T{ mobid = 16900235, mobname = "Carmine Dobsonfly" },
    T{ mobid = 16900236, mobname = "Carmine Dobsonfly" },
    T{ mobid = 16900237, mobname = "Carmine Dobsonfly" },
    T{ mobid = 16900238, mobname = "Carmine Dobsonfly" },
    T{ mobid = 16900239, mobname = "Carmine Dobsonfly" },
    T{ mobid = 16916814, mobname = "Jailer of Temperance" },
    T{ mobid = 16941066, mobname = "Woodnix Shrillwhistle" },
    T{ mobid = 16941082, mobname = "Shamblix Rottenheart" },
    T{ mobid = 16941097, mobname = "Gosspix Blabberlips" },
    T{ mobid = 16941115, mobname = "Flamecaller Zoeqdoq" },
    T{ mobid = 16941116, mobname = "Elvaansticker Bxafraff" },
    T{ mobid = 16941133, mobname = "Hamfist Gukhbuk" },
    T{ mobid = 16941134, mobname = "Lyncean Juwgneg" },
    T{ mobid = 16941151, mobname = "QuPho Bloodspiller" },
    T{ mobid = 16941152, mobname = "GiBhe Fleshfeaster" },
    T{ mobid = 16941169, mobname = "VaRhu Bodysnatcher" },
    T{ mobid = 16941170, mobname = "TeZha Ironclad" },
    T{ mobid = 16941188, mobname = "Ree Nata the Melomanic" },
    T{ mobid = 16941189, mobname = "Koo Rahi the Levinblade" },
    T{ mobid = 16941205, mobname = "Doo Peku the Fleetfoot" },
    T{ mobid = 16941206, mobname = "Baa Dava the Bibliophage" },
    T{ mobid = 16986149, mobname = "Grand Marid" },
    T{ mobid = 16986174, mobname = "Grand Marid" },
    T{ mobid = 16986197, mobname = "Zoraal Jas Pkuucha" },
    T{ mobid = 16986320, mobname = "Gharial" },
    T{ mobid = 16986378, mobname = "Jaded Jody" },
    T{ mobid = 16990252, mobname = "Harvestman" },
    T{ mobid = 16990294, mobname = "Grand Marid" },
    T{ mobid = 16990295, mobname = "Grand Marid" },
    T{ mobid = 16990306, mobname = "Mahishasura" },
    T{ mobid = 16990376, mobname = "Emergent Elm" },
    T{ mobid = 16990403, mobname = "Nis Puk" },
    T{ mobid = 16998655, mobname = "Bloody Bones" },
    T{ mobid = 16998742, mobname = "Lamie No9" },
    T{ mobid = 17027423, mobname = "Ignamoth" },
    T{ mobid = 17027466, mobname = "Energetic Eruca" },
    T{ mobid = 17043554, mobname = "Zizzy Zillah" },
    T{ mobid = 17043779, mobname = "Firedance Magmaal Ja" },
    T{ mobid = 17056156, mobname = "Bluestreak Gyugyuroon" },
    T{ mobid = 17072150, mobname = "Cookieduster Lipiroon" },
    T{ mobid = 17101099, mobname = "Aynu-kaysey" },
    T{ mobid = 17101143, mobname = "Peallaidh" },
    T{ mobid = 17109147, mobname = "Melusine" },
    T{ mobid = 17109235, mobname = "Myradrosh" },
    T{ mobid = 17109296, mobname = "Goblintrap" },
    T{ mobid = 17109338, mobname = "Skogs Fru" },
    T{ mobid = 17113381, mobname = "Drumskull Zogdregg" },
    T{ mobid = 17117295, mobname = "Warabouc" },
    T{ mobid = 17117349, mobname = "Big Bang" },
    T{ mobid = 17121399, mobname = "Burlibix Brawnback" },
    T{ mobid = 17121576, mobname = "La Velue" },
    T{ mobid = 17121603, mobname = "Habergoass" },
    T{ mobid = 17125433, mobname = "Hawkeyed Dnatbat" },
    T{ mobid = 17125452, mobname = "Ashmaker Gotblut" },
    T{ mobid = 17137705, mobname = "Ankabut" },
    T{ mobid = 17137821, mobname = "Gloomanita" },
    T{ mobid = 17141962, mobname = "Kotan-kor Kamuy" },
    T{ mobid = 17141979, mobname = "Scitalis" },
    T{ mobid = 17145867, mobname = "Sugaar" },
    T{ mobid = 17146012, mobname = "Nommo" },
    T{ mobid = 17150280, mobname = "Delicieuse Delphine" },
    T{ mobid = 17154069, mobname = "EaTho Cruelheart" },
    T{ mobid = 17154148, mobname = "BaTho Mercifulheart" },
    T{ mobid = 17154195, mobname = "DaDha Hundredmask" },
    T{ mobid = 17166543, mobname = "Jeduah" },
    T{ mobid = 17166705, mobname = "Ramponneau" },
    T{ mobid = 17170475, mobname = "Ratatoskr" },
    T{ mobid = 17170499, mobname = "Kirtimukha" },
    T{ mobid = 17170569, mobname = "Demoiselle Desolee" },
    T{ mobid = 17174709, mobname = "Centipedal Centruroides" },
    T{ mobid = 17178689, mobname = "Coquecigrue" },
    T{ mobid = 17178803, mobname = "Balam-Quitz" },
    T{ mobid = 17182790, mobname = "Duu Masa the Onecut" },
    T{ mobid = 17182813, mobname = "Zhuu Buxu the Silent" },
    T{ mobid = 17182843, mobname = "Aa Xalmo the Savage" },
    T{ mobid = 17183031, mobname = "Dee Zelko the Esoteric" },
    T{ mobid = 17183032, mobname = "Marquis Forneus" },
    T{ mobid = 17183033, mobname = "Loo Kutto the Pensive" },
    T{ mobid = 17183034, mobname = "Fleshgnasher" },
    T{ mobid = 17183035, mobname = "Vee Ladu the Titterer" },
    T{ mobid = 17183036, mobname = "Maa Illmu the Bestower" },
    T{ mobid = 17183037, mobname = "Asterion" },
    T{ mobid = 17183038, mobname = "Suu Xicu the Cantabile" },
    T{ mobid = 17186927, mobname = "Amanita" },
    T{ mobid = 17187047, mobname = "Fungus Beetle" },
    T{ mobid = 17187111, mobname = "Jaggedy-Eared Jack" },
    T{ mobid = 17191044, mobname = "Rambukk" },
    T{ mobid = 17191189, mobname = "Swamfisk" },
    T{ mobid = 17191196, mobname = "Bigmouth Billy" },
    T{ mobid = 17191291, mobname = "Swamfisk" },
    T{ mobid = 17195221, mobname = "Slumbering Samwell" },
    T{ mobid = 17195259, mobname = "Tumbling Truffle" },
    T{ mobid = 17195317, mobname = "Lumbering Lambert" },
    T{ mobid = 17195318, mobname = "Bloodtear Baldurf" },
    T{ mobid = 17199161, mobname = "Metal Shears" },
    T{ mobid = 17199351, mobname = "Hippomaritimus" },
    T{ mobid = 17199438, mobname = "Valkurm Emperor" },
    T{ mobid = 17199564, mobname = "Golden Bat" },
    T{ mobid = 17203206, mobname = "Knight Crab" },
    T{ mobid = 17203207, mobname = "Knight Crab" },
    T{ mobid = 17203208, mobname = "Knight Crab" },
    T{ mobid = 17203209, mobname = "Knight Crab" },
    T{ mobid = 17203210, mobname = "Knight Crab" },
    T{ mobid = 17203211, mobname = "Knight Crab" },
    T{ mobid = 17203212, mobname = "Knight Crab" },
    T{ mobid = 17203213, mobname = "Knight Crab" },
    T{ mobid = 17203214, mobname = "Knight Crab" },
    T{ mobid = 17203215, mobname = "Knight Crab" },
    T{ mobid = 17203216, mobname = "King Arthro" },
    T{ mobid = 17203414, mobname = "Meteormauler Zhagtegg" },
    T{ mobid = 17203447, mobname = "Fraelissa" },
    T{ mobid = 17203448, mobname = "Fradubio" },
    T{ mobid = 17203475, mobname = "Supplespine Mujwuj" },
    T{ mobid = 17203547, mobname = "Sappy Sycamore" },
    T{ mobid = 17203585, mobname = "Panzer Percival" },
    T{ mobid = 17203642, mobname = "Panzer Percival" },
    T{ mobid = 17207302, mobname = "Weeping Willow" },
    T{ mobid = 17207410, mobname = "Skirling Liger" },
    T{ mobid = 17207476, mobname = "Tottering Toby" },
    T{ mobid = 17207608, mobname = "Eyegouger" },
    T{ mobid = 17207640, mobname = "Prankster Maverix" },
    T{ mobid = 17207657, mobname = "Ahtu" },
    T{ mobid = 17211537, mobname = "Stinging Sophie" },
    T{ mobid = 17211561, mobname = "Stinging Sophie" },
    T{ mobid = 17211666, mobname = "Bedrock Barry" },
    T{ mobid = 17211702, mobname = "Maighdean Uaine" },
    T{ mobid = 17211714, mobname = "Maighdean Uaine" },
    T{ mobid = 17215613, mobname = "Carnero" },
    T{ mobid = 17215626, mobname = "Carnero" },
    T{ mobid = 17215778, mobname = "Tococo" },
    T{ mobid = 17215868, mobname = "Leaping Lizzy" },
    T{ mobid = 17215888, mobname = "Leaping Lizzy" },
    T{ mobid = 17219619, mobname = "Ghillie Dhu" },
    T{ mobid = 17219787, mobname = "Highlander Lizard" },
    T{ mobid = 17219795, mobname = "Stray Mary" },
    T{ mobid = 17219886, mobname = "Rampaging Ram" },
    T{ mobid = 17219887, mobname = "Steelfleece Baldarich" },
    T{ mobid = 17219933, mobname = "Stray Mary" },
    T{ mobid = 17220000, mobname = "Haty" },
    T{ mobid = 17220001, mobname = "Bendigeit Vran" },
    T{ mobid = 17223797, mobname = "NiZho Bladebender" },
    T{ mobid = 17223889, mobname = "Jolly Green" },
    T{ mobid = 17223982, mobname = "Toxic Tamlyn" },
    T{ mobid = 17224019, mobname = "Bloodpool Vorax" },
    T{ mobid = 17224104, mobname = "BoWho Warmonger" },
    T{ mobid = 17227972, mobname = "Black Triple Stars" },
    T{ mobid = 17227992, mobname = "Black Triple Stars" },
    T{ mobid = 17228150, mobname = "Eldritch Edge" },
    T{ mobid = 17228236, mobname = "Drooling Daisy" },
    T{ mobid = 17228242, mobname = "Simurgh" },
    T{ mobid = 17231971, mobname = "Nue" },
    T{ mobid = 17232044, mobname = "Kirata" },
    T{ mobid = 17232079, mobname = "Gargantua" },
    T{ mobid = 17232094, mobname = "Humbaba" },
    T{ mobid = 17232117, mobname = "Calcabrina" },
    T{ mobid = 17236027, mobname = "Barbaric Weapon" },
    T{ mobid = 17236045, mobname = "Timeworn Warrior" },
    T{ mobid = 17236146, mobname = "Duke Focalor" },
    T{ mobid = 17236180, mobname = "Shadow Eye" },
    T{ mobid = 17240376, mobname = "Frostmane" },
    T{ mobid = 17240413, mobname = "Kreutzet" },
    T{ mobid = 17244268, mobname = "Donnergugi" },
    T{ mobid = 17244372, mobname = "Centurio XII-I" },
    T{ mobid = 17244396, mobname = "Dune Widow" },
    T{ mobid = 17244471, mobname = "Nandi" },
    T{ mobid = 17244539, mobname = "Cactrot Rapido" },
    T{ mobid = 17248468, mobname = "Tom Tit Tat" },
    T{ mobid = 17248517, mobname = "Nunyenunc" },
    T{ mobid = 17248588, mobname = "Numbing Norman" },
    T{ mobid = 17252489, mobname = "Sharp-Eared Ropipi" },
    T{ mobid = 17252657, mobname = "Spiny Spipi" },
    T{ mobid = 17252725, mobname = "Duke Decapod" },
    T{ mobid = 17256493, mobname = "Habrok" },
    T{ mobid = 17256563, mobname = "Serpopard Ishtar" },
    T{ mobid = 17256690, mobname = "Serpopard Ishtar" },
    T{ mobid = 17256836, mobname = "Herbage Hunter" },
    T{ mobid = 17260732, mobname = "Wake Warder Wanda" },
    T{ mobid = 17260907, mobname = "Helldiver" },
    T{ mobid = 17261003, mobname = "Buburimboo" },
    T{ mobid = 17264722, mobname = "Chonchon" },
    T{ mobid = 17264768, mobname = "Naa Zeku the Unwaiting" },
    T{ mobid = 17264818, mobname = "Daggerclaw Dracos" },
    T{ mobid = 17264828, mobname = "Waraxe Beak" },
    T{ mobid = 17264946, mobname = "Coo Keja the Unseen" },
    T{ mobid = 17264972, mobname = "Patripatan" },
    T{ mobid = 17268788, mobname = "Bashe" },
    T{ mobid = 17268816, mobname = "Thunderclaw Thuban" },
    T{ mobid = 17268851, mobname = "Deadly Dodo" },
    T{ mobid = 17269016, mobname = "Blighting Brand" },
    T{ mobid = 17269106, mobname = "Roc" },
    T{ mobid = 17272915, mobname = "Elusive Edwin" },
    T{ mobid = 17272958, mobname = "Huwasi" },
    T{ mobid = 17272978, mobname = "Keeper of Halidom" },
    T{ mobid = 17273278, mobname = "Noble Mold" },
    T{ mobid = 17276982, mobname = "Nightmare Vase" },
    T{ mobid = 17276992, mobname = "Nightmare Vase" },
    T{ mobid = 17277079, mobname = "Rogue Receptacle" },
    T{ mobid = 17277127, mobname = "Shikigami Weapon" },
    T{ mobid = 17281061, mobname = "Koropokkur" },
    T{ mobid = 17281149, mobname = "Mischievous Micholas" },
    T{ mobid = 17281281, mobname = "Meww the Turtlerider" },
    T{ mobid = 17281296, mobname = "Pyuu the Spatemaker" },
    T{ mobid = 17281388, mobname = "Bayawak" },
    T{ mobid = 17285220, mobname = "Woodland Sage" },
    T{ mobid = 17285248, mobname = "Powderer Penny" },
    T{ mobid = 17285394, mobname = "Hoar-knuckled Rimberry" },
    T{ mobid = 17285460, mobname = "Bisque-heeled Sunberry" },
    T{ mobid = 17285526, mobname = "Bright-handed Kunberry" },
    T{ mobid = 17289453, mobname = "Celphie" },
    T{ mobid = 17289547, mobname = "Calchas" },
    T{ mobid = 17289560, mobname = "Cactuar Cantautor" },
    T{ mobid = 17289575, mobname = "King Vinegarroon" },
    T{ mobid = 17293389, mobname = "Slippery Sucker" },
    T{ mobid = 17293537, mobname = "Trickster Kinetix" },
    T{ mobid = 17293640, mobname = "Dosetsu Tree" },
    T{ mobid = 17297440, mobname = "Behemoth" },
    T{ mobid = 17297441, mobname = "King Behemoth" },
    T{ mobid = 17301537, mobname = "Adamantoise" },
    T{ mobid = 17301538, mobname = "Aspidochelone" },
    T{ mobid = 17309954, mobname = "Despot" },
    T{ mobid = 17326106, mobname = "GuNha Wallstormer" },
    T{ mobid = 17326114, mobname = "NaHya Floodmaker" },
    T{ mobid = 17326126, mobname = "JiFhu Infiltrator" },
    T{ mobid = 17326135, mobname = "GaFho Venomtouch" },
    T{ mobid = 17326145, mobname = "TaHyu Gallanthunter" },
    T{ mobid = 17326151, mobname = "NuBhi Spiraleye" },
    T{ mobid = 17326156, mobname = "DeBho Pyrohand" },
    T{ mobid = 17326162, mobname = "GoTyo Magenapper" },
    T{ mobid = 17326168, mobname = "SoZho Metalbender" },
    T{ mobid = 17326173, mobname = "MuGha Legionkiller" },
    T{ mobid = 17326179, mobname = "SoGho Adderhandler" },
    T{ mobid = 17326185, mobname = "GuKhu Dukesniper" },
    T{ mobid = 17326190, mobname = "JiKhu Towercleaver" },
    T{ mobid = 17326195, mobname = "MiRhe Whisperblade" },
    T{ mobid = 17326201, mobname = "BeZhe Keeprazer" },
    T{ mobid = 17326212, mobname = "Humegutter Adzjbadj" },
    T{ mobid = 17326216, mobname = "Jeunoraider Gepkzip" },
    T{ mobid = 17326218, mobname = "Cobraclaw Buchzvotch" },
    T{ mobid = 17326223, mobname = "Wraithdancer Gidbnod" },
    T{ mobid = 17326229, mobname = "Galkarider Retzpratz" },
    T{ mobid = 17326233, mobname = "Deathcaller Bidfbid" },
    T{ mobid = 17326237, mobname = "Spinalsucker Galflmall" },
    T{ mobid = 17326243, mobname = "Lockbuster Zapdjipp" },
    T{ mobid = 17326248, mobname = "Heavymail Djidzbad" },
    T{ mobid = 17326255, mobname = "Elvaanlopper Grokdok" },
    T{ mobid = 17326258, mobname = "Skinmask Ugghfogg" },
    T{ mobid = 17326262, mobname = "Taruroaster Biggsjig" },
    T{ mobid = 17326265, mobname = "Mithraslaver Debhabob" },
    T{ mobid = 17326270, mobname = "Ultrasonic Zeknajak" },
    T{ mobid = 17326273, mobname = "Drakefeast Wubmfub" },
    T{ mobid = 17326284, mobname = "Foo Peku the Bloodcloak" },
    T{ mobid = 17326289, mobname = "Xaa Chau the Roctalon" },
    T{ mobid = 17326295, mobname = "Koo Saxu the Everfast" },
    T{ mobid = 17326300, mobname = "Bhuu Wjato the Firepool" },
    T{ mobid = 17326304, mobname = "Caa Xaza the Madpiercer" },
    T{ mobid = 17326307, mobname = "Maa Zaua the Wyrmkeeper" },
    T{ mobid = 17326313, mobname = "Ryy Qihi the Idolrobber" },
    T{ mobid = 17326319, mobname = "Guu Waji the Preacher" },
    T{ mobid = 17326323, mobname = "Nee Huxa the Judgmental" },
    T{ mobid = 17326325, mobname = "Kuu Xuka the Nimble" },
    T{ mobid = 17326328, mobname = "Soo Jopo the Fiendking" },
    T{ mobid = 17326335, mobname = "Xhoo Fuza the Sublime" },
    T{ mobid = 17326340, mobname = "Hee Mida the Meticulous" },
    T{ mobid = 17326344, mobname = "Knii Hoqo the Bisector" },
    T{ mobid = 17326347, mobname = "Puu Timu the Phantasmal" },
    T{ mobid = 17326374, mobname = "Moltenox Stubthumbs" },
    T{ mobid = 17326379, mobname = "Droprix Granitepalms" },
    T{ mobid = 17326387, mobname = "Brewnix Bittypupils" },
    T{ mobid = 17326397, mobname = "Ascetox Ratgums" },
    T{ mobid = 17326401, mobname = "Gibberox Pimplebeak" },
    T{ mobid = 17326405, mobname = "Swypestix Tigershins" },
    T{ mobid = 17326410, mobname = "Bordox Kittyback" },
    T{ mobid = 17326415, mobname = "Ruffbix Jumbolobes" },
    T{ mobid = 17326421, mobname = "Draklix Scalecrust" },
    T{ mobid = 17326427, mobname = "Tocktix Thinlids" },
    T{ mobid = 17326439, mobname = "Routsix Rubbertendon" },
    T{ mobid = 17326446, mobname = "Morblox Chubbychin" },
    T{ mobid = 17326452, mobname = "Whistrix Toadthroat" },
    T{ mobid = 17326458, mobname = "Slinkix Trufflesniff" },
    T{ mobid = 17326463, mobname = "Shisox Widebrow" },
    T{ mobid = 17330223, mobname = "Marquis Decarabia" },
    T{ mobid = 17330304, mobname = "Duke Gomory" },
    T{ mobid = 17330315, mobname = "Count Raum" },
    T{ mobid = 17330332, mobname = "Prince Seere" },
    T{ mobid = 17330343, mobname = "Marquis Orias" },
    T{ mobid = 17330353, mobname = "Duke Berith" },
    T{ mobid = 17330360, mobname = "Marquis Sabnak" },
    T{ mobid = 17330377, mobname = "Count Zaebos" },
    T{ mobid = 17330390, mobname = "Marquis Andras" },
    T{ mobid = 17330415, mobname = "Marquis Cimeries" },
    T{ mobid = 17330417, mobname = "Duke Scox" },
    T{ mobid = 17330430, mobname = "King Zagan" },
    T{ mobid = 17330440, mobname = "Count Vine" },
    T{ mobid = 17330451, mobname = "Marquis Gamygyn" },
    T{ mobid = 17330481, mobname = "Marquis Nebiros" },
    T{ mobid = 17334482, mobname = "GrandGoule" },
    T{ mobid = 17338386, mobname = "Graoully" },
    T{ mobid = 17350801, mobname = "Orcish Barricader" },
    T{ mobid = 17350826, mobname = "Thousandarm Deshglesh" },
    T{ mobid = 17354828, mobname = "Hundredscar Hajwaj" },
    T{ mobid = 17354894, mobname = "Orcish Panzer" },
    T{ mobid = 17354922, mobname = "Kegpaunch Doshgnosh" },
    T{ mobid = 17358932, mobname = "Ashmaker Gotblut" },
    T{ mobid = 17363080, mobname = "QuVho Deathhurler" },
    T{ mobid = 17363181, mobname = "BuGhi Howlblade" },
    T{ mobid = 17363208, mobname = "ZiGhi Boneeater" },
    T{ mobid = 17363258, mobname = "BeHya Hundredwall" },
    T{ mobid = 17363305, mobname = "NoMho Crimsonarmor" },
    T{ mobid = 17371300, mobname = "Juu Duzu the Whirlwind" },
    T{ mobid = 17371399, mobname = "Quu Xijo the Illusory" },
    T{ mobid = 17371515, mobname = "Hoo Mjuu the Torrent" },
    T{ mobid = 17371578, mobname = "Vuu Puqu the Beguiler" },
    T{ mobid = 17379351, mobname = "BiGho Headtaker" },
    T{ mobid = 17379427, mobname = "DaDha Hundredmask" },
    T{ mobid = 17379450, mobname = "GeDha Evileye" },
    T{ mobid = 17379564, mobname = "ZoKhu Blackcloud" },
    T{ mobid = 17379626, mobname = "GaBhu Unvanquished" },
    T{ mobid = 17383442, mobname = "Diamond Quadav" },
    T{ mobid = 17383443, mobname = "ZaDha Adamantking" },
    T{ mobid = 17387567, mobname = "Hawkeyed Dnatbat" },
    T{ mobid = 17387585, mobname = "Steelbiter Gudrud" },
    T{ mobid = 17387606, mobname = "Tigerbane Bakdak" },
    T{ mobid = 17387644, mobname = "Poisonhand Gnadgad" },
    T{ mobid = 17387920, mobname = "Blubbery Bulge" },
    T{ mobid = 17391802, mobname = "Orcish Overlord" },
    T{ mobid = 17395800, mobname = "Mee Deggi the Punisher" },
    T{ mobid = 17395816, mobname = "Moo Ouzi the Swiftblade" },
    T{ mobid = 17395870, mobname = "Quu Domi the Gallant" },
    T{ mobid = 17395954, mobname = "Yaa Haqa the Profane" },
    T{ mobid = 17396134, mobname = "Yagudo Avatar" },
    T{ mobid = 17396137, mobname = "Tzee Xicu the Manifest" },
    T{ mobid = 17403939, mobname = "Ellyllon" },
    T{ mobid = 17404000, mobname = "Aquarius" },
    T{ mobid = 17404029, mobname = "Unut" },
    T{ mobid = 17404290, mobname = "Ancient Goobbue" },
    T{ mobid = 17404300, mobname = "Leshonki" },
    T{ mobid = 17404331, mobname = "Voluptuous Vivian" },
    T{ mobid = 17408018, mobname = "Fafnir" },
    T{ mobid = 17408019, mobname = "Nidhogg" },
    T{ mobid = 17420324, mobname = "Eurytos" },
    T{ mobid = 17420382, mobname = "Polybotes" },
    T{ mobid = 17420417, mobname = "Rhoitos" },
    T{ mobid = 17420529, mobname = "Ophion" },
    T{ mobid = 17420555, mobname = "Rhoikos" },
    T{ mobid = 17420592, mobname = "Ogygos" },
    T{ mobid = 17424385, mobname = "Enkelados" },
    T{ mobid = 17424423, mobname = "Enkelados" },
    T{ mobid = 17424475, mobname = "Ixtab" },
    T{ mobid = 17424512, mobname = "Ixtab" },
    T{ mobid = 17428554, mobname = "Sozu Sarberry" },
    T{ mobid = 17428611, mobname = "Sozu Terberry" },
    T{ mobid = 17428677, mobname = "Tonberry Kinq" },
    T{ mobid = 17428737, mobname = "Flauros" },
    T{ mobid = 17432624, mobname = "Celeste-eyed Tozberry" },
    T{ mobid = 17432640, mobname = "Friar Rush" },
    T{ mobid = 17432659, mobname = "Carmine-tailed Janberry" },
    T{ mobid = 17432798, mobname = "Tawny-fingered Mugberry" },
    T{ mobid = 17432845, mobname = "Bistre-hearted Malberry" },
    T{ mobid = 17432974, mobname = "Ogama" },
    T{ mobid = 17436714, mobname = "Likho" },
    T{ mobid = 17436881, mobname = "Marquis Sabnock" },
    T{ mobid = 17436913, mobname = "Marquis Allocen" },
    T{ mobid = 17436918, mobname = "Marquis Amon" },
    T{ mobid = 17436923, mobname = "Duke Haborym" },
    T{ mobid = 17436927, mobname = "Grand Duke Batym" },
    T{ mobid = 17440963, mobname = "Baron Vapula" },
    T{ mobid = 17440969, mobname = "Count Bifrons" },
    T{ mobid = 17440975, mobname = "Viscount Morax" },
    T{ mobid = 17440986, mobname = "Baronet Romwe" },
    T{ mobid = 17457204, mobname = "Gloom Eye" },
    T{ mobid = 17461307, mobname = "Sewer Syrup" },
    T{ mobid = 17461315, mobname = "Shii" },
    T{ mobid = 17461338, mobname = "Drexerion the Condemned" },
    T{ mobid = 17461343, mobname = "Phanduron the Condemned" },
    T{ mobid = 17461433, mobname = "Arioch" },
    T{ mobid = 17461471, mobname = "Manes" },
    T{ mobid = 17461478, mobname = "Bloodsucker" },
    T{ mobid = 17469578, mobname = "Canal Moocher" },
    T{ mobid = 17469587, mobname = "Oni Carcass" },
    T{ mobid = 17469632, mobname = "Konjac" },
    T{ mobid = 17469747, mobname = "Brazen Bones" },
    T{ mobid = 17477640, mobname = "Morille Mortelle" },
    T{ mobid = 17485980, mobname = "Cargo Crab Colin" },
    T{ mobid = 17486031, mobname = "Falcatus Aranei" },
    T{ mobid = 17486129, mobname = "Dame Blanche" },
    T{ mobid = 17486171, mobname = "Thoon" },
    T{ mobid = 17489980, mobname = "Sabotender Mariachi" },
    T{ mobid = 17490016, mobname = "Amemet" },
    T{ mobid = 17490101, mobname = "Pelican" },
    T{ mobid = 17490159, mobname = "Bloodthirster Madkix" },
    T{ mobid = 17490204, mobname = "Yowie" },
    T{ mobid = 17490217, mobname = "Arachne" },
    T{ mobid = 17490234, mobname = "Guivre" },
    T{ mobid = 17498159, mobname = "Masan" },
    T{ mobid = 17498184, mobname = "Namtar" },
    T{ mobid = 17498199, mobname = "Wuur the Sandcomber" },
    T{ mobid = 17498269, mobname = "Fyuu the Seabellow" },
    T{ mobid = 17498285, mobname = "Qull the Shellbuster" },
    T{ mobid = 17498301, mobname = "Seww the Squidlimbed" },
    T{ mobid = 17498341, mobname = "Pahh the Gullcaller" },
    T{ mobid = 17498356, mobname = "Mouu the Waverider" },
    T{ mobid = 17498413, mobname = "Worr the Clawfisted" },
    T{ mobid = 17498420, mobname = "Sea Hog" },
    T{ mobid = 17498428, mobname = "Voll the Sharkfinned" },
    T{ mobid = 17498436, mobname = "Yarr the Pearleyed" },
    T{ mobid = 17498445, mobname = "Novv the Whitehearted" },
    T{ mobid = 17498464, mobname = "Denn the Orcavoiced" },
    T{ mobid = 17498516, mobname = "Zuug the Shoreleaper" },
    T{ mobid = 17498522, mobname = "Charybdis" },
    T{ mobid = 17502570, mobname = "Zipacna" },
    T{ mobid = 17506370, mobname = "Faust" },
    T{ mobid = 17506396, mobname = "Mother Globe" },
    T{ mobid = 17530881, mobname = "Epialtes" },
    T{ mobid = 17530999, mobname = "Hippolytos" },
    T{ mobid = 17531114, mobname = "Eurymedon" },
    T{ mobid = 17547277, mobname = "Gabblox Magpietongue" },
    T{ mobid = 17547291, mobname = "Tufflix Loglimbs" },
    T{ mobid = 17547294, mobname = "Cloktix Longnail" },
    T{ mobid = 17547298, mobname = "Smeltix Thickhide" },
    T{ mobid = 17547299, mobname = "Jabkix Pigeonpecs" },
    T{ mobid = 17547300, mobname = "Wasabix Callusdigit" },
    T{ mobid = 17547311, mobname = "Hermitrix Toothrot" },
    T{ mobid = 17547312, mobname = "Wyrmwix Snakespecs" },
    T{ mobid = 17547322, mobname = "Morgmox Moldnoggin" },
    T{ mobid = 17547324, mobname = "Sparkspox Sweatbrow" },
    T{ mobid = 17547329, mobname = "Sparkspox Sweatbrow" },
    T{ mobid = 17547337, mobname = "Morgmox Moldnoggin" },
    T{ mobid = 17547355, mobname = "Elixmix Hooknose" },
    T{ mobid = 17547356, mobname = "Bandrix Rockjaw" },
    T{ mobid = 17547377, mobname = "Buffrix Eargone" },
    T{ mobid = 17547378, mobname = "Humnox Drumbelly" },
    T{ mobid = 17547381, mobname = "Buffrix Eargone" },
    T{ mobid = 17547382, mobname = "Humnox Drumbelly" },
    T{ mobid = 17547387, mobname = "Buffrix Eargone" },
    T{ mobid = 17547388, mobname = "Humnox Drumbelly" },
    T{ mobid = 17547394, mobname = "Ticktox Beadyeyes" },
    T{ mobid = 17547395, mobname = "Lurklox Dhalmelneck" },
    T{ mobid = 17547396, mobname = "Trailblix Goatmug" },
    T{ mobid = 17547402, mobname = "Kikklix Longlegs" },
    T{ mobid = 17547407, mobname = "Kikklix Longlegs" },
    T{ mobid = 17547424, mobname = "Karashix Swollenskull" },
    T{ mobid = 17547438, mobname = "Mortilox Wartpaws" },
    T{ mobid = 17547440, mobname = "Karashix Swollenskull" },
    T{ mobid = 17547454, mobname = "Rutrix Hamgams" },
    T{ mobid = 17547468, mobname = "Snypestix Eaglebeak" },
    T{ mobid = 17547472, mobname = "Anvilix Sootwrists" },
    T{ mobid = 17547473, mobname = "Bootrix Jaggedelbow" },
    T{ mobid = 17547474, mobname = "Mobpix Mucousmouth" },
    T{ mobid = 17547478, mobname = "Distilix Stickytoes" },
    T{ mobid = 17547479, mobname = "Eremix Snottynostril" },
    T{ mobid = 17547480, mobname = "Jabbrox Grannyguise" },
    T{ mobid = 17547485, mobname = "Scruffix Shaggychest" },
    T{ mobid = 17547486, mobname = "Tymexox Ninefingers" },
    T{ mobid = 17547487, mobname = "Blazox Boneybod" },
    T{ mobid = 17547490, mobname = "Prowlox Barrelbelly" },
    T{ mobid = 17547492, mobname = "Slystix Megapeepers" },
    T{ mobid = 17555598, mobname = "Spook" },
    T{ mobid = 17555664, mobname = "Gwyllgi" },
    T{ mobid = 17555721, mobname = "Barbastelle" },
    T{ mobid = 17555754, mobname = "Cemetery Cherry" },
    T{ mobid = 17555763, mobname = "Vrtra" },
    T{ mobid = 17559558, mobname = "Geyser Lizard" },
    T{ mobid = 17559584, mobname = "Teporingo" },
    T{ mobid = 17563749, mobname = "Maltha" },
    T{ mobid = 17563785, mobname = "Slendlix Spindlethumb" },
    T{ mobid = 17563801, mobname = "Nocuous Weapon" },
    T{ mobid = 17567801, mobname = "Donggu" },
    T{ mobid = 17567901, mobname = "Agar Agar" },
    T{ mobid = 17568127, mobname = "Morbolger" },
    T{ mobid = 17571870, mobname = "Desmodont" },
    T{ mobid = 17571873, mobname = "Legalox Heftyhind" },
    T{ mobid = 17571903, mobname = "Ah Puch" },
    T{ mobid = 17572142, mobname = "Bomb King" },
    T{ mobid = 17572143, mobname = "Doppelganger Gog" },
    T{ mobid = 17572144, mobname = "Doppelganger Dio" },
    T{ mobid = 17572146, mobname = "Bomb King" },
    T{ mobid = 17572147, mobname = "Doppelganger Gog" },
    T{ mobid = 17576008, mobname = "Anemone" },
    T{ mobid = 17576054, mobname = "Cwn Cyrff" },
    T{ mobid = 17576067, mobname = "Anemone" },
    T{ mobid = 17580248, mobname = "Juggler Hecatomb" },
    T{ mobid = 17584312, mobname = "Dynast Beetle" },
    T{ mobid = 17584398, mobname = "Demonic Tiphia" },
    T{ mobid = 17584416, mobname = "Aqrabuamelu" },
    T{ mobid = 17588278, mobname = "Trembler Tabitha" },
    T{ mobid = 17588674, mobname = "Argus" },
    T{ mobid = 17588685, mobname = "Leech King" },
    T{ mobid = 17596506, mobname = "Old Two-Wings" },
    T{ mobid = 17596507, mobname = "Skewer Sam" },
    T{ mobid = 17596520, mobname = "Hazmat" },
    T{ mobid = 17596628, mobname = "Hovering Hotpot" },
    T{ mobid = 17596720, mobname = "Serket" },
    T{ mobid = 17612859, mobname = "Mind Hoarder" },
    T{ mobid = 17613045, mobname = "Goliath" },
    T{ mobid = 17613047, mobname = "Goliath" },
    T{ mobid = 17613051, mobname = "Goliath" },
    T{ mobid = 17613095, mobname = "Western Shadow" },
    T{ mobid = 17613102, mobname = "Northern Shadow" },
    T{ mobid = 17613109, mobname = "Eastern Shadow" },
    T{ mobid = 17613120, mobname = "Southern Shadow" },
    T{ mobid = 17613129, mobname = "Capricious Cassie" },
    T{ mobid = 17613130, mobname = "Orientalis Shadow" },
    T{ mobid = 17616999, mobname = "Tyrannic Tunnok" },
    T{ mobid = 17617013, mobname = "Lindwurm" },
    T{ mobid = 17617062, mobname = "Foreseer Oramix" },
    T{ mobid = 17617130, mobname = "Vouivre" },
    T{ mobid = 17617147, mobname = "Ash Dragon" },
    T{ mobid = 17629238, mobname = "Centurio X-I" },
    T{ mobid = 17629281, mobname = "Antican Praefectus" },
    T{ mobid = 17629301, mobname = "Sagittarius X-XIII" },
    T{ mobid = 17629403, mobname = "Nussknacker" },
    T{ mobid = 17629412, mobname = "Antican Magister" },
    T{ mobid = 17629421, mobname = "Antican Proconsul" },
    T{ mobid = 17629430, mobname = "Diamond Daig" },
    T{ mobid = 17629483, mobname = "Antican Tribunus" },
    T{ mobid = 17629524, mobname = "Triarius X-XV" },
    T{ mobid = 17629561, mobname = "Hastatus XI-XII" },
    T{ mobid = 17629641, mobname = "Antican Consul" },
    T{ mobid = 17629644, mobname = "Proconsul XII" },
    T{ mobid = 17645578, mobname = "Bune" },
    T{ mobid = 17645609, mobname = "Goblinsavior Heronox" },
    T{ mobid = 17645640, mobname = "Wyvernpoacher Drachlox" },
    T{ mobid = 17645719, mobname = "Baobhan Sith" },
    T{ mobid = 17645742, mobname = "Taxim" },
    T{ mobid = 17645754, mobname = "Typhoon Wyvern" },
    T{ mobid = 17645755, mobname = "Ungur" },
    T{ mobid = 17645774, mobname = "Amikiri" },
    T{ mobid = 17649693, mobname = "Mysticmaker Profblix" },
    T{ mobid = 17649731, mobname = "Lord of Onzozo" },
    T{ mobid = 17649761, mobname = "Peg Powler" },
    T{ mobid = 17649784, mobname = "Narasimha" },
    T{ mobid = 17649795, mobname = "Hellion" },
    T{ mobid = 17649818, mobname = "Soulstealer Skullnix" },
    T{ mobid = 17649822, mobname = "Ose" },
    T{ mobid = 17502569, mobname = "Steam Cleaner" }
  }
  return nm_list