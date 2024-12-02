--Delete Contact Table from the the database if it does not exist as specified--
DROP TABLE IF EXISTS Contact;
--Delete Organization Table from the the database if it does not exist as specified--
DROP TABLE IF EXISTS Organization;

--Create the Organization Table and Attributes--
CREATE TABLE Organization 
(
    OrganizationID INT,
    OrganizationName VARCHAR(500),
    OrganizationDescription VARCHAR(1000),
    OrganizationKeywords VARCHAR(500),

    PRIMARY KEY(OrganizationID)
);

--Create the Contact Table and Attributes--
CREATE TABLE Contact
(
    ContactID INT,
    OrganizationID INT,
    FirstName VARCHAR(1000),
    LastName VARCHAR(1000),
    Email VARCHAR(1000),
    Phone VARCHAR(1000),
    Address VARCHAR(1000),

    PRIMARY KEY(ContactID),
    FOREIGN KEY (OrganizationID) REFERENCES Organization(OrganizationID)
);

--Insert Data Values into Organization Table)--
INSERT INTO Organization(OrganizationID, OrganizationName, OrganizationDescription, OrganizationKeywords)
VALUES
(1, 'Academic Advisor Training', 'OU Academic Advisor professional development training and enrichment seminars.', 'Academic Advisor, Professional, Development'),

(2, 'Academic Team', 'We represent OU at quiz bowl tournaments across the U.S. Quiz bowl is a trivia event catered to academic subjects including literature, chemistry, physics, biology, fine arts, history, classical music, anthropology, economics, and many others.', 'Trivia, Competiton, tournament, Academic'),

(3, 'Advanced Radar Research Center Student Affairs Committee', 
    'We focus on connecting and advocating for all the students in OU''s Advanced Radar Research Center in several ways: ' +
    'by connecting the students with the ARRC faculty and ensuring their voice is heard, by informing graduate student''s of their responsibilities ' +
    'and the expectations they should have in their advisor, by equipping students, both graduate and undergraduate, with the resources to navigate ' +
    'college, by promoting a welcoming environment to those less represented in the ARRC and to make sure international students have an enriching experience, ' +
    'by promoting the ARRC, and by hosting student social events!', 
    'Research, Student Affairs, Advocating'),

(4, 'Afghan Student Association', 
    'ASA-OU, a vibrant student organization at the University of Oklahoma, is dedicated to fostering cultural awareness and appreciation for ' + 
    'Afghanistan''s rich history. We organize engaging events celebrating Afghan culture, including national events and days. ' +
    'Beyond enrichment, we warmly welcome new Afghan students, emphasizing that OU is their new home. Our community values diverse cultures, showing respect and solidarity.' + 
    'Together, we form a family with a shared language and culture, ensuring newcomers never feel alone at OU. Join us in building connections, celebrating diversity, and creating a supportive home away from home.',
    'Aghan, Culture, History, Language, Connections, Diversity'),

(5, 'African Student Association', 
    'The African Student Association at the University of Oklahoma was founded to promote unity amongst African students in the Diaspora, ' +
    'create a network that supports African students, educate the community on the African continent, and ultimately celebrate African culture on campus.', 
    'African, Culture, History, Language, Connections, Diversity'),

(6, 'African Women''s League', 
    'The overall mission of A.W.L is: ' +
    '- To be the voice of the female students that hold an International African student status at the University of Oklahoma. ' +
    '- To equip its members with adequate relevant resources to establish themselves as individuals on campus and integrate into tze community ' +
    ' - To empower its members through rigorous various training sessions to better themselves, encouraging self-care, raising awareness, learning, and embracing their identity. ' +
    ' - To promote leadership skills through mentorship of its members through various associations and events To promote social status and etiquette through improved networking, connections, friendships/ sisterhood ' +
    ' - To share the diverse African culture of its members with the OU student body and the local community, through different interactive activities ' +
    ' - To raise awareness, educate the OU and local community of the African tradition and heritage especially through the eyes of the African woman', 
    'African, Culture, History, Language, Connections, Diversity'),

