USE zhengrui;

DELETE FROM Crusader.NPC;
DELETE FROM Crusader.[Resource];
DELETE FROM Crusader.Hero;
DELETE FROM Crusader.Chapter;
DELETE FROM Crusader.[User];

INSERT Crusader.NPC(NPCName, Skill, [Type], Faction)
VALUES
(N'Galahad', N'No Retreat', N'Champion', N'Grancia Empire'),
(N'Remi', N'Witch Gift', N'Champion', N'Pumpkin City'),
(N'Horseman Winchester', N'My Ultimate Boss', N'Champion', N'Heros of Freedom'),
(N'Frantz', N'Strategic Command', N'Champion', N'Neth Empire'),
(N'Kurenai', N'Guidance of Blaze', N'Champion', N'Eastern Kingdom - Ryu'),
(N'Hanee Baram', N'Daechwita', N'Champion', N'Eastern Kingdom - Han'),
(N'Ibelin', N'Perserverance', N'Champion', N'Southwestern Alliance'),
(N'Beast King Agrius', N'Scutum of Glory', N'Champion', N'Roman Republic'),
(N'Noa', N'Will of the Egelan', N'Champion', N'Order of the Godess'),
(N'Lia', N'Snowy Echo', N'Champion', N'Nosgard'),
(N'Aindel', N'A Firm Bond', N'Champion', N'Minor Tribe Confederation'),
(N'Luhe', N'Countdown', N'Champion', N'Eastern Kingdom - Chen'),

(N'Bella', N'Surge of Power', N'Goddess', N'Volcano'),
(N'Sera', N'Novice Shield', N'Goddess', N'Apostles'),
(N'Prestina', N'Embrace of Yggdrasil', N'Goddess', N'Forest'),
(N'Anut', N'Raging Sandstorm', N'Goddess', N'Desert'),
(N'Aubrey', N'Silent Blessing', N'Goddess', N'Deep Sea'),
(N'Dionne', N'The Raging Storm', N'Goddess', N'Tundra'),
(N'Chronos', N'Determined Destiny', N'Goddess', N'Corps of Empire'),
(N'Sylunis', N'Light and Darkness', N'Goddess', N'The Heir of Light'),

(N'Chocolat', N'Cook Bread', N'Cooker', N'Bakery'),
(N'Fergus', N'Making Weapon', N'Blacksmith', N'Gear'),
(N'Fishernyan', N'Fishing', N'Fisher', N'Fish'),
(N'Celine', N'Teaching Skill', N'Teacher', N'Skill Lab'),
(N'PoPo', N'Selling Goods', N'Vagrant Merchant', N'Adventure'),
(N'Bridget', N'Selling Goods', N'Shop keeper', N'Shop');

INSERT Crusader.[Resource](ResourceName, [Type], Usage, Acquisition)
VALUES
(N'Gold', N'Store Goods', N'Buy Resource', N'Adventure, Shop'),
(N'Jewel', N'Store Goods', N'Buy Skins', N'Shop'),
(N'Honor', N'Store Goods', N'Evolve Heros', N'Retire Heros'),
(N'Bridget Point', N'Store Goods', N'Hero Option Selection Ticket', N'Purchase Jewel'),
(N'Fish Coin', N'Store Goods', N'Buy Resource', N'Fishing'),
(N'Meat', N'Adventure Goods', N'Adventure', N'Natural Restore'),
(N'Key', N'Adventure Goods', N'Dungeon', N'Natural Restore'),
(N'Colosseum Ticket', N'Adventure Goods', N'Colosseum', N'Sold By PoPo'),
(N'Map Pieces', N'Adventure Goods', N'Exploration', N'Scenario Clear'),
(N'Token of Flames', N'Adventure Goods', N'Legend of Primal Flames', N'Natural Restore'),
(N'Iron', N'Weapon Resources', N'Forge Weapon', N'Weapon Salvage'),
(N'Crystal Sword Fragments', N'Weapon Resources', N'Forge Weapon', N'Fortress Victory'),
(N'Essence of Mana', N'Weapon Resources', N'Ring Recast', N'Extract Rings'),
(N'Essence of Flames', N'Weapon Resources', N'Ring Recast', N'Play Legend of Primal Flames'),
(N'Random Weapon Option Tickets', N'Ticket', N'Weapon Reforge', N'Golden Weapon Box'),
(N'Weapon Option Selection Tickets', N'Ticket', N'Weapon Reforge', N'Sold By Bridget'),
(N'Fergus Point', N'Ticket', N'Weapon Bore', N'Fortress of Raging Souls'),
(N'Bread', N'Grow', N'Hero Growth', N'Bakery'),
(N'Berry', N'Grow', N'Hero Growth', N'Exploration Reward'),
(N'Book', N'Grow', N'Hero Growth', N'Challenge');

