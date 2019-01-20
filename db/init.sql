#
# TABLE STRUCTURE FOR: items
#

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO `items` (`id`, `name`, `quantity`) VALUES (1, 'neque', 39);
INSERT INTO `items` (`id`, `name`, `quantity`) VALUES (2, 'autem', 8752100);
INSERT INTO `items` (`id`, `name`, `quantity`) VALUES (3, 'expedita', 6139232);
INSERT INTO `items` (`id`, `name`, `quantity`) VALUES (4, 'et', 1375447);
INSERT INTO `items` (`id`, `name`, `quantity`) VALUES (5, 'omnis', 62);
INSERT INTO `items` (`id`, `name`, `quantity`) VALUES (6, 'aut', 14);
INSERT INTO `items` (`id`, `name`, `quantity`) VALUES (7, 'vel', 381554);
INSERT INTO `items` (`id`, `name`, `quantity`) VALUES (8, 'doloremque', 8510920);
INSERT INTO `items` (`id`, `name`, `quantity`) VALUES (9, 'facilis', 192002);
INSERT INTO `items` (`id`, `name`, `quantity`) VALUES (10, 'blanditiis', 26233584);


#
# TABLE STRUCTURE FOR: mappings
#

DROP TABLE IF EXISTS `mappings`;

CREATE TABLE `mappings` (
  `item_id` int(11) NOT NULL,
  `detected_text` varchar(200) NOT NULL,
  KEY `item_id` (`item_id`),
  CONSTRAINT `mappings_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (1, 'Id et et saepe. Minima veniam similique asperiores voluptatem odit. Itaque a at est odio totam.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (2, 'Deserunt qui qui laborum est voluptatem libero placeat. Officiis unde voluptas blanditiis sequi iusto. Voluptas eos sequi voluptatem ut quia. Quibusdam et perspiciatis dolores itaque ipsum.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (3, 'Minima ut ut qui quos incidunt tempore. Laborum aliquam reiciendis doloremque quisquam. Dolor ducimus est odio sunt quae voluptas. Ut modi officiis dicta quia.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (4, 'Voluptatem voluptatem nesciunt et. Sed minus quasi voluptatem ut repellat nihil. Hic aut et alias accusamus et consectetur ipsa.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (5, 'Neque quo aliquam atque voluptatem sed. Est illo voluptas dolorum pariatur accusamus quia odio. Molestiae et ut aut occaecati.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (6, 'Voluptas voluptas dolores et. Dicta modi sapiente dignissimos aut. Nesciunt adipisci sed nobis earum.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (7, 'Quis et corporis nulla fugiat nemo iure voluptatem. Omnis praesentium necessitatibus quaerat esse sed dolor. Qui dolorem deserunt animi soluta ullam dolores esse.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (8, 'Et beatae aut nihil tempora voluptates et. Laboriosam animi provident repellendus iste excepturi.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (9, 'Consectetur voluptates voluptatem hic neque et voluptatem. Aspernatur fuga est qui rerum nihil quo expedita. Quia culpa voluptatem voluptatem officia sit blanditiis qui.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (10, 'Sunt repellat porro sint dolores est qui perferendis. Ab et consequatur voluptas omnis provident quidem maxime. Laborum nulla minima quia et odio placeat omnis voluptatem.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (1, 'Consectetur sunt dolores aut assumenda accusamus et. Aut sunt sint dolorem qui. Voluptas quasi sit iusto accusantium omnis nisi.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (2, 'Consequatur ipsa quasi sit at sit alias ad quae. Provident eos ex nihil atque molestiae est eos.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (3, 'Dicta aut aspernatur id id. Quod et ut quasi occaecati incidunt illum corporis molestiae. Et quam nobis quisquam quia. Consequatur quos amet ut dolores eum eveniet sed.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (4, 'Modi voluptas et ratione nobis. Molestiae rem cupiditate quis pariatur qui sunt eius. Ad velit alias omnis.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (5, 'Aliquam ea non dolor consequuntur aspernatur aut sit. Cumque omnis qui ut aut dolor dolorem. Placeat accusamus et quos omnis inventore et dolor.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (6, 'Ullam quisquam ex dolores repudiandae. Ea totam voluptates quam amet sequi. Explicabo sed qui accusamus inventore.\nOptio et laboriosam saepe nemo. Ea tenetur ut doloribus est.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (7, 'Esse dolor quia necessitatibus facilis harum quo. Assumenda odit ut dolores. Dolorum maiores veritatis autem. Accusamus doloribus consequatur corporis molestiae sed in.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (8, 'Repellat architecto repudiandae sunt saepe nisi. Blanditiis possimus dolore similique sequi. Qui totam repellat officiis consequatur at sunt veniam.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (9, 'Est consequuntur molestias expedita modi consectetur aliquid. Perspiciatis assumenda nihil iusto iure fuga. Vel ea ipsum hic autem dolores ut.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (10, 'Nisi sed magni nesciunt sit et nam. Dolor ullam at fuga voluptatibus. Autem et vel quia ex fugit. Incidunt consequatur sequi vero aliquid.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (1, 'Unde ullam animi ut rerum aut recusandae voluptatum doloribus. Culpa est dolor ad sed. Et quidem qui repellendus quia maxime architecto. Et eius fugiat quia sapiente eaque voluptas.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (2, 'Voluptatem autem facilis eaque libero ut voluptas vitae. Vero recusandae ut similique cupiditate repudiandae. Labore qui necessitatibus nostrum eos porro quo officiis.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (3, 'Deleniti aperiam pariatur et facere nemo. Reiciendis veniam esse eius illum quis quasi porro. Consequuntur suscipit cumque eligendi eveniet magnam magnam rerum nulla.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (4, 'Error quae impedit eligendi. In ab est rerum sunt quaerat nobis. Nobis et culpa ex cum corrupti incidunt illo exercitationem. Quibusdam rerum quos ea in.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (5, 'Reiciendis quia qui enim aut sunt odio voluptatem. Et vitae non odit voluptate officia autem aspernatur.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (6, 'Repellat atque ab quia neque impedit eos omnis. Quasi perferendis id ipsum quisquam quis. Est sint voluptas cumque odio fugit repellendus.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (7, 'Voluptatem iusto delectus quas molestias optio enim. Cum aliquid nesciunt ducimus ut. Sed pariatur eos quasi voluptatem eveniet.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (8, 'Quis dolorum officiis nesciunt atque placeat doloribus illum. Incidunt asperiores sint aliquid distinctio perferendis deleniti. Voluptatibus totam est iusto quaerat ut ullam tenetur inventore.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (9, 'Consectetur unde ducimus ipsam iure tempore. In animi ut ut qui laudantium fugiat occaecati ex. Ut voluptatem eveniet et accusantium.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (10, 'Eaque enim maiores veniam neque quis nihil quae. Ut tempore non fugiat. Ipsam consequatur rem quia molestiae dicta quo deleniti. Repudiandae deserunt corrupti vel sapiente maxime dolores unde eius.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (1, 'Nostrum non impedit suscipit et. Quos ut optio explicabo. Deserunt repudiandae dolore dolor nihil aut optio sint consequatur.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (2, 'Voluptatem dolores labore laborum ipsum ut reiciendis molestias. Ut autem quis quo et et earum ducimus. Et perspiciatis aut assumenda et quo ut.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (3, 'Quaerat nam ut labore aut eligendi aperiam doloribus. Aut atque soluta consequatur libero dicta aut expedita.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (4, 'Illum libero omnis molestiae est cupiditate in. Quaerat dignissimos natus quidem sit sunt sunt in. Et beatae dignissimos sint laborum.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (5, 'Architecto ut laborum fuga non est eos consectetur facilis. Reiciendis natus dolores in quaerat incidunt quaerat atque. Corporis sapiente fugiat qui saepe id ut.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (6, 'Enim ducimus recusandae occaecati eius. Perspiciatis qui voluptatum qui et accusantium minima. Quae quo in qui assumenda dolorem voluptas aut.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (7, 'Optio repellendus vel non illo sapiente. Aliquam facilis atque sed sit sapiente qui. Voluptas animi et repellendus ipsum qui sit. Perferendis dolores commodi et rerum aut.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (8, 'Odio nesciunt sit exercitationem et rerum voluptas. Aliquam quaerat id ad mollitia qui. Voluptatibus voluptas dolores quia officia praesentium. Tempore ut qui ut consequatur et.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (9, 'Modi et rerum doloremque nihil qui occaecati. Labore itaque doloremque impedit in nihil. Dolorum recusandae recusandae repudiandae nulla et autem vitae sunt.');
INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES (10, 'Aspernatur voluptatem fugiat explicabo eum molestiae ea et. Consequuntur magnam distinctio esse sunt. Repudiandae officia tempora aut est. Non enim rem sed labore dolor ut laboriosam.');


#
# TABLE STRUCTURE FOR: people
#

DROP TABLE IF EXISTS `people`;

CREATE TABLE `people` (
  `nric` varchar(9) NOT NULL,
  `rank` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`nric`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `people` (`nric`, `rank`, `name`) VALUES ('bvhahwxnr', 'Mrs', 'neque');
INSERT INTO `people` (`nric`, `rank`, `name`) VALUES ('ecunumbqz', 'Mis', 'enim');
INSERT INTO `people` (`nric`, `rank`, `name`) VALUES ('gdghlmdqq', 'Mis', 'et');
INSERT INTO `people` (`nric`, `rank`, `name`) VALUES ('hcfpzmviv', 'Mis', 'quas');
INSERT INTO `people` (`nric`, `rank`, `name`) VALUES ('mzemykapl', 'Mr.', 'fugit');
INSERT INTO `people` (`nric`, `rank`, `name`) VALUES ('otczcqcma', 'Mr.', 'commodi');
INSERT INTO `people` (`nric`, `rank`, `name`) VALUES ('ozyrcjujw', 'Mrs', 'est');
INSERT INTO `people` (`nric`, `rank`, `name`) VALUES ('sqvkoaqjk', 'Mis', 'ut');
INSERT INTO `people` (`nric`, `rank`, `name`) VALUES ('vjaqetmml', 'Dr.', 'impedit');
INSERT INTO `people` (`nric`, `rank`, `name`) VALUES ('yphmjngkr', 'Dr.', 'esse');


#
# TABLE STRUCTURE FOR: routine_checks
#

DROP TABLE IF EXISTS `routine_checks`;

CREATE TABLE `routine_checks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `checked_by` varchar(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `checked_by` (`checked_by`),
  CONSTRAINT `routine_checks_ibfk_1` FOREIGN KEY (`checked_by`) REFERENCES `people` (`nric`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=latin1;

INSERT INTO `routine_checks` (`id`, `date`, `checked_by`) VALUES (161, '1981-11-17', 'bvhahwxnr');
INSERT INTO `routine_checks` (`id`, `date`, `checked_by`) VALUES (162, '1998-07-31', 'ecunumbqz');
INSERT INTO `routine_checks` (`id`, `date`, `checked_by`) VALUES (163, '1995-07-03', 'gdghlmdqq');
INSERT INTO `routine_checks` (`id`, `date`, `checked_by`) VALUES (164, '2014-12-07', 'hcfpzmviv');
INSERT INTO `routine_checks` (`id`, `date`, `checked_by`) VALUES (165, '1987-05-22', 'mzemykapl');
INSERT INTO `routine_checks` (`id`, `date`, `checked_by`) VALUES (166, '2000-07-17', 'otczcqcma');
INSERT INTO `routine_checks` (`id`, `date`, `checked_by`) VALUES (167, '1983-12-08', 'ozyrcjujw');
INSERT INTO `routine_checks` (`id`, `date`, `checked_by`) VALUES (168, '1989-04-22', 'sqvkoaqjk');
INSERT INTO `routine_checks` (`id`, `date`, `checked_by`) VALUES (169, '1981-04-21', 'vjaqetmml');
INSERT INTO `routine_checks` (`id`, `date`, `checked_by`) VALUES (170, '1986-05-13', 'yphmjngkr');


#
# TABLE STRUCTURE FOR: scans
#

DROP TABLE IF EXISTS `scans`;

CREATE TABLE `scans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `expiry_date` date NOT NULL,
  `check_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `check_id` (`check_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `scans_ibfk_1` FOREIGN KEY (`check_id`) REFERENCES `routine_checks` (`id`),
  CONSTRAINT `scans_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (1, 1, '2000-01-08', 161);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (2, 2, '1988-10-14', 162);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (3, 3, '1992-11-02', 163);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (4, 4, '2006-10-17', 164);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (5, 5, '1970-01-09', 165);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (6, 6, '2001-06-09', 166);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (7, 7, '2006-06-08', 167);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (8, 8, '1989-06-13', 168);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (9, 9, '2018-11-10', 169);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (10, 10, '1998-01-20', 170);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (11, 1, '1982-02-21', 161);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (12, 2, '1997-11-09', 162);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (13, 3, '1988-06-18', 163);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (14, 4, '1996-06-15', 164);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (15, 5, '2017-06-02', 165);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (16, 6, '1981-12-26', 166);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (17, 7, '1974-08-30', 167);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (18, 8, '1987-10-21', 168);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (19, 9, '1986-12-06', 169);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (20, 10, '1981-04-24', 170);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (21, 1, '2009-05-09', 161);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (22, 2, '1981-07-07', 162);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (23, 3, '2000-07-18', 163);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (24, 4, '1999-07-10', 164);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (25, 5, '2011-04-26', 165);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (26, 6, '2018-04-02', 166);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (27, 7, '1973-08-23', 167);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (28, 8, '2008-06-02', 168);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (29, 9, '1996-10-16', 169);
INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES (30, 10, '1976-12-30', 170);