(7, 'Afrobeatz Dance Club at the University of Oklahoma', 
    'We are a group of OU students that are looking to promote a part of African culture through dance. ' +
    'We welcome everyone to have fun while dancing to Afrobeats dance style. We hope that we can unite people of different cultures through dance. ' + 
    'We encourage individuals of all backgrounds (with or without dance experience) to join us in exploring cultures and meet beautiful people. '+ 
    'We refer to each other as "friends and family" and can''t wait for you to join us!',
    'Dance, Afrobeats, Unity, Culture'),

(8, 'Agricultural Law Association', 'N/A', 'Agriculture, Law'),

(9, 'Air Force ROTC Detachment 675',
    'Since 1952, Air Force ROTC Detachment 675 has been training high-quality future Air Force leaders. ' + 
    'Some of the best and brightest University of Oklahoma (OU) students have completed the Air Force ROTC program while earning their undergraduate degree, allowing them to commission as officers in the United States Air Force after graduation. ' +
    'These graduates have served their country well as pilots, Combat Systems Officers (CSOs), Air Battle Managers (ABMs), engineers, doctors, nurses, weather officers, communications officers, acquisition managers, language specialists, etc. ' +
    'Today, this tradition continues on at the University of Oklahoma. If you enroll in AFROTC at Det 675, you will become a part of this long-standing tradition of excellence!',
    'ROTC, Air Force, Leader, Combat Systems Officers, Air Battle Managers, Engineers, Doctors, Nurses, Weather Officer, Communication Officer, Acquitsition Manager, Language Specialist'),

(10, 'Air Force ROTC Student Association', 
    'Since 1952, Air Force ROTC Detachment 675 has been training high-quality future Air Force leaders. ' +
    'Some of the best and brightest University of Oklahoma (OU) students have completed the Air Force ROTC program while earning their undergraduate degree, allowing them to commission as officers in the United States Air Force after graduation. ' +
    'These graduates have served their country well as pilots, Combat Systems Officers (CSOs), Air Battle Managers (ABMs), engineers, doctors, nurses, weather officers, communications officers, acquisition managers, language specialists, etc. ' +
    'Today, this tradition continues on at the University of Oklahoma. If you enroll in AFROTC at Det 675, you will become a part of this long-standing tradition of excellence!', 
    'ROTC, Air Force, Leader, Combat Systems Officers, Air Battle Managers, Engineers, Doctors, Nurses, Weather Officer, Communication Officer, Acquitsition Manager, Language Specialist'),

(11, 'Alpha Chi Omega', 
    'Psi chapter of Alpha Chi Omega is located at the University of Oklahoma in Norman, Oklahoma. ' + 
    'Our chapter is over 325 members strong, making our sisterhood one of the largest chapters of Alpha Chi Omega nationwide.', 
    'Sorority, sisterhood, Greek life'),

(12, 'Alpha Eta Rho - Beta Chi Chapter', 
    'This is the Alpha Eta Rho - Beta Chi chapter at OU. Alpha Eta Rho is a professional collegiate aviation fraternity founded in 1929, dedicated to fostering, and mentoring students that have a common interest in the field of aviation. ' + 
    'It is a coed fraternity that emphasizes mentorship, professional development, and leadership potential amongst students within the aviation industry. ' +
    'Alpha Eta Rho welcomes and encourages a diverse background of individuals to participate in their organization!', 
<<<<<<< Updated upstream
    'Greek Life, Aviation, Fraternity, mentorship, professional development, leadership');
=======
    'Greek Life, Aviation, Fraternity, mentorship, professional development, leadership'),

(13, 'Alpha Gamma Delta',
    'Alpha Gamma Delta is a womens fraternity meant to build sisterhood, encourage better scholarship, promote volunteering, and build lasting friendships. ' +
    'Guided by our Purpose Alpha Gamma Deltas strive to attain a higher standard, thereby improving their lives, the lives of those around them, and the communities in which they live.',
    'Greek Life, Sorority, Sisterhood, Volunteering, Community'),