INSERT Crusader.Hero(HeroName, HP, ATK, SoulboundWeapon, [Contract], Faction, Class)
VALUES
(N'Leon of Light', N'6082', N'459', N'Excalibur', N'Legend', N'Grancia Empire', N'Warrior'),
(N'Victor Rochefort', N'5301', N'551', N'Allegro Assai', N'Legend', N'Southwestern Alliance', N'Warrior'),
(N'Kriemhild of Oath', N'5037', N'574', N'Balmung of Massacre', N'Legend', N'Roman Republic', N'Paladin'),
(N'Roland of Honor', N'8636', N'353', N'Gleaming Radiance', N'Legend', N'Order of the Goddess', N'Paladin'),
(N'Demon Archer Sigruna', N'4992', N'689', N'Demon Bow Granar', N'Legend', N'Minor Tribes Confederation', N'Archer'),
(N'Demona of Primal Flames', N'4488', N'689', N'Inferno', N'Legend', N'Minor Tribes Confederation', N'Archer'),
(N'D Artagnan of Iron Will', N'4074', N'812', N'Peacemaker', N'Legend', N'Southwestern Alliance', N'Hunter'),
(N'Night Witch Teresa', N'3594', N'910', N'Brilliant Darkness', N'Legend', N'Pumpkin City', N'Hunter'),
(N'Black Witch Dorothy', N'3194', N'992', N'Queen of the Moon', N'Legend', N'Pumpkin City', N'Wizard'),
(N'Magical Girl Cano', N'2715', N'992', N'Grand Finale', N'Legend', N'Pumpkin City', N'Wizard'),
(N'Savior Saintess Maria', N'6918', N'401', N'Michaela', N'Legend', N'Order of the Goddess', N'Priest'),
(N'Black Sister Melissa', N'3726', N'744', N'Asmo', N'Legend', N'Grancia Empire', N'Priest'),

(N'Steel Knight Joan of Arc', N'6740', N'335', N'Galatine of Faith', N'White', N'Grancia Empire', N'Warrior'),
(N'Shogun Susanoo', N'5185', N'479', N'Demonic Muramasa', N'White', N'Eastern Kingdom - Ryu', N'Warrior'),
(N'Absolute Devil Vivian', N'4601', N'479', N'Midnight Balrog', N'Gold', N'Minor Tribes Confederation', N'Warrior'),
(N'Monte Cristo', N'3629', N'623', N'Beam Blade', N'White', N'Neth Empire', N'Warrior'),
(N'Kaori the Undefeated', N'4601', N'479', N'The Black Moon', N'White', N'Eastern Kingdom - Ryu', N'Warrior'),
(N'Devil Slayer Abel', N'5368', N'479', N'Fallen Throne', N'Gold', N'Southwestern Alliance', N'Warrior'),
(N'Tribal King Uzimant', N'4148', N'574', N'Gods Bone', N'White', N'Nosgard', N'Warrior'),
(N'Captain B. Sworden', N'5444', N'503', N'Black Tiger Divine Sword', N'Gold', N'Eastern Kingdom - Han', N'Warrior'),
(N'Psychic Isabel', N'4871', N'503', N'One-Eyed Demon', N'Gold', N'Grancia Empire', N'Warrior'),
(N'Ocean King Koxinga', N'6125', N'362', N'Sword of Heavens Will', N'Gold', N'Minor Tribes Confederation', N'Warrior'),
(N'Victoria of the Oath', N'5364', N'479', N'Vow of the Battlefield', N'Gold', N'Grancia Empire', N'Warrior'),
(N'Dark Knight Lionel', N'3525', N'632', N'Mark of Darkness', N'White', N'Southwestern Alliance', N'Warrior'),
(N'Forest Witch Arita', N'4781', N'503', N'Pale Rose', N'Gold', N'Pumpkin City', N'Warrior'),
(N'Sien of Bloodlust', N'4291', N'575', N'Spiral of Heaven and Earth', N'Gold', N'Grancia Empire', N'Warrior'),
(N'Overlord Borgos of Darkness', N'5153', N'419', N'Dark Blade of the Overlord', N'White', N'Heroes of Freedom', N'Warrior'),
(N'Ghost King Bihyeongrang', N'5059', N'513', N'Call of a Hundred Spirits, a Thousand Gods', N'Gold', N'Eastern Kingdom - Han', N'Warrior'),
(N'Shasha, Witch of Fire', N'5206', N'576', N'Balisarda', N'Gold', N'Pumpkin City', N'Warrior'),
(N'Harpya the Butcher', N'5206', N'764', N'Butchers Claws', N'White', N'Roman Republic', N'Warrior'),
(N'Isis, Paver of the Path', N'7527', N'360', N'Ritual of Fury', N'Gold', N'Minor Tribes Confederation', N'Warrior'),
(N'Izuna the Vigilante', N'5206', N'635', N'Cherry Blossom', N'Gold', N'Eastern Kingdom - Ryu', N'Warrior'),
(N'Randgrid the Feared', N'5212', N'503', N'Shieldbreaker', N'White', N'Nosgard', N'Warrior'),
(N'Soul Devouring Plaga', N'5356', N'609', N'Plaga', N'Gold', N'Pumpkin City', N'Warrior'),
(N'Echidna, Queen of Serpents', N'6010', N'723', N'Jrmungandr', N'Gold', N'Minor Tribes Confederation', N'Warrior'),
(N'Short-Sighted Sim Hak-Gyu', N'5862', N'628', N'Pathfinder', N'Gold', N'Eastern Kingdom - Han', N'Warrior'),
(N'Roskva of Sacred Ground', N'5212', N'641', N'Guardians Icicle', N'White', N'Nosgard', N'Warrior'),

