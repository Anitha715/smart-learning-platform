-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2026 at 05:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `user_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookmark`
--

INSERT INTO `bookmark` (`user_id`, `playlist_id`) VALUES
('1tYQob6Kg0bPfw2N9BNk', 'OqHixmc0LripHkaFDtaA');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content_id`, `user_id`, `tutor_id`, `comment`, `date`) VALUES
('J65YxNMr34dLLUKb3eUE', 'R5hvEz7dCeO4YprJKX0B', '1tYQob6Kg0bPfw2N9BNk', 'w2ik9CtjUOXYfB5eh5wD', 'class very interesting', '2026-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` int(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `video` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `tutor_id`, `playlist_id`, `title`, `description`, `video`, `thumb`, `date`, `status`) VALUES
('MIgcpxRDVCzjjYaiuyBL', 'w2ik9CtjUOXYfB5eh5wD', 'w8d0j0zAGC42u54VPqSZ', 'Waht is Python ?', 'Python is a high-level programming language used for web development, data analysis, automation, and artificial intelligence.', 'L2HHzKCTkHpdQfRJUOhL.mp4', '5rUJkNBQhcBw5xFBcYZ4.jpg', '2026-02-28', 'active'),
('woiffBNnEukMSS4jZbNy', 'w2ik9CtjUOXYfB5eh5wD', 'OqHixmc0LripHkaFDtaA', 'What is UI/UX ?', 'UI/UX is the design of a product’s interface and experience to make it easy and pleasant for users.', 'OC4bszWBltf0nbAoXyBX.mp4', 'snMy72PcPmMMsLimLMAC.png', '2026-02-28', 'active'),
('n8aD11lKLuGKKpc0oqca', 'w2ik9CtjUOXYfB5eh5wD', 'ipjeOyrlNjhT3zOJh1Or', 'What is java ?', 'Java is a programming language used to develop web, mobile, and desktop applications.', 'jnAJkCjpfYpDtemTAJQ4.mp4', 'TCf0CsS1wtEVNLtAbXLp.jpg', '2026-02-28', 'active'),
('WnxWprMBnJXV94eUZlL1', 'w2ik9CtjUOXYfB5eh5wD', 'Hl3PKfJ6DfNOXg47O2Vw', 'What is CSS ?', 'CSS is a style sheet language used to design and control the layout, colors, and fonts of a web page.', 'HxfRmkpW7XJN3vVppAt4.mp4', 'M4BIBOIO1FiFfpyumneV.jpg', '2026-02-28', 'active'),
('R5hvEz7dCeO4YprJKX0B', 'w2ik9CtjUOXYfB5eh5wD', 'cSnFkZ134XU5eMoMaksm', 'What is HTML ?', 'HTML is a markup language used to create the structure and content of web pages.', 'UqD5VPglFkQBWmbdQlPp.mp4', 'i1nQA8ex9q0uGuy0PVmx.jpg', '2026-02-28', 'active'),
('gnBDMUcFcimMpjZbTC7E', 'w2ik9CtjUOXYfB5eh5wD', 'zEEPTRdchBCvKCdWqklW', 'What is JS ?', 'JavaScript is a programming language used to add interactivity and dynamic behavior to web pages.', 'NBnLUxXyFIAiay3NrFyd.mp4', 'rJx6lUbSKrNVm5VlV0Cu.jpg', '2026-02-28', 'active'),
('43SkwZpFv8KqAQaxHnQF', 'w2ik9CtjUOXYfB5eh5wD', 'j17LUd6gB29sDLVgWwOr', 'What is PHP ?', 'PHP is a server-side scripting language used to create dynamic and interactive web pages.', 'svmmnIJLlaJrRgZFVpwP.mp4', 'P25ZOp44pRxu9mNH8pIe.jpg', '2026-02-28', 'active'),
('Scyci34hi0zY23zIWJj8', 'w2ik9CtjUOXYfB5eh5wD', 'kzDGQalQy0CeHLdCAS8v', 'What is C++ ?', 'C++ is a programming language used to develop system software, applications, and games.', 'O0HRNSnc2CcpJnixtEqo.mp4', 'iA2sKmFmgjMvPk2LenX9.jpg', '2026-02-28', 'active'),
('4PrX5aCxIS2cV1AhwvHb', 'w2ik9CtjUOXYfB5eh5wD', 'mzt7gALcxqfqtf8F8sW7', 'What is C Programming ?', 'C is a programming language used to develop system software and applications.', 'UwOISACTOZRMvH741B8H.mp4', 'ka05naDARk6hUOB91kgK.jpg', '2026-02-28', 'active'),
('pYfz3SAZdJb2P0G9dAJN', 'w2ik9CtjUOXYfB5eh5wD', 'Ej5FsxLhvr8AuuZymfqj', 'What is SQL ?', 'SQL (Structured Query Language) is a programming language used to store, manage, and retrieve data from a database.', 'P4I2YnelF5nqgNSWKth4.mp4', 'I0kXGyBXdACTJBmB9yNO.jfif', '2026-02-28', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`user_id`, `tutor_id`, `content_id`) VALUES
('1tYQob6Kg0bPfw2N9BNk', 'w2ik9CtjUOXYfB5eh5wD', 'gnBDMUcFcimMpjZbTC7E'),
('1tYQob6Kg0bPfw2N9BNk', 'w2ik9CtjUOXYfB5eh5wD', 'woiffBNnEukMSS4jZbNy');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive',
  `category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `tutor_id`, `title`, `description`, `thumb`, `date`, `status`, `category`) VALUES
('w8d0j0zAGC42u54VPqSZ', 'w2ik9CtjUOXYfB5eh5wD', 'PYTHON', 'Python is a simple and easy programming language used to create websites, software, and automation.\r\n', 'Pjyk5eD3DXdZfwDpYi3k.jpg', '2026-02-28', 'active', 'PYTHON'),
('Hl3PKfJ6DfNOXg47O2Vw', 'w2ik9CtjUOXYfB5eh5wD', 'CSS', 'CSS is used to style and design the appearance of a webpage, like colors, fonts, and layout.', 'GH7gFJfplrQwe23fU1f1.jpg', '2026-02-28', 'active', 'CSS'),
('kzDGQalQy0CeHLdCAS8v', 'w2ik9CtjUOXYfB5eh5wD', 'C++', 'C++ is a powerful programming language used to develop software, games, and system applications.\r\n', 'cRo12yYD7uaRY7rj7x93.jpg', '2026-02-28', 'active', 'C++'),
('mzt7gALcxqfqtf8F8sW7', 'w2ik9CtjUOXYfB5eh5wD', 'C PROGRAMMING', 'C is a basic programming language used to develop system software and applications.\r\n', 'OTmubzEFKzaEZgQfT7xX.jpg', '2026-02-28', 'active', 'C PROGRAMMING'),
('cSnFkZ134XU5eMoMaksm', 'w2ik9CtjUOXYfB5eh5wD', 'HTML', 'HTML is used to create the structure and content of a web page.\r\n', 'EGRjAtA1Uj4ngT616Cxd.jpg', '2026-02-28', 'active', 'HTML'),
('j17LUd6gB29sDLVgWwOr', 'w2ik9CtjUOXYfB5eh5wD', 'PHP', 'PHP is a server-side scripting language used to create dynamic and interactive web pages.', '6aTfheZTRcBVFEcjYBaP.jpg', '2026-02-28', 'active', 'PHP'),
('zEEPTRdchBCvKCdWqklW', 'w2ik9CtjUOXYfB5eh5wD', 'JAVA SCRIPT', 'JavaScript is a programming language used to make web pages interactive and dynamic.', 'gDGSh7pQz3tGDzL1bKkn.jpg', '2026-02-28', 'active', 'JAVA SCRIPT'),
('OqHixmc0LripHkaFDtaA', 'w2ik9CtjUOXYfB5eh5wD', 'UI/UX', 'UI/UX focuses on designing attractive interfaces and improving user satisfaction while using an application or website.', 'aVDHh3eVAYC89q5EjVnk.png', '2026-02-28', 'active', 'UI/UX'),
('ipjeOyrlNjhT3zOJh1Or', 'w2ik9CtjUOXYfB5eh5wD', 'JAVA', 'Java is a versatile programming language used to build web, mobile, and desktop applications.\r\n', 'ZUFKfUut7McJijMklLKJ.jpg', '2026-02-28', 'active', 'Java'),
('Ej5FsxLhvr8AuuZymfqj', 'w2ik9CtjUOXYfB5eh5wD', 'SQL', 'SQL is a language used to store, manage, and retrieve data from a database.', 'nFBz10xoKlGSM5Voi4Et.jfif', '2026-02-28', 'active', 'SQL');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `course` varchar(50) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `option1` varchar(100) DEFAULT NULL,
  `option2` varchar(100) DEFAULT NULL,
  `option3` varchar(100) DEFAULT NULL,
  `option4` varchar(100) DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `course`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'SQL', 'What does SQL stand for?', 'Structured Query Language', 'Simple Query Language', 'Sequential Query Language', 'Standard Question Language', 'Structured Query Language'),
(2, 'SQL', 'Which SQL command is used to retrieve data?', 'SELECT', 'INSERT', 'UPDATE', 'DELETE', 'SELECT'),
(3, 'SQL', 'Which clause is used to filter records in SQL?', 'WHERE', 'ORDER BY', 'GROUP BY', 'HAVING', 'WHERE'),
(4, 'SQL', 'Which command is used to insert new data into a table?', 'INSERT', 'ADD', 'CREATE', 'PUT', 'INSERT'),
(5, 'SQL', 'Which SQL keyword is used to sort the result set?', 'ORDER BY', 'SORT', 'ARRANGE', 'FILTER', 'ORDER BY'),
(6, 'HTML', 'What does HTML stand for?', 'Hyper Text Markup Language', 'High Text Machine Language', 'Hyper Tool Multi Language', 'Home Tool Markup Language', 'Hyper Text Markup Language'),
(11, 'CSS', 'What does CSS stand for?', 'Cascading Style Sheets', 'Creative Style Sheets', 'Computer Style Sheets', 'Colorful Style Sheets', 'Cascading Style Sheets'),
(12, 'CSS', 'Which property is used to change text color?', 'color', 'text-color', 'font-color', 'background-color', 'color'),
(13, 'CSS', 'Which property is used to change background color?', 'background-color', 'bgcolor', 'color', 'background-style', 'background-color'),
(14, 'CSS', 'Which CSS property controls text size?', 'font-size', 'text-size', 'font-style', 'text-style', 'font-size'),
(15, 'CSS', 'How do you select an element with id \"demo\"?', '#demo', '.demo', 'demo', '*demo', '#demo'),
(16, 'Java', 'Java is a ___ language.', 'Programming', 'Markup', 'Styling', 'Database', 'Programming'),
(17, 'Java', 'Which keyword is used to create a class in Java?', 'class', 'ClassName', 'define', 'create', 'class'),
(18, 'Java', 'Which method is the entry point of a Java program?', 'main()', 'start()', 'run()', 'init()', 'main()'),
(19, 'Java', 'Which keyword is used to inherit a class?', 'extends', 'implements', 'inherits', 'super', 'extends'),
(20, 'Java', 'Which symbol is used to end a statement in Java?', ';', '.', ':', ',', ';'),
(21, 'HTML', 'What is the main purpose of HTML?', 'To structure web content', 'To style web pages', 'To manage databases', 'To create animations', 'To structure web content'),
(22, 'HTML', 'Who developed HTML?', 'Tim Berners-Lee', 'Bill Gates', 'Steve Jobs', 'Mark Zuckerberg', 'Tim Berners-Lee'),
(23, 'HTML', 'HTML is mainly used for?', 'Creating web pages', 'Designing logos', 'Editing videos', 'Managing servers', 'Creating web pages'),
(24, 'HTML', 'Which version of HTML introduced semantic elements?', 'HTML5', 'HTML 3.2', 'HTML 4.0', 'XHTML', 'HTML5'),
(25, 'HTML', 'HTML files are saved with which extension?', '.html', '.exe', '.doc', '.jpg', '.html'),
(26, 'PHP', 'What does PHP stand for?', 'Hypertext Preprocessor', 'Personal Home Page Processor', 'Private Home Page', 'Programming Home Page', 'Hypertext Preprocessor'),
(27, 'PHP', 'PHP is mainly used for?', 'Server-side scripting', 'Designing web pages', 'Creating databases', 'Editing images', 'Server-side scripting'),
(28, 'PHP', 'PHP files are executed on?', 'Server', 'Browser', 'Database', 'Compiler', 'Server'),
(29, 'PHP', 'Which symbol is used to represent variables in PHP?', '$', '#', '&', '@', '$'),
(30, 'PHP', 'PHP is commonly used with which database?', 'MySQL', 'Oracle', 'MongoDB', 'PostgreSQL', 'MySQL'),
(31, 'C Programming', 'C language was developed by?', 'Dennis Ritchie', 'James Gosling', 'Bjarne Stroustrup', 'Guido van Rossum', 'Dennis Ritchie'),
(32, 'C Programming', 'C is a ___ level language.', 'Middle level', 'Low level', 'High level', 'Machine level', 'Middle level'),
(33, 'C Programming', 'C language is mainly used for?', 'System programming', 'Web designing', 'Database management', 'Graphic designing', 'System programming'),
(34, 'C Programming', 'Which year was C language developed?', '1972', '1985', '1995', '2000', '1972'),
(35, 'C Programming', 'C language programs are executed using?', 'Compiler', 'Interpreter', 'Browser', 'Assembler', 'Compiler'),
(36, 'Python', 'Python was developed by?', 'Guido van Rossum', 'Dennis Ritchie', 'James Gosling', 'Bjarne Stroustrup', 'Guido van Rossum'),
(37, 'Python', 'Python is a ___ level programming language.', 'High level', 'Low level', 'Machine level', 'Assembly level', 'High level'),
(38, 'Python', 'Python is known for?', 'Simple syntax', 'Complex structure', 'Hardware programming', 'Database control', 'Simple syntax'),
(39, 'Python', 'Python programs are executed using?', 'Interpreter', 'Compiler', 'Browser', 'Server', 'Interpreter'),
(40, 'Python', 'Python is widely used in?', 'Data science', 'Only web design', 'Only gaming', 'Only networking', 'Data science'),
(41, 'JAVA SCRIPT', 'JavaScript is mainly used for?', 'Adding interactivity to web pages', 'Designing databases', 'Managing servers', 'Creating operating systems', 'Adding interactivity to web pages'),
(42, 'JAVA SCRIPT', 'JavaScript runs primarily on?', 'Web browser', 'Database', 'Compiler', 'Operating system', 'Web browser'),
(43, 'JAVA SCRIPT', 'JavaScript is a ___ side scripting language.', 'Client side', 'Server side only', 'Machine side', 'Hardware side', 'Client side'),
(44, 'JAVA SCRIPT', 'Which company developed JavaScript?', 'Netscape', 'Microsoft', 'Apple', 'IBM', 'Netscape'),
(45, 'JAVA SCRIPT', 'Java Script is commonly used with?', 'HTML and CSS', 'Only Python', 'Only Java', 'Only C', 'HTML and CSS'),
(46, 'UI/UX', 'What does UI stand for?', 'User Interface', 'User Interaction', 'Universal Interface', 'User Internet', 'User Interface'),
(47, 'UI/UX', 'What does UX stand for?', 'User Experience', 'User Extension', 'User Execution', 'User Example', 'User Experience'),
(48, 'UI/UX', 'UI mainly focuses on?', 'Visual design and layout', 'Server performance', 'Database structure', 'Programming logic', 'Visual design and layout'),
(49, 'UI/UX', 'UX mainly focuses on?', 'Overall user satisfaction', 'Color selection only', 'Font style only', 'Coding speed', 'Overall user satisfaction'),
(50, 'UI/UX', 'Which is important in UX design?', 'User research', 'Server hosting', 'Compiler design', 'Hardware setup', 'User research'),
(51, 'C++', 'C++ was developed by?', 'Bjarne Stroustrup', 'Dennis Ritchie', 'James Gosling', 'Guido van Rossum', 'Bjarne Stroustrup'),
(52, 'C++', 'C++ is an extension of which language?', 'C', 'Java', 'Python', 'Assembly', 'C'),
(53, 'C++', 'C++ supports which programming paradigm?', 'Object Oriented Programming', 'Markup Language', 'Styling Language', 'Database Language', 'Object Oriented Programming'),
(54, 'C++', 'C++ programs are translated using?', 'Compiler', 'Interpreter', 'Browser', 'Database', 'Compiler'),
(55, 'C++', 'C++ is mainly used for?', 'System and application development', 'Only web design', 'Only database design', 'Only networking', 'System and application development');

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`id`, `name`, `profession`, `email`, `password`, `image`) VALUES
('w2ik9CtjUOXYfB5eh5wD', 'Anitha', 'developer', 'Anitha@gmail.com', '32e9d389ede4a021467f51eea81dc2bde15a33ad', 'LT32fF1xS2V2NvcucrHv.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`) VALUES
('1tYQob6Kg0bPfw2N9BNk', 'Nithiya', 'Anitha@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'BT2sucwgskZ3M0Sql3GU.jpg'),
('5NwPXmjHlbY0zhjGes8T', 'Nithya', 'nithya@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'YcwH6YAvGpiHVWf8K4X1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