(14, 'Alpha Kappa Delta Phi',
    'We are the first, largest, and only international asian-interest sorority in the state of Oklahomma.',
    'Greek Life, Sorority, International, Asian'),

(15, 'Alpha Phi Alpha Fraternity, Inc.',
    'Alpha Phi Alpha Fraternity, Inc., develops leaders, promotes brotherhood and academic excellence, while providiing service and advocacy for our communities.',
    'Greek Life, Fraternity, leadership, mentorship'),

(16, 'American Association of Petroleum Geologists',
    'This chapterr is a student organization for the American Association of Petroleum Geologist. ' +
    'We focus on networking and professional development opportunities for members, as well as offering a variety of technical talks and social activities',
    'Professional development, petroleum, geology, petroleum geologist, networking'),

(17, 'American Constitution Society',
    'The American Constitution Society believes that law should be a force to improve the lives of all people. ' +
    'ACS works for positive change by shaping debate on vitally important legal and constitutional issues through development and promotion of high-impact ideas to opinion leaders and the media.',
    'Constituion, debates, legal, networking, activism, law, policy'),

(18, 'American Indian Studen Association',
    'AISA exists to promote and encourage the welfare of American Indian, Alaska Native, Native Hawaiian, and other Indigenous students at the University of Oklahoma by providing a broad spectrum of educatoinal, social, and cultrual activiites.',
    'American Indian, Culture, Native, Indigenous, Social'),

(19, 'American Institute of Chemical Engineers',
    'OUs chapter of the American Institute of Chemical Engineers aims to serve the undergraduate students of the School of Sustainable Chemical, Biological and Materials Engineering in both social and career endeavors.',
    'Chemical Engineering, Engineering, professional development, networking'),

(20, 'American Marketing Association',
    'AMA offers students interested in a career in marketing or other business fields the opportunity to develop a better understanding of the industry. ' +
    'The organization plans to achieve these objectives through advisment and mentoryship from professionals in the field by hosting speakers which will allow the students to gain first-hand knowledge of what is expected of professionals.',
    'Marketing, Professional development, networking, business, mentorship, advising'),

(21, 'American Society of Civil Engineers',
    'ASCE is the student organization representing civil, architectural, and environmental engineering students at the University of Oklahoma.',
    'Civil Engineering, Engineering, professional development, environmental engineering, architectural engineering, networking'),

(22, 'American Society of Mechanical Engineers',
    'ASME is dedicated to connecting, engaging, and enriching mechanical engineering students at OU',
    'Mechanical Engineering, Engineering, professional development, networking'),

(23, 'Animation at The University of Okalhoma',
    'Members of Animation@OU will engage with a wide variety of animated media and learn about the different work that goes into their creation. ' +
    'Our goal is to bring together members of the OU community with an interest in animation',
    'Animation, networking, voice acting, screenwriting, community'),

(24, 'Arab Student Association',
    'ASA aims to share and celebrate Arab culture and heritage among the OU community as well as create a space for Arab students to express their identitiy.',
    'culture, arab, community, diversity, heritage'),

(25, 'Art Club',
    'We intend to give visual artists a space to practice, learn, and create art. ' +
    'This will include inviting professionals to share how they have made art a successful career.',
    'art, animation, painting'),

(26, 'Beekeeprs Association',
    'We currently have two beehives maintained by members of the club who have attended an hour-long training session created by the club. ' +
    'We care for the hives from early spring to fall every year, including overthe summer.',
    'beekeeping, social, bees, animals'),

(27, 'Big brothers Big Sisters Collegiate Board',
    'Big Brothers Big Sisters Collegiate Board is a cohort of Bigs that help connect Big Brothers Big Sisters with the OU community by organizing outreach events.',
    'fraternity, sorority, greek life, community, mentorship'),