(N'Thor of Severe Cold', N'6383', N'369', N'Mjolnir', N'White', N'Nosgard', N'Paladin'),
(N'Emperor Alexander', N'8135', N'268', N'Locus of Power', N'White', N'Grancia Empire', N'Paladin'),
(N'War God Archilles', N'6257', N'384', N'Thanatos', N'White', N'Roman Republic', N'Paladin'),
(N'White Beard Drake', N'5554', N'384', N'Oar of Yggdrasil', N'White', N'Southwestern Alliance', N'Paladin'),
(N'Vane the Dark Knight', N'5554', N'384', N'Tyrfing of Annihilation', N'Gold', N'Heroes of Freedom', N'Paladin'),
(N'True Devil Cain', N'5256', N'537', N'Clarent', N'Gold', N'Southwestern Alliance', N'Paladin'),
(N'Stanya the Annihilator', N'6383', N'313', N'Super Storm Grinder', N'White', N'Neth Empire', N'Paladin'),
(N'General Mundeok', N'6570', N'403', N'Limitless Divine Sword', N'Gold', N'Eastern Kingdom - Han', N'Paladin'),
(N'Berserk - V', N'5225', N'403', N'Beam Slicer', N'Gold', N'Neth Empire', N'Paladin'),
(N'Hector of Steel', N'6383', N'309', N'Phalanx', N'Gold', N'Roman Republic', N'Paladin'),
(N'Athena the Saintess of the Battlefield', N'6383', N'369', N'Blessing of the War Goddess', N'White', N'Roman Republic', N'Paladin'),
(N'Siegfried the Dragon Paladin', N'5106', N'370', N'Chain Fafnir', N'Gold', N'Roman Republic', N'Paladin'),
(N'Dullahan of the Apocalypse', N'5498', N'347', N'Heaven Crusher', N'Gold', N'Order of the Goddess', N'Paladin'),
(N'Captain of the Gatcha Rangers', N'6383', N'360', N'Justice Cross', N'White', N'Heroes of Freedom', N'Paladin'),
(N'Frost Hammer Wolfgang', N'6218', N'381', N'Northern Gale', N'Gold', N'Nosgard', N'Paladin'),
(N'Fenrir of Choice', N'8583', N'368', N'Ragnarok', N'Gold', N'Heroes of Freedom', N'Paladin'),
(N'Martial Chef Lei Ling', N'8581', N'537', N'Chefs Recipe', N'White', N'Eastern Kingdom - Chen', N'Paladin'),
(N'Lady Schula of Steel', N'7416', N'383', N'Artisans Pride', N'Gold', N'Grancia Empire', N'Paladin'),
(N'Five Tiger General Mengqi', N'6248', N'613', N'Spear of the Raging Dragon', N'Gold', N'Eastern Kingdom - Chen', N'Paladin'),
(N'Heim of the Sacred Ground', N'8579', N'383', N'Guardians hoarfrost', N'White', N'Nosgard', N'Paladin'),
(N'Yuna, the Rookie of the Year', N'6412', N'453', N'Yunas Will', N'Gold', N'Heroes of Freedom', N'Paladin'),
(N'Caeneus of Valiance', N'6943', N'477', N'Mark of Valiance', N'Gold', N'Grancia Empire', N'Paladin'),
(N'Odin of the Storm', N'7061', N'595', N'Gungnir', N'Gold', N'Nosgard', N'Paladin'),

(N'Bone Dragon Gon', N'4427', N'583', N'Tigas Bow', N'Gold', N'Heroes of Freedom', N'Archer'),
(N'Hanzo of Gale', N'5643', N'419', N'Furinkazan', N'White', N'Eastern Kingdom - Ryu', N'Archer'),
(N'Nobleman Robin Hood', N'3608', N'599', N'Essence of Grifall', N'White', N'Grancia Empire', N'Archer'),
(N'R - 0', N'2836', N'818', N'Albatross', N'White', N'Neth Empire', N'Archer'),
(N'Giparang of Full Moon', N'3608', N'629', N'Phoenixs Honor', N'White', N'Eastern Kingdom - Han', N'Archer'),
(N'Hawk Eye Hikari', N'4558', N'629', N'Tyrant Bow', N'Gold', N'Eastern Kingdom - Ryu', N'Archer'),
(N'Frozen Phantom Niven', N'3907', N'692', N'Niflheim', N'White', N'Nosgard', N'Archer'),
(N'Femme Fatale Arona', N'5242', N'474', N'Yellow Dragon Divine Bow', N'Gold', N'Eastern Kingdom - Han', N'Archer'),
(N'Noble Magnus', N'3373', N'754', N'Blessing of the Spirit King', N'Gold', N'Minor Tribes Confederation', N'Archer'),
(N'Moonlight Chaser Atalante', N'3267', N'599', N'Nymphselinus', N'Gold', N'Roman Republic', N'Archer'),
(N'Black Mamba', N'2822', N'809', N'SNAKE K-9', N'White', N'Neth Empire', N'Archer'),
(N'Principal Dancer Lee', N'2895', N'818', N'Cascade of Hundred Blossoms', N'Gold', N'Eastern Kingdom - Chen', N'Archer'),
(N'Rahima, Daughter of Hawks', N'5469', N'465', N'Khans Heritage', N'Gold', N'Heroes of Freedom', N'Archer'),
(N'Ghost Princess Viola', N'3647', N'839', N'Feather of Soul', N'White', N'Order of the Goddess', N'Archer'),
(N'Moon Princess Kaguya', N'4112', N'735', N'Cherry Blossoms of Lovely Spring', N'Gold', N'Eastern Kingdom - Ryu', N'Archer'),
(N'Chiron of Glory', N'5151', N'718', N'Nikeus', N'Gold', N'Roman Republic', N'Archer'),
(N'Hansung of the Five Tiger Generals', N'5145', N'836', N'Bow of the Five Tiger General', N'White', N'Eastern Kingdom - Chen', N'Archer'),
(N'Set, Reaper of Souls', N'4339', N'835', N'Remains of the Dead', N'Gold', N'Minor Tribes Confederation', N'Archer'),
(N'Arcane Archer Genevie', N'4903', N'872', N'Mana Huntress', N'Gold', N'Order of the Goddess', N'Archer'),
(N'Great Father Panpan', N'4343', N'836', N'Great Fathers Bow', N'White', N'Eastern Kingdom - Chen', N'Archer'),
(N'Spider Queen Arachne', N'4547', N'857', N'Predator', N'Gold', N'Roman Republic', N'Archer'),
(N'Lone Wolf Lindsey', N'4931', N'798', N'Blast Bow', N'Gold', N'Southwestern Alliance', N'Archer'),

