-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 19 2024 г., 09:41
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tenisbd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `administartor_turnira`
--

CREATE TABLE `administartor_turnira` (
  `id_Admina` int(11) NOT NULL,
  `Familia` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Otchestvo` varchar(50) NOT NULL,
  `Login` varchar(50) NOT NULL,
  `Parol` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `administartor_turnira`
--

INSERT INTO `administartor_turnira` (`id_Admina`, `Familia`, `Name`, `Otchestvo`, `Login`, `Parol`) VALUES
(1, 'Багров', 'Андрей', 'Алексеевич', 'AdreyB@gmail.com', 'Adrey5625TAd'),
(2, 'Попов', 'Алексей', 'Сергеевич', 'PopovAleksey@gmail.com', 'PopovAParol234'),
(3, 'Курятников', 'Игорь', 'Олегович', 'Kurkat34725@gmail.com', 'Terket3572'),
(4, 'Харитонов', 'Иван', 'Николаевич', 'Xoriton345@gmail.com', 'teuywteufdsf4345');

-- --------------------------------------------------------

--
-- Структура таблицы `matchbd`
--

CREATE TABLE `matchbd` (
  `id_Matcha` int(11) NOT NULL,
  `Data_Provedenia` date NOT NULL,
  `id_Turnira` int(11) NOT NULL,
  `Rezultat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `matchbd`
--

INSERT INTO `matchbd` (`id_Matcha`, `Data_Provedenia`, `id_Turnira`, `Rezultat`) VALUES
(1, '2024-03-20', 1, '3:0'),
(2, '2024-03-21', 1, '3:2');

-- --------------------------------------------------------

--
-- Структура таблицы `matchu_ychastniki`
--

CREATE TABLE `matchu_ychastniki` (
  `id_Matcha` int(11) NOT NULL,
  `id_Ychastnika` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `matchu_ychastniki`
--

INSERT INTO `matchu_ychastniki` (`id_Matcha`, `id_Ychastnika`) VALUES
(1, 1),
(1, 2),
(2, 4),
(2, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `reiting_igroka`
--

CREATE TABLE `reiting_igroka` (
  `id_Reitinga` int(11) NOT NULL,
  `Mesto_v_retinge` int(11) NOT NULL,
  `id_Ychastnika` int(11) NOT NULL,
  `Kol_vo_Ochkov` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `reiting_igroka`
--

INSERT INTO `reiting_igroka` (`id_Reitinga`, `Mesto_v_retinge`, `id_Ychastnika`, `Kol_vo_Ochkov`) VALUES
(1, 1, 1, 500),
(2, 2, 2, 480),
(3, 3, 5, 430),
(4, 4, 4, 400);

-- --------------------------------------------------------

--
-- Структура таблицы `turnirbd`
--

CREATE TABLE `turnirbd` (
  `id_Turnira` int(11) NOT NULL,
  `Nazvanie` varchar(150) NOT NULL,
  `Strana_Provedenia` varchar(100) NOT NULL,
  `Gorod_Provedenia` varchar(100) NOT NULL,
  `Data_Nachala` date NOT NULL,
  `Data_Okonchania` date NOT NULL,
  `Prizovoy_Fond` int(11) NOT NULL,
  `id_Admina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `turnirbd`
--

INSERT INTO `turnirbd` (`id_Turnira`, `Nazvanie`, `Strana_Provedenia`, `Gorod_Provedenia`, `Data_Nachala`, `Data_Okonchania`, `Prizovoy_Fond`, `id_Admina`) VALUES
(1, 'Федеральный турнир в Катовице', 'Польша', 'Катовица', '2024-03-19', '2024-03-23', 400000, 1),
(2, 'Международный турнир в Москве', 'Россия', 'Москва', '2024-04-03', '2024-04-09', 150000, 1),
(3, 'Международный турнир в Чехии', 'Чехия', 'Прага', '2024-05-21', '2024-05-24', 200000, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `ychastniki`
--

CREATE TABLE `ychastniki` (
  `id_Ychastnika` int(11) NOT NULL,
  `Familia` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Otchaestvo` varchar(50) NOT NULL,
  `Data_Rozdenia` date NOT NULL,
  `Strana` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `ychastniki`
--

INSERT INTO `ychastniki` (`id_Ychastnika`, `Familia`, `Name`, `Otchaestvo`, `Data_Rozdenia`, `Strana`) VALUES
(1, 'Домашенко', 'Александр', 'Максимович', '2014-03-11', 'Россия'),
(2, 'Самарин', 'Алексей', 'Сергеевич', '2014-01-16', 'Россия'),
(3, 'Энди', 'Маррей', 'Грейджоиин', '2014-04-11', 'США'),
(4, 'Андре', 'Агасси', 'Дженкинс', '2014-05-31', 'США'),
(5, 'Надаль', 'Рафаэль', 'Генрирович', '2014-07-24', 'Испания');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `administartor_turnira`
--
ALTER TABLE `administartor_turnira`
  ADD PRIMARY KEY (`id_Admina`);

--
-- Индексы таблицы `matchbd`
--
ALTER TABLE `matchbd`
  ADD PRIMARY KEY (`id_Matcha`),
  ADD KEY `id_Turnira` (`id_Turnira`);

--
-- Индексы таблицы `matchu_ychastniki`
--
ALTER TABLE `matchu_ychastniki`
  ADD KEY `id_Matcha` (`id_Matcha`),
  ADD KEY `id_Ychastnika` (`id_Ychastnika`);

--
-- Индексы таблицы `reiting_igroka`
--
ALTER TABLE `reiting_igroka`
  ADD PRIMARY KEY (`id_Reitinga`),
  ADD KEY `id_Ychastnika` (`id_Ychastnika`);

--
-- Индексы таблицы `turnirbd`
--
ALTER TABLE `turnirbd`
  ADD PRIMARY KEY (`id_Turnira`),
  ADD KEY `id_Admina` (`id_Admina`);

--
-- Индексы таблицы `ychastniki`
--
ALTER TABLE `ychastniki`
  ADD PRIMARY KEY (`id_Ychastnika`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `administartor_turnira`
--
ALTER TABLE `administartor_turnira`
  MODIFY `id_Admina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `matchbd`
--
ALTER TABLE `matchbd`
  MODIFY `id_Matcha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `reiting_igroka`
--
ALTER TABLE `reiting_igroka`
  MODIFY `id_Reitinga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `turnirbd`
--
ALTER TABLE `turnirbd`
  MODIFY `id_Turnira` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `ychastniki`
--
ALTER TABLE `ychastniki`
  MODIFY `id_Ychastnika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `matchbd`
--
ALTER TABLE `matchbd`
  ADD CONSTRAINT `matchbd_ibfk_1` FOREIGN KEY (`id_Turnira`) REFERENCES `turnirbd` (`id_Turnira`);

--
-- Ограничения внешнего ключа таблицы `matchu_ychastniki`
--
ALTER TABLE `matchu_ychastniki`
  ADD CONSTRAINT `matchu_ychastniki_ibfk_1` FOREIGN KEY (`id_Matcha`) REFERENCES `matchbd` (`id_Matcha`),
  ADD CONSTRAINT `matchu_ychastniki_ibfk_2` FOREIGN KEY (`id_Ychastnika`) REFERENCES `ychastniki` (`id_Ychastnika`);

--
-- Ограничения внешнего ключа таблицы `reiting_igroka`
--
ALTER TABLE `reiting_igroka`
  ADD CONSTRAINT `reiting_igroka_ibfk_1` FOREIGN KEY (`id_Ychastnika`) REFERENCES `ychastniki` (`id_Ychastnika`);

--
-- Ограничения внешнего ключа таблицы `turnirbd`
--
ALTER TABLE `turnirbd`
  ADD CONSTRAINT `turnirbd_ibfk_1` FOREIGN KEY (`id_Admina`) REFERENCES `administartor_turnira` (`id_Admina`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