(28, 'Billiards Club',
    'We welcome anyone who wants to have a good time and make freinds playing pool.',
    'pool, billiards, social, sports, recreational'),

(29, 'Biology Graduate Student Organization',
    'We represent the graduate students of the SBS Department at the University of Oklahoma. ' +
    'Some of us are working towards a PHD and some towards a Masters, but we are all working together.',
    'graduate, networking, biology'),

(30, 'Biomedical Engineering Student Affairs',
    'We are a graduate led organization aimed at fostering community for the Stephenson School of Biomedical Engineering graduate program.',
    'graduate, biomedical engineering, biomedical, networking'),

(31, 'Black Business Network',
    'The Black Business Netowrk aims to cultivate and empower future Black business leaders. ' +
    'We provide mentorship, resources, and community to help Black students excel through the Price School of Business and thrive in the world of business.',
    'black, culture, networking, mentorship, african american, business'),

(32, 'Black Girl White Coat',
    'To cultivate and empower all those who identify as Black women on Ous campus through fellowship and discussion meant to bring attention to and work against the obstacles Black women face pursuing a career in STEM.',
    'black, culture, networking, mentorship, women, women led, stem, engineering, science'),

(33, 'Black Student Association',
    'The mission of the organization aims to serve as a primary source of information, to serve as a positive role model, and to promote interaction and communication for Black students and various communities at OU.',
    'black, culture, networking, mentorship, community, professional development'),

(34, 'Board and Card Game Club',
    'The Board and Card Game Club is an organization open to anybody who likes to play board or card games! The club plays games of all genres and complexiites, so there will be something for everybody to enjoy.',
    'board games, card games, social, recreational'),

(35, 'Boomer Rocket Team',
    'OU Rocket Team Club is an interdisciplinary academic team in which students design, build, and launch high powered rockets. ' +
    'The team trains and certifies members to build rockets, competes nationally in various events, and takes on experimental independent projects.',
    'competition teams, engineering, rockets, stem, interdisciplinary'),
    
(36, 'Boxing Enthusiasts',
    'We are an organization designed to bring students together through the sport of boxing. ' +
    'We are dedicated to bringing together fans and boxers from all walks of life to celebrate the sport we love.',
    'boxing, sports, recreational, social'),

(37, 'Business Law Society',
    'We are committed to fostering community, providing degree navigation, mentorship, and networking opportuniities for all interested JD candidates and Undergraduate students who are starting to think about Law School.',
    'law, graduate, mentorship, business, community, networking'),

(38, 'Caribbean Students Association',
    'The Caribbean Students Association is a cultural organization aimed at integrating students who are connected to the Caribbean region in more ways than one. ' +
    'It is also a welcoming space for non-Caribbean students interested in learning mroe about the Caribbean, its people, its history, and its culture through social gathering and various cultural events.',
    'Caribbean, culture, history, social'),

(39, 'Catholic Student Association',
    'Our mission is to foster spiritual, intellectual, and emotion growth among college students by encouraging the development of Chirst-centered consciences and attitudes of discipleship in a welcoming community.',
    'religion, christian, catholoicism, community, spiritual, mentorship'),

(40, 'Chi Alpha Campus Ministry',
    'Connecting students to Christ, transforming the university, marketplace, and the world. ' +
    'Chi Alpha has weekly male and female Life Groups that are based on discussing what it means to follow Jesus.',
    'religion, christian, community, spiritual, worship, ministry'),

(41, 'Chi Epsilon',
    'National Civil Engineering Honor Society in the United Staes. ' +
    'We honor engineering students who have exemplified the princples of scholarship, character, practicality, and sociability.',
    'honor society, engineering, civil engineering, professional development, networking'),

(42, 'Chinese Language and Culture Club',
    'We are comprimised on students who are interested in Chinese language and culture. ' +
    'Our events are all inclusive and highlight aspects of Chinese culture and aim to promote US-China relations through communication',
    'culture, community, chinese, language'),