(N'Cowgirl Maxi', N'4515', N'503', N'Rodeo of Passion', N'White', N'Southwestern Alliance', N'Hunter'),
(N'Commander Spyro', N'3473', N'719', N'Home Wrecker', N'White', N'Neth Empire', N'Hunter'),
(N'Legendary Mercenary Viper', N'2691', N'719', N'Phantom Rage', N'Gold', N'Neth Empire', N'Hunter'),
(N'Evil Spirit Crow', N'2431', N'934', N'R.I.P', N'White', N'Heroes of Freedom', N'Hunter'),
(N'Judge Vincent', N'2691', N'719', N'Execution of Justice', N'White', N'Grancia Empire', N'Hunter'),
(N'Devil Bullet No.9', N'3647', N'755', N'Kiss of Jamiel', N'Gold', N'Southwestern Alliance', N'Hunter'),
(N'Sentinel R', N'3542', N'676', N'Hyper Electronic Cannon', N'White', N'Neth Empire', N'Hunter'),
(N'Super Mandy', N'3190', N'755', N'Angry Daddy', N'Gold', N'Heroes of Freedom', N'Hunter'),
(N'Dark Slayer Wilhelm', N'2890', N'868', N'MonDestroy', N'Gold', N'Heroes of Freedom', N'Hunter'),
(N'Red Bullet Saiga', N'3017', N'755', N'Dragon Flame Cannon', N'White', N'Eastern Kingdom - Ryu', N'Hunter'),
(N'Armed Maid Tia', N'3820', N'791', N'VARIUS - 7', N'Gold', N'Grancia Empire', N'Hunter'),
(N'Cyborg Spiny', N'2952', N'719', N'Blockbuster', N'White', N'Neth Empire', N'Hunter'),
(N'Detective Sherlock Dox', N'3125', N'1006', N'Mystery Chaser', N'Gold', N'Minor Tribes Confederation', N'Hunter'),
(N'Wanderer Lorelei', N'3438', N'992', N'Sky Driller', N'Gold', N'Heroes of Freedom', N'Hunter'),
(N'AG01 - Neo', N'3942', N'853', N'Optical Machine Gun', N'Gold', N'Supply all forces', N'Hunter'),
(N'AG02 - Layla', N'3588', N'940', N'Lumen Rifle', N'Gold', N'Supply all forces', N'Hunter'),
(N'AG03 - Mel', N'3765', N'896', N'Lumen Laser Cannon', N'Gold', N'Supply all forces', N'Hunter'),
(N'Navy Admiral Scarlet', N'3803', N'731', N'Immediate Execution', N'White', N'Southwestern Alliance', N'Hunter'),
(N'Frost Hunter Raven', N'4769', N'863', N'Kalt F. Stern', N'Gold', N'Nosgard', N'Hunter'),
(N'Rags to Riches Momotaro', N'4121', N'805', N'Kijidango', N'Gold', N'Eastern Kingdom - Ryu', N'Hunter'),
(N'Luicilla of Two Faces', N'2851', N'1069', N'Persona', N'White', N'Order of the Goddess', N'Hunter'),
(N'Gourmand Athos', N'4124', N'861', N'Cest Trs Bon', N'Gold', N'Southwestern Alliance', N'Hunter'),
(N'Secret Agent Zahard', N'3480', N'1009', N'Semi-Permanent Light Pistol', N'Gold', N'Eastern Kingdom - Chen', N'Hunter'),
(N'Dragon Hunter Bellerophon', N'3829', N'814', N'Draconic Cannon', N'White', N'Roman Republic', N'Hunter'),
(N'Loaded Jet', N'3520', N'994', N'The Midas Shot', N'Gold', N'Southwestern Alliance', N'Hunter'),
(N'Radiant Carol', N'4003', N'952', N'Knockin on Heavens Door', N'Gold', N'Order of the Goddess', N'Hunter'),
(N'Lyudmilla, Lady of White', N'3148', N'1141', N'Nadelmilla', N'Gold', N'Nosgard', N'Hunter'),