(43, 'Christians on Campus',
    'We are believers in hrist from arious backgrounds. ' +
    'Christians on Campus warmly receives all believers in Christ and seeks to maintain the oneness of the Spirit by keeping our focus on Christ',
    'religion, christianity, spiritual, worship, community'),

(44, 'Circle K International',
    'Circle K International is a university community focused on service, leadership, and friendship. ' +
    'CKI is making a postiive impact on the world every day. ' +
    'As a chapter, we make a difference on campus, in Norman, and throughout Oklahoma.',
    'volunteering, leadership, friendship, community'),

(45, 'Classic Film Club',
    'We provide all movie lovers with the opportunity to watch great films and a community in which to discuss them.',
    'film, movies, social, recreational'),

(46, 'Club Golf Team',
    'We are a student run organization for OU students who are interested in competing or learning more about golf.',
    'golf, sports, recreational, social'),

(47, 'College Democrats',
    'Our organization is all about having fun while making a positive impact. ' +
    'We educate our campus about progressive politicis, engage in meaningful discourse about current events, participate in volunteerism, activism, public forums, and political campaigns at all levels.',
    'politics, democrat, volunteering, activism'),

(48, 'College Republicans at the University of Oklahoma',
    'The purpose of OUCR is to promote the principles of the Republican Party among students of the University of Oklahoma, to recruit students as members of the organization and as members of the Republican Party, and to aid in the election of Republican candidates at all levels of government.',
    'politics, republican, community, professional development'),

(49, 'Columbian Student Association',
    'We help provide cultural academic, and economic opportunities to unite, support, and promote Colombian culture among all the nations present at the University of Oklahoma.',
    'culture, Columbia, community'),

(50, 'Computer Science Interview Preparation Club',
    'The purpose of the Organization is to prepare students for technical programming interviews.',
    'programming, computer science, interview, professional development'),

(51, 'Computer Science Student Board',
    'The Computer Science Student Board is a formal student leadership organization within the CS department. We plan and host social events to promote student diversity and collaboration, as well as professional events which offer invaluable networking opportunities.',
    'computer science, leadership, professional development, networking'),

(52, 'Cooking Club', 
    'The purpose of the Organization is to develop a community of students who are passionate about cooking and health, to offer opportunities for skill development, and to foster a fun, inclusive environment for all, regardless of skill level.',
    'cooking, skill development, social, recreational'),

(53, 'Crimison Camera Club',
    'Providing a creative, collaborative space for those interested in film making and watching!',
    'film, film making, social, recreational'),

(54, 'Crimson Chords',
    'The Crimson Chords is OUs premiere student-led a cappella choir. We put on two concerts each semester both on and off campus.',
    'choir, music, social, recreational'),
    
(55, 'Crypto Network',
    'OU Crypto Network aims to foster an inclusive environment where members can engage in discussions about the historical development, current trends, and future potential of cryptocurrency-related projects.',
    'crypto, business, stocks, networking'),

(56, 'Data Science and Analytics Club',
    'The Data Science and Analytics Club is an organization that aims to connect students with a community that is passionate about DSA and to inform students about Data Science-related career opportunities.',
    'Data Science and Analytics, Data Science, Computer Science, netowrking, professional development, programming'),

(57, 'Delta Sigma Phi',
    'Our mission is to empower and encourage our members to become better men. ' +
    'Our vision is to become Americas leading fraternity, with an unparalleled leadership experience.',
    'fraternity, leadership, mentorship, community'),

(58, 'DEV Hub',
    'DEV Hub is a community for students of all majors interested in software development and realted fields. ' +
    'The club will provide a space for members to develop their skills outside the classroom through workshops, panel discussion, and long-term coding challenges.',
    'coding, programming, software engineering, software development, professional development'),

(59, 'Doctor Who Fan Club',
    'The Doctor Who fan club club is an organization dedicated to bringing together fans of the long running, iconic science fiction show Doctor Who.',
    'Doctor Who, television, social, recreational'),

(60, 'Earthquake Engineering at the University at The University of Oklahoma',
    'The chapters purpose is to familiarize the student body with earthquakes as a natural hazard and their impact on civil infrastructure.',
    'engineering, earthquakes'),

(61, 'East African Alliance',
    'EAA was formed to foster service, career development, impact and community within the East African student bodyd thorugh mentoryship, service projects, and working with East African organizations to create sustainable change.',
    'culture, professional development, east african, african american'),

(62, 'Economics Club',
    'The OU Economics Club provides a meeting place for people interested in economics. ' +
    'We aim to enhance economic knowledge within the OU community through fun and engaging events, and we encourage the involvement of non-economic majors.',
    'economics, social, professional development, business'),

(63, 'Elite Dance Team',
    'The Elite Dance Team is an OU student organization focused on perfecting and performing the art of dance.',
    'dance, social, recreational'),

(64, 'Engineering Student Life',
    'Engineering Students Lifes mission is to foster an inclusive community that supports creativity, diversity of thought and provides a multitude of meaningful experiences for sutdents that encourage leadership, learning, and lifelong success.',
    'Engineering, student life, diversity, social, professional development, stem'),

(65, 'Engineering Serving Others',
    'Engineers Serving Others at the University of Oklahoma is a student organization which utilizes the unique skill-sets of all engineering disciplines to fulfill the needs of nonprofit organizations in the Norman community and surrounding areas.',
    'Engineering, volunteering, community'),

(66, 'Engineers Club',
    'The purpose of this organization is to foster the high ideals of the Engineering profession to stimulate interest in engineering related activities.',
    'Engineerings, professional development, stem'),

(67, 'Entrepreneurship Club at The University of Oklahoma',
    'The Entrepreneurship Club at OU is a departmental student organization under startup OU that exists to inspire and connect aspiring student entrepreneurs.',
    'Entrepreneurship, business, professional development, networking'),

(68, 'Environmental Science Student Association',
    'ESSA aims to provide people opportunities for meaningful field experience, educational speaker visits, and engaging community work.',
    'environmental science, science, stem, volunteering'),

(69, 'Federalist Society',
    'The Federalist Society is a group of conservatives and libertarians founded on the principals that the state exists to preserve freedom and that the seperation of governmental powers is central to our constitution.',
    'politics, activism, conservative, libertarian, federalist'),

(70, 'Filipino Student Association',
    'We are dedicated to spreading Filipino cultural awareness on campus, and creating a family for every student and member interested in our vision.',
    'Filipino, cultural, community, diversity'),

(71, 'First Year Connections',
    'The purpose of the first year connections is to assist first-year students in their transition from high school to college, while creating a community that can provide them with academic and social resources.',
    'social, freshman, community'),

(72, 'Flying Sooners',
    'The Aviation Club was started to get members of the student body involved in aviation and create a group of people who share a passion for aviation.',
    'aviation, flying'),

(73, 'French Club',
    'Our goal is to introduce and enhance students understanding and interest in Francophone cultures and languages, as well as provide camaraderie among the OU community.',
    'french, language, culture'),

(74, 'Game Developers Association',
    'The Game Developers Association is dedicated to being a hub for students to learn about and practice creating video games of all kinds.',
    'gaming, developers, game developers, programming, computer science'),

(75, 'Gamma Beta Phi Society',
    'The Gamma Beta Phi Society is a national honors and service society that brings together academically excellent students of all ages, and gives them the opportunity to participate in meaningful service projects and develop leadership skills.',
    'leadership, mentorship, honor society, volunteerism'),

(76, 'German Club',
    'To promote the study and maintenance of German in the United States and abroad; to learn about the cultures and German-speaking countries and groups.',
    'language, german, culture'),

(77, 'Girls Who Code',
    'The OU Girls Who Code Loop is dedicated to providing a space and platform for women and nonbinary students to explore their creativity in technical fields and learn a variety of programming langauges through a standardized curriculum we create.',
    'coding, women, programming, code'),