(N'Archon the Enlightened', N'2833', N'849', N'Tears of Dawn', N'White', N'Southwestern Alliance', N'Wizard'),
(N'Death Messenger Korin', N'3611', N'603', N'Flower of Yama', N'White', N'Eastern Kingdom - Han', N'Wizard'),
(N'Freezing Sasquatch', N'2152', N'905', N'Snow Flower', N'White', N'Nosgard', N'Wizard'),
(N'Night Goddess Lilith', N'1944', N'1121', N'Soul Eater', N'Gold', N'Pumpkin City', N'Wizard'),
(N'Succubus Queen Rachel', N'2152', N'862', N'Deadly Kiss', N'White', N'Pumpkin City', N'Wizard'),
(N'Spade Queen Alice', N'2916', N'905', N'Spade A', N'Gold', N'Pumpkin City', N'Wizard'),
(N'Nazrune of Nature', N'2833', N'713', N'Branch of Life', N'White', N'Nosgard', N'Wizard'),
(N'Mondrian the Savant', N'2311', N'1041', N'Heavens Totem Pole', N'Gold', N'Eastern Kingdom - Han', N'Wizard'),
(N'Soul Magician Necron', N'3791', N'575', N'Pandemonium', N'Gold', N'Grancia Empire', N'Wizard'),
(N'Demeter in the Golden Wheat Field', N'2464', N'996', N'Enesidaone', N'Gold', N'Grancia Empire', N'Wizard'),
(N'Grand Inquisitor Uriel', N'2152', N'948', N'Prayer of Atonement', N'Gold', N'Order of the Goddess', N'Wizard'),
(N'Creator Benjamin', N'2833', N'777', N'Heavens Code', N'White', N'Neth Empire', N'Wizard'),
(N'Notorious Phantom Thief Lupeow', N'2158', N'1086', N'Magic Temptation', N'Gold', N'Pumpkin City', N'Wizard'),
(N'Vesper, Witch of Water', N'2005', N'1132', N'Naiad', N'Gold', N'Pumpkin City', N'Wizard'),
(N'Magical Dollmaker Violet', N'2152', N'1294', N'Hortensia', N'White', N'Order of the Goddess', N'Wizard'),
(N'Yichui of Moonblossom', N'2380', N'980', N'Killer Rabbit', N'Gold', N'Pumpkin City', N'Wizard'),
(N'Wolfram, Witch of Wind', N'3292', N'1036', N'Belphoebea', N'Gold', N'Pumpkin City', N'Wizard'),
(N'Otter of Enlightened Creation', N'3295', N'1554', N'Avalokitevara', N'White', N'Minor Tribes Confederation', N'Wizard'),
(N'Osiris, Guide of the Lost', N'2357', N'1204', N'Mark of the Savior', N'Gold', N'Minor Tribes Confederation', N'Wizard'),
(N'Loki the Trickster', N'2779', N'1207', N'Lokis Wonderful World', N'Gold', N'Nosgard', N'Wizard'),
(N'Han Xiangzi the Pilgrim', N'3334', N'930', N'Ethereals Wisdom', N'White', N'Eastern Kingdom - Chen', N'Wizard'),
(N'Awakened Lakias', N'1925', N'1170', N'Flower of Ice', N'Gold', N'Nosgard', N'Wizard'),
(N'Grim Reaper, Guide of Souls', N'3523', N'1145', N'Death Scythe', N'Gold', N'Southwestern Alliance', N'Wizard'),

(N'Cat Master Mew', N'4720', N'481', N'Ultimacute', N'White', N'Minor Tribes Confederation', N'Priest'),
(N'Nightingale of Light', N'4628', N'497', N'Gabriella', N'Gold', N'Order of the Goddess', N'Priest'),
(N'Nine Tailed Fox Yeowoodong', N'4107', N'497', N'Spiritflame', N'White', N'Eastern Kingdom - Han', N'Priest'),
(N'Emergency Relief Nurspy', N'3240', N'647', N'Vaccine - G', N'White', N'Neth Empire', N'Priest'),
(N'Woomparoom Woopa', N'4107', N'497', N'Golden Charm', N'White', N'Minor Tribes Confederation', N'Priest'),
(N'Great Shaman Himiko', N'4859', N'522', N'Full Bloom Onusa', N'Gold', N'Eastern Kingdom - Ryu', N'Priest'),
(N'Mad Scientist Stein', N'4720', N'449', N'Infinite Power', N'White', N'Neth Empire', N'Priest'),
(N'Food Hunter Chai', N'5588', N'394', N'Yellow-dragon Laddle', N'Gold', N'Eastern Kingdom - Chen', N'Priest'),
(N'Dara of Joy', N'5977', N'352', N'Golden Biwa', N'Gold', N'Eastern Kingdom - Chen', N'Priest'),
(N'Demon Destroyer Beatrice', N'4956', N'460', N'Light of Paros', N'Gold', N'Roman Republic', N'Priest'),
(N'Orfeo of Temptation', N'3596', N'627', N'Eurydice', N'Gold', N'Roman Republic', N'Priest'),
(N'Aria of the Stars', N'6016', N'348', N'Mark of Starlight', N'White', N'Southwestern Alliance', N'Priest'),
(N'Neth Army Officer Yuria', N'3190', N'725', N'NNC SYSTEM', N'Gold', N'Neth Empire', N'Priest'),
(N'Faust of Desolation', N'3236', N'780', N'Elixir', N'Gold', N'Heroes of Freedom', N'Priest'),
(N'Ambassador Seiren', N'6479', N'299', N'Breath of the Deep Sea', N'White', N'Minor Tribes Confederation', N'Priest'),
(N'Divine Guardian Noel', N'6617', N'283', N'Brilliant Pride', N'Gold', N'Order of the Goddess', N'Priest'),
(N'Bari of White Flowers', N'5935', N'552', N'Souls Companion', N'Gold', N'Eastern Kingdom - Han', N'Priest'),
(N'Onmyoji Seimei', N'6869', N'458', N'Fan of the Onmyoji', N'White', N'Eastern Kingdom - Ryu', N'Priest'),
(N'Oracle Marpei', N'4999', N'553', N'Celestial Dream', N'Gold', N'Order of the Goddess', N'Priest'),
(N'Irregular Cronette', N'4314', N'445', N'SUPER-CNET', N'Gold', N'Eastern Kingdom - Chen', N'Priest'),
(N'Vernil of Sacred Ground', N'4999', N'641', N'Orb of the Frost Guardian', N'White', N'Nosgard', N'Priest'),
(N'Lucky Guy Ricky', N'6320', N'444', N'Ace', N'Gold', N'Eastern Kingdom - Chen', N'Priest'),
(N'Sfera, Queen of Sheep', N'5671', N'467', N'Oviss Soul', N'Gold', N'Minor Tribes Confederation', N'Priest'),
(N'Shub the Disciple of the Abyss', N'4845', N'627', N'The Book of Delet - Vol. 1', N'Gold', N'Heroes of Freedom', N'Priest'),
(N'Artisan Basquiat', N'5377', N'453', N'Underground', N'White', N'Neth Empire', N'Priest');




INSERT Crusader.Chapter(Episode, ChapterName, Environment, Boss, Cost)
VALUES
(N'Return of the Apostles', N'Evil Omen', N'Forest', N'Search Member', N'1 Meat'),
(N'Return of the Apostles', N'Power of the Goddess', N'Forest', N'Goblin Warrior', N'1 Meat'),
(N'Return of the Apostles', N'In Search of the Goddess', N'Forest', N'Goblin Archer', N'1 Meat'),
(N'Return of the Apostles', N'The Adventure Begins-1', N'Forest', N'Search Member', N'1 Meat'),
(N'Return of the Apostles', N'The Adventure Begins-2', N'Forest', N'Young Villager', N'1 Meat'),
(N'Return of the Apostles', N'The Adventure Begins-3', N'Forest', N'Goblin Archer', N'2 Meat'),
(N'Return of the Apostles', N'Howling Wolves-1', N'Forest', N'Nerd', N'2 Meat'),
(N'Return of the Apostles', N'Howling Wolves-2', N'Forest', N'Werewolf', N'2 Meat'),
(N'Return of the Apostles', N'Wandering Forest-1', N'Forest', N'Gunman', N'2 Meat'),
(N'Return of the Apostles', N'Wandering Forest-2', N'Forest', N'Werewolf', N'2 Meat'),
(N'Return of the Apostles', N'Wandering Forest-3', N'Forest', N'Petty Thief', N'2 Meat'),
(N'Return of the Apostles', N'Ferocious Tree-1', N'Forest', N'Ent', N'2 Meat'),
(N'Return of the Apostles', N'Ferocious Tree-2', N'Forest', N'Squire', N'2 Meat'),
(N'Return of the Apostles', N'Forest in Rage-1', N'Forest', N'Green Slime', N'2 Meat'),
(N'Return of the Apostles', N'Forest in Rage-2', N'Forest', N'Sentry', N'2 Meat'),
(N'Return of the Apostles', N'Forest in Rage-3', N'Forest', N'Ent', N'2 Meat'),
(N'Return of the Apostles', N'Ogre in Slight!-1', N'Forest', N'Girl Scout', N'2 Meat'),
(N'Return of the Apostles', N'Ogre in Slight!-2', N'Forest', N'Ogre', N'2 Meat'),
(N'Return of the Apostles', N'Where is the Goddess?-1', N'Forest', N'Private Thug', N'2 Meat'),
(N'Return of the Apostles', N'Where is the Goddess?-2', N'Forest', N'Ogre', N'2 Meat'),
(N'Return of the Apostles', N'Town in Danger-1', N'Forest', N'Forest Guardian', N'2 Meat'),
(N'Return of the Apostles', N'Town in Danger-2', N'Forest', N'Ogre', N'2 Meat'),
(N'Return of the Apostles', N'Town in Danger-3', N'Forest', N'Farm Boy', N'2 Meat'),
(N'Return of the Apostles', N'Stop the Golem!', N'Forest', N'Golem', N'3 Meat'),

(N'Return of the Apostles', N'Moonlit Desert-1', N'Desert', N'Archaeologist', N'3 Meat'),
(N'Return of the Apostles', N'Moonlit Desert-2', N'Desert', N'SandMan', N'3 Meat'),
(N'Return of the Apostles', N'Sticky Bandage-1', N'Desert', N'Common Magician', N'3 Meat'),
(N'Return of the Apostles', N'Sticky Bandage-2', N'Desert', N'Mummy', N'3 Meat'),
(N'Return of the Apostles', N'Desert Residents-1', N'Desert', N'Guard', N'3 Meat'),
(N'Return of the Apostles', N'Desert Residents-2', N'Desert', N'Lizardman', N'4 Meat'),
(N'Return of the Apostles', N'Sett Brotherhood-1', N'Desert', N'Healer', N'4 Meat'),
(N'Return of the Apostles', N'Sett Brotherhood-2', N'Desert', N'Warrior of the Desert', N'4 Meat'),
(N'Return of the Apostles', N'Guardians of Sand-1', N'Desert', N'Anubis', N'4 Meat'),
(N'Return of the Apostles', N'Guardians of Sand-2', N'Desert', N'Green Knight', N'4 Meat'),
(N'Return of the Apostles', N'Divine Dog, Holy Bird-1', N'Desert', N'Lizardman', N'4 Meat'),
(N'Return of the Apostles', N'Divine Dog, Holy Bird-2', N'Desert', N'Private Football Club', N'4 Meat'),
(N'Return of the Apostles', N'Far Side Glittering-1', N'Desert', N'Horus', N'4 Meat'),
(N'Return of the Apostles', N'Far Side Glittering-2', N'Desert', N'Sheriff', N'4 Meat'),
(N'Return of the Apostles', N'In the Sandstorm-1', N'Desert', N'Anubis', N'4 Meat'),
(N'Return of the Apostles', N'In the Sandstorm-2', N'Desert', N'Voodoo Shaman', N'4 Meat'),
(N'Return of the Apostles', N'8 Legs-1', N'Desert', N'Royal Magic Student', N'4 Meat'),
(N'Return of the Apostles', N'8 Legs-2', N'Desert', N'Basilisk', N'4 Meat'),
(N'Return of the Apostles', N'Endless Desert-1', N'Desert', N'Roman Soldier', N'4 Meat'),
(N'Return of the Apostles', N'Endless Desert-2', N'Desert', N'Basilisk', N'4 Meat'),
(N'Return of the Apostles', N'Battle on Sand!-1', N'Desert', N'Southern Guard', N'4 Meat'),
(N'Return of the Apostles', N'Battle on Sand!-2', N'Desert', N'Horus', N'4 Meat'),
(N'Return of the Apostles', N'Battle on Sand!-3', N'Desert', N'Apprentice Blacksmith', N'4 Meat'),
(N'Return of the Apostles', N'Terror of the Desert', N'Desert', N'Sandworm', N'5 Meat'),