(78, 'Global Brigades',
    'To empower volunteers and under-resourced communities to resolve global health and economic disparities and inspire all involved to collaboratively work towards an equal-world.',
    'volunteering, community'),

(79, 'Graduate Business Association',
    'The Graduate Business Association strives to promote excellence in social, community, and leadership values.',
    'graduate, business, professional development, community, social, leadership'),

(80, 'Graduate Philosophical Association',
    'The purpose of this organizationn is to promote and encourage a sense of commnity among the graduate students in the Philosohpy Department at the Unviersity of Oklahoma.',
    'philosophy, graduate, social'),

(81, 'Graduate Women in Business',
    'The OU Graduate Women in Business organizationn is designed to elevate women in business and inspire them to reach their full professional potential.',
    'graduate, women, business, professional development'),

(82, 'Graphic Deisgn Association',
    'To promote the intellectual, social, and cultural opportunities at the University of Oklahoma.',
    'graphic design, professional development, design'),

(83, 'Hacklahoma',
    'Hacklahomas mission is to kindle creativity and innovation in Oklahoma ' +
    'We are working to develop a robust tech industry and tech community in Oklahoma and at the University of Oklahoma.',
    'programming, computer science, robotics, virtual reality, artifical intelligence, hacking'),

(84, 'Hispanic American Student Association',
    'The purpose of the organization is to serve the university and surrounding community by emphasizing the culture, heritage, and traditions of the Hispanic American community at OU.',
    'hispanic america, hispanic, culture, professional development'),

(85, 'Horror Movie Club',
    'Our club focuses on creating a relaxed, fun environmenet where you can connect with fellow Sooners who share a passion for movies.',
    'movie, film, horror movies, social, recreational'),

(86, 'Human Factors and Ergonomics Society',
    'The organization is dedicated to the betterment of humankind through inclusive scientific inquiry and engineering applications at the interface of humans and their natural, residential, recreational, and vocational environments, with emphasis on enhancing performance, safety, and well-being at those interfaces.',
    'ergonomics, engineering, community, stem'),

(87, 'India Student Association',
    'India Student Association exists to bring together the various cultural diversities of Indian international students and celebrate it.',
    'Indian, cutlure, community'),

(88, 'Indigenous Art Forms',
    'Indigenous Art Forms offers a space on campus for students to practice, sustain, and revitalize various Indigenous Art Forms.',
    'Art, Indigenous Art, Indigenous, culture'),

(89, 'Institute of Eletrical and Electronic Engineers',
    'IEEE is a dynamic and inclusive organization dedicated to advancing technology and fostering professional development among engineering students.',
    'Eletrical Engineering, professional developemnt, engineering, stem'),

(90, 'Institute of Industrial Engineers',
    'To provide a communnity, network, and resources to Industrial and Systems Engineering students through events, both social, educational, and professional.',
    'Industrial Engineering, engineering, stem, community, professional development'),

(91, 'International Students Club',
    'This club aims to provide opportunities for all international students to participate in social activities, community events, mentorship, and campus involvement.',
    'international students, transfer students, community, social'),

(92, 'Investment Club at The University of Oklahoma',
    'The Investment Club achieves mission is to foster growth with like-minded individuals. The investment club achieves this mission by providing students with numerous opportunities to learn about investing and gain practical experience in managing a portfolio.',
    'investing, finance, professional development, networking'),

(93, 'Japanese Club',
    'Japanese Club is dedicated to serving our students that are interested in or learning japanese language.',
    'langauge, japanese, japan, culture'),

(94, 'Kappa Delta Chi Sorority, Inc.',
    'Kappa Delta Chi Sorority, Inc. is a sisterhood based on service to the community. ' +
    'This sisterhood has been nationally recognized as an organization that upholds the values of Unity, Honesty, Integrity, and Leadership.',
    'sisterhood, fraternity, hispanic, greek life, community'),