(N'Return of the Apostles', N'Into the Deep Sea-1', N'Deep Sea', N'Valencian Navy', N'5 Meat'),
(N'Return of the Apostles', N'Into the Deep Sea-2', N'Deep Sea', N'Green Anglerfish', N'5 Meat'),
(N'Return of the Apostles', N'Suffocating Sea-1', N'Deep Sea', N'Pirate', N'5 Meat'),
(N'Return of the Apostles', N'Suffocating Sea-2', N'Deep Sea', N'Red Starfish', N'5 Meat'),
(N'Return of the Apostles', N'Electrifying Jellyfish-1', N'Deep Sea', N'Green Apple', N'5 Meat'),
(N'Return of the Apostles', N'Electrifying Jellyfish-2', N'Deep Sea', N'Mermaid', N'6 Meat'),
(N'Return of the Apostles', N'Beasts Under the Sea-1', N'Deep Sea', N'Mafia', N'6 Meat'),
(N'Return of the Apostles', N'Beasts Under the Sea-2', N'Deep Sea', N'Blue Jellyfish', N'6 Meat'),
(N'Return of the Apostles', N'Charming Mermaid-1', N'Deep Sea', N'Half Elf', N'6 Meat'),
(N'Return of the Apostles', N'Charming Mermaid-2', N'Deep Sea', N'Shark Warrior', N'6 Meat'),
(N'Return of the Apostles', N'Great Sea-1', N'Deep Sea', N'Meowcat', N'6 Meat'),
(N'Return of the Apostles', N'Great Sea-2', N'Deep Sea', N'Hermit Crab', N'6 Meat'),
(N'Return of the Apostles', N'Food of the Deep Sea-1', N'Deep Sea', N'Stormy Ninja', N'6 Meat'),
(N'Return of the Apostles', N'Food of the Deep Sea-2', N'Deep Sea', N'Blue Jellyfish', N'6 Meat'),
(N'Return of the Apostles', N'Secluded Crab-1', N'Deep Sea', N'Royal Cleaner', N'6 Meat'),
(N'Return of the Apostles', N'Secluded Crab-2', N'Deep Sea', N'Shark Warrior', N'6 Meat'),
(N'Return of the Apostles', N'Hero and the Sea-1', N'Deep Sea', N'Velvet Archer', N'6 Meat'),
(N'Return of the Apostles', N'Hero and the Sea-2', N'Deep Sea', N'Hermit Crab', N'6 Meat'),
(N'Return of the Apostles', N'Sinking Honor-1', N'Deep Sea', N'Policewoman', N'6 Meat'),
(N'Return of the Apostles', N'Sinking Honor-2', N'Deep Sea', N'Mermaid', N'6 Meat'),
(N'Return of the Apostles', N'The Sinking One-1', N'Deep Sea', N'Witch Delivery Trainee', N'6 Meat'),
(N'Return of the Apostles', N'The Sinking One-2', N'Deep Sea', N'Hermit Crab', N'6 Meat'),
(N'Return of the Apostles', N'The Sinking One-3', N'Deep Sea', N'Clown', N'6 Meat'),
(N'Return of the Apostles', N'Danger in the Deep Sea', N'Deep Sea', N'Kraken', N'7 Meat'),

(N'Return of the Apostles', N'Blazing Land-1', N'Volcano', N'Outlaw', N'8 Meat'),
(N'Return of the Apostles', N'Blazing Land-2', N'Volcano', N'Lava Squishy', N'8 Meat'),
(N'Return of the Apostles', N'Incoming Monsters-1', N'Volcano', N'Druid Elf', N'8 Meat'),
(N'Return of the Apostles', N'Incoming Monsters-2', N'Volcano', N'Flame Spirit', N'8 Meat'),
(N'Return of the Apostles', N'Dark Clouds Casting-1', N'Volcano', N'Lava Squishy', N'8 Meat'),
(N'Return of the Apostles', N'Dark Clouds Casting-2', N'Volcano', N'Flame Spirit', N'9 Meat'),
(N'Return of the Apostles', N'Flaming Demon-1', N'Volcano', N'Foxniper', N'9 Meat'),
(N'Return of the Apostles', N'Flaming Demon-2', N'Volcano', N'Blazing Ent', N'9 Meat'),
(N'Return of the Apostles', N'Burning Tree-1', N'Volcano', N'Butler', N'9 Meat'),
(N'Return of the Apostles', N'Burning Tree-2', N'Volcano', N'Ifrit', N'9 Meat'),
(N'Return of the Apostles', N'Pouring Lava-1', N'Volcano', N'Gangster', N'9 Meat'),
(N'Return of the Apostles', N'Pouring Lava-2', N'Volcano', N'Elite Lizardman', N'9 Meat'),
(N'Return of the Apostles', N'Trial of the Flame-1', N'Volcano', N'Brave Dog', N'9 Meat'),
(N'Return of the Apostles', N'Trial of the Flame-2', N'Volcano', N'Stone Giant', N'9 Meat'),
(N'Return of the Apostles', N'Volcano Eruption-1', N'Volcano', N'Golden Archer Group', N'9 Meat'),
(N'Return of the Apostles', N'Volcano Eruption-2', N'Volcano', N'Dragon', N'9 Meat'),
(N'Return of the Apostles', N'Stone Giant-1', N'Volcano', N'Elegant Lady', N'9 Meat'),
(N'Return of the Apostles', N'Stone Giant-2', N'Volcano', N'Flame Spirit', N'9 Meat'),
(N'Return of the Apostles', N'Raging Flame-1', N'Volcano', N'Private Archer Club', N'9 Meat'),
(N'Return of the Apostles', N'Raging Flame-2', N'Volcano', N'Ifrit', N'9 Meat'),
(N'Return of the Apostles', N'Apocalypse-1', N'Volcano', N'Animal Loving Adventurer', N'9 Meat'),
(N'Return of the Apostles', N'Apocalypse-2', N'Volcano', N'Blazing Ent', N'9 Meat'),
(N'Return of the Apostles', N'Apocalypse-3', N'Volcano', N'Magic Engineer', N'9 Meat'),
(N'Return of the Apostles', N'To the Final Battle', N'Volcano', N'???', N'10 Meat'),

(N'Memories of the North', N'Frigid Tundra-1', N'Tundra', N'Cannon Mech', N'11 Meat'),
(N'Memories of the North', N'Frigid Tundra-2', N'Tundra', N'Ice Sculptor', N'11 Meat'),
(N'Memories of the North', N'Frigid Tundra-3', N'Tundra', N'Herb Collector', N'11 Meat'),
(N'Memories of the North', N'Icy Breathe-1', N'Tundra', N'Combat Mech', N'11 Meat'),
(N'Memories of the North', N'Icy Breathe-2', N'Tundra', N'ULT-28', N'11 Meat'),
(N'Memories of the North', N'Buried Secrets-1', N'Tundra', N'Gatling Droid', N'11 Meat'),
(N'Memories of the North', N'Buried Secrets-2', N'Tundra', N'Repair Mech', N'11 Meat'),
(N'Memories of the North', N'Lost Time-1', N'Tundra', N'Elite Falcon', N'11 Meat'),
(N'Memories of the North', N'Lost Time-2', N'Tundra', N'Repair Mech', N'11 Meat'),
(N'Memories of the North', N'Lost Time-3', N'Tundra', N'Combat Mech', N'11 Meat'),
(N'Memories of the North', N'Lost Time-4', N'Tundra', N'Robotics Engineer', N'11 Meat'),
(N'Memories of the North', N'Beneath the Frost-1', N'Tundra', N'Repair Mech', N'11 Meat'),
(N'Memories of the North', N'Beneath the Frost-2', N'Tundra', N'Novelist', N'11 Meat'),
(N'Memories of the North', N'Beneath the Frost-3', N'Tundra', N'Titan Shield', N'11 Meat'),
(N'Memories of the North', N'The Frozen Climb-1', N'Tundra', N'Wolf Guard', N'11 Meat'),
(N'Memories of the North', N'The Frozen Climb-2', N'Tundra', N'Pyro Droid', N'12 Meat'),
(N'Memories of the North', N'The Frozen Climb-3', N'Tundra', N'Ice Miner', N'12 Meat'),
(N'Memories of the North', N'Avalanche-1', N'Tundra', N'Repair Mech', N'12 Meat'),
(N'Memories of the North', N'Avalanche-2', N'Tundra', N'Frost Archer', N'12 Meat'),
(N'Memories of the North', N'Bitter Dreams', N'Tundra', N'Nemesis', N'12 Meat'),
(N'Memories of the North', N'Pursued-1', N'Tundra', N'Northern Hunter', N'12 Meat'),
(N'Memories of the North', N'Pursued-2', N'Tundra', N'Titan Rocket', N'12 Meat'),
(N'Memories of the North', N'Assault-1', N'Tundra', N'Frost Mage', N'12 Meat'),
(N'Memories of the North', N'Assault-2', N'Tundra', N'Rambunctious Youth', N'12 Meat'),
(N'Memories of the North', N'Glacial Valley-1', N'Tundra', N'Hyper Cannon EX', N'12 Meat'),
(N'Memories of the North', N'Glacial Valley-2', N'Tundra', N'Titan Shield', N'12 Meat'),
(N'Memories of the North', N'Absolute Zero-1', N'Tundra', N'Mecha Girl ver.0', N'12 Meat'),
(N'Memories of the North', N'Absolute Zero-2', N'Tundra', N'Titan Rocket', N'12 Meat'),
(N'Memories of the North', N'Absolute Zero-3', N'Tundra', N'Mecha Girl', N'12 Meat'),
(N'Memories of the North', N'Cold Despair, Blazing Hope', N'Tundra', N'DioNemesis', N'13 Meat');
