(95, 'Korean Student Association',
    'We are a Korean cultural student organization that promotes Korean culture through cultural, social, political, and communtiy service events.',
    'korean, culture, community service, community, diversity'),

(96, 'Leadership and Volunteerism',
    'Leadership and Volunteerism provides educational programming and opportunities for students to make a difference.',
    'leadership, volunteerism, community, personal development, volunteering'),

(97, 'Linguistics Club',
    'We enjoy talking about language with other interested people.',
    'language, social, voltuneerism'),

(98, 'Math Club',
    'We are a society for the promotion of and appreciation for the beauty of mathematics.',
    'math, stem, social'),

(99, 'Model United Nations',
    'We seek to understand the United Nations in a fun and engaging way. ' +
    'We imitate the work of the UN and aim to gain a deeper understanding of the work they do in the world.',
    'politics, activism, government, activism'),

(100, 'Music Club',
    'A community of students that enjoy music whether that be listening, talking about, playing, or learning about it.',
    'music, social, recreational, instruments'),

(101, 'Muslim Student Association',
    'A Muslim organization on campus dedicated to empowering Muslim leaders, raising Islamic awareness and appreciation, and unifying students.',
    'muslim, social, unite, friendly, community, cultural'),

(102, 'National Association of Black Journalists',
    'An organization advocating for journalists of color. They provide journalists with programs and services needed to be successful within their field',
    'social, recreational, friendly, community, cultural'),

(103, 'National Council of Teachers of English',
    'A professional student organization in the Jeannine Rainbolt College of Education aiming to create community among pre-service English teachers.',
    'professional, english, writing, teach, community'),

(104, 'National Gay Pilots Association',
    'The NGPA is the largest organization of lesbian, gay, bisexual, transgender, and queer aviation professionals and enthusiasts from around the world.',
    'build, support, unite, gay, pilot, fly, community'),

(105, 'National Medical Device Make-A-Thon',
    'A competition team dedicated to designing medical devices for OU 2025',
    'competition, medical, prosthetics, biomedical, engineer');
>>>>>>> Stashed changes


--Insert Data Values into Contact Table)--
INSERT INTO Contact(ContactID, OrganizationID, FirstName, LastName, Email, Phone, Address)
VALUES
(1,1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),

(2,2, 'Cassidy', 'Minihan', 'cassidy.h.minihan-1@ou.edu', 'N/A', 'N/A'),

(3,3, 'N/A', 'N/A', 'arrc-sac@ou.edu', '(405)-325-2871', '3190 Monitor Avenue Norman, OK 73019'),

(4,4, 'Maryam', 'Popal', 'maryam.popal-1@ou.edu', '(405)-937-9772', '2721 NW 160th St Terrace Edmond, OK 73013 United States'),

(5,5, 'Oghenekaro', 'Imieye', 'oghenekaro.o.imieye-1@ou.edu', '(405)-888-9637', '900 Asp Avenue, OMU Room 181 #147 Norman, OK 73019 USA'),

(6,6, 'N/A', 'N/A', 'africanwomensleague@gmail.com', 'N/A', '2500 Asp Ave Norman, OK 73019 USA'),

(7,7, 'N/A', 'N/A', 'ouafrobeatz@ou.edu', '2500 Asp Ave Norman, OK 73019 USA','(505)-504-0752'),

(8,8, 'N/A', 'N/A', 'mgjoyce@ou.edu', '(479)-366-6634', '14005 Canterbury Dr Edmond, Ok 73103 United States'),

(9,9, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),

(10,10, 'N/A', 'N/A', 'afrotc@ou.edu', '(405)-325-3211', '334 Cate Center Cate 4 Rm 405 Norman OK 73019 USA'),

(11,11, 'N/A', 'N/A', 'ouaxopres@gmail.com', '(832) 600-2465', '1115 College Ave Norman, OK 73072 United States'),

(12,12, 'N/A', 'N/A', 'N/A', 'N/A', '1700 Lexington Ave Norman, Ok 73069 United States');




