-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 09 2019 г., 06:51
-- Версия сервера: 5.7.23
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `marketplace_demo`
--
CREATE DATABASE IF NOT EXISTS `marketplace_demo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `marketplace_demo`;

-- --------------------------------------------------------

--
-- Структура таблицы `category_course`
--

CREATE TABLE `category_course` (
  `id_category` int(10) UNSIGNED NOT NULL COMMENT 'id категории',
  `title` varchar(128) DEFAULT NULL COMMENT 'название категории',
  `description` varchar(300) DEFAULT 'empty description' COMMENT 'описание категории'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Категория (область) курса';

--
-- Дамп данных таблицы `category_course`
--

INSERT INTO `category_course` (`id_category`, `title`, `description`) VALUES
(1, 'Hard-Skills', '(англ. \"жесткие\" навыки) - профессиональные навыки, которым можно научить и которые можно измерить. Для обучения hard skills необходимо усвоить знания и инструкции, качество обучения можно проверить с помощью экзамена'),
(2, 'Soft-Skills', '(англ. «мягкие навыки») - связаны не с конкретным видом деятельности, а с коммуникациями для эффективного взаимодействия с коллегами, клиентами и партнерами'),
(3, 'Прочее', 'Навыки, которые сложно отнести к какой-либо конкретной категории');

-- --------------------------------------------------------

--
-- Структура таблицы `cource`
--

CREATE TABLE `cource` (
  `id_cource` int(10) UNSIGNED NOT NULL COMMENT 'id курса',
  `id_subcategory` int(10) UNSIGNED NOT NULL COMMENT 'подкатегория',
  `title` varchar(150) NOT NULL DEFAULT 'empty title' COMMENT 'название',
  `price` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'цена',
  `description` longtext COMMENT 'описание',
  `minidescription` longtext COMMENT 'миниописание',
  `rate_requirement` longtext COMMENT 'требования к курсу',
  `avatar` varchar(50) DEFAULT NULL COMMENT 'картинка курса'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Курс';

--
-- Дамп данных таблицы `cource`
--

INSERT INTO `cource` (`id_cource`, `id_subcategory`, `title`, `price`, `description`, `minidescription`, `rate_requirement`, `avatar`) VALUES
(1, 9, 'Точечные и интервальные оценки и их свойства', 500, 'В рамках курса будут рассмотрены основы математической статистики, а также современные методы прикладной статистики. Цель курса — научить правильно применять методы математической статистики к различным прикладным задачам.\r\nКаждая лекция сопровождается семинаром, на котором рассматриваются задачи по теме лекции, а также домашним заданием. Семинарские и домашние задания выполняются на языке R. В рамках семинарских и домашних заданий слушатели будут исследовать границы применимости статистических методов. Домашние задания также включают реальные практические задачи.\r\nВ рамках курса освещаются следующие темы: описательная статистика; точечные и интервальные оценки и их свойства; проверка статистических гипотез:критерии согласия, параметрические и непараметрические методы, критерии однородности и независимости; однофакторный дисперсионный анализ; множественная линейная регрессия; робастные регрессионные модели; бинарная регрессия; методы ресэмплирования; методы анализа выживаемости; байесовские методы.', 'В рамках курса будут рассмотрены основы математической статистики, а также современные методы прикладной статистики. Цель курса — научить правильно применять методы математической статистики к различным прикладным задачам', 'Должны быть прослушаны курсы математического анализа, комбинаторики, теории вероятностей\r\nУстановлена программа Rstudio', NULL),
(2, 10, 'Основы экономики', 0, 'Мой пиар менеджер - Карл Маркс!', '', 'В левой руке сникерс, в правой руке марс', NULL),
(3, 50, 'Управление временем', 5000, 'Тайм-менеджмент позволяет упорядочить рабочее и личное время в течение дня (недели, месяца) чтобы успевать делать все важные и нужные дела, не отвлекаясь на второстепенные или посторонние вопросы и проблемы.\r\nЭффективное планирование позволяет высвобождать для насыщенной и полноценной жизни колоссальные ресурсы времени.', 'Технология организации времени и повышения эффективности его использования.', '', NULL),
(4, 34, 'Наставление, тренировка, воодушевление', 10000, 'Отличие коучинга от инструктирования, наставничества, консультирования и психоанализа в том, что это прямое воздействие с немедленным улучшением эффективности и получением результата! Коучинг работает с настоящим и направлен на строительство будущего!\r\nКоучинг открывает перед человеком широкий выбор возможностей и фокусирует внимание на том, в какой точке человек находится в данный момент и что он готов сделать, чтобы попасть туда, где он хочет оказаться.\r\nВ процессе коучинга возможно осознать, какие ресурсы являются ограничениями, а какие ограничения могут быть одновременно и ресурсом. Освободившись от внутренних противоречий и обретя целостность, человек более осознанно движется к намеченной цели и открывает новые возможности.\r\nКоучинг — это возможность \"познать себя\", расти как личность, действовать эффективней и получать при этом удовольствие от процесса.\r\n', 'Обучение технологии, позволяющей человеку, отвечая на вопросы, лучше понять себя, свои желания, устремления, ограничивающие убеждения и страхи', NULL, NULL),
(5, 12, 'Монтажник напольных покрытий', 20000, 'Обучение на паркетчиков начнется для слушателей со знакомства с основными видами древесины, ее свойствами и пороками, видами напольных покрытий, их применимостью, а также способами и приемами механической обработки древесины и материалов.Укладка и монтаж паркета как и других видов напольных покрытий имеет свои сложности. Одним из важных этапов на курсе паркетчиков(столяров-паркетчиков) уделено изучению устройства паркетных полов, технологий устройства напольных покрытий различных типов. Обучение паркетчиков построено на освоении данной специальности и выполнении работ по обработке, укладке, монтажу напольных покрытий согласно требованиям, предъявляемым к их качеству.Внимание слушателей также будет акцентировано на изучении видов дефектов, возникающих в работе, причинах их появления, способах их устранения и, что особенно важно, способах их предупреждения. Главная задача курса – подготовить из слушателей настоящих специалистов, столяров-паркетчиков, способных выполнять свою работу высококачественно и профессионально. Учебная программа данного курса построена по специальной методике, которая помогает слушателям успешно усвоить учебный материал и получить определенный опыт практической работы.', 'Предлагаем Вам освоить специальность столяра-паркетчика и получить профессиональные знания и навыки, а также опыт непосредственной работы с различными видами напольных покрытий и их укладки и монтажа.', 'Данный учебный курс является базовым и не требует наличия каких-либо начальных знаний у слушателей в данной области', NULL),
(6, 48, 'Ситуационное лидерство', 15000, 'Пол Херси является всемирно признанным специалистом в области ситуационного руководства.\r\nКурс прошли более 10 000 000 менеджеров по всему миру в тысячах крупнейших компаний.\r\nМодель эффективна и легко применима на практике.\r\n\r\nЦелевая аудитория\r\nОпытные руководители — чтобы эффективно систематизировать управленческие знания и навыки.\r\nНачинающие руководители — чтобы получить хорошую основу для накопления управленческого опыта.\r\nБывшие специалисты — для успешной работы как с техническими проблемами, так и с людьми.\r\nРазвивающие новые направления — чтобы эффективно решать широкий спектр задач.\r\nСодержание тренинга\r\nПонятия «руководство», «эффективное руководство», «стили руководства».\r\n Определение и детализация задач, которые предстоит поставить перед подчиненными.\r\n Определение уровня готовности сотрудника к выполнению конкретной задачи.\r\n Распознавание директивного и поддерживающего поведения руководителя и четырех различных стилей руководства.\r\n Выбор стиля руководства, подходящего для конкретного сотрудника.\r\n Применение различных методов для повышения уровня готовности сотрудников к решению возникающих задач.\r\n Решение вопросов, связанных со снижением результативности деятельности сотрудников.\r\nРезультаты\r\nДля организаций:\r\nПовышение уровня эффективности выполнения поставленных задач.\r\nРаскрытие потенциала сотрудников.\r\nСнижение количества конфликтных ситуаций при взаимодействии с подчиненными.\r\nГрамотный подход к развитию подчиненных.\r\nПовышение уровня мотивации сотрудников.\r\nДля участников:\r\nБолее точная оценка сложившейся управленческой ситуации.\r\nЭффективный (с точки зрения как временных, так и эмоциональных затрат) выбор наиболее надежного стиля руководства для каждой конкретной ситуации взаимодействия с подчиненными.\r\nУмение принимать эффективные меры по повышению результативности работы сотрудников.\r\nУмение принимать адекватные меры при разрешении проблемных ситуаций с сотрудниками.', 'Пора без заумных фраз и сложных теорий научиться эффективно управлять своими сотрудниками и увидеть результат сразу! Возможно ли это за 2 дня? Ответ — ДА!', NULL, NULL),
(7, 36, 'Нетворкинг: как создавать связи для развития бизнеса', 7500, 'Наше окружение оказывает прямое влияние на наше развитие и прибыльность бизнеса, способствуют или тормозит достижение поставленных целей. Умение находить и выходить на нужных людей — это навык, который пригодится вам в любой точке мира.\r\n\r\nДля кого?\r\n\r\nРуководители организаций и подразделений;\r\nМенеджеры по продажам, маркетингу, PR, HR;\r\nФрилансеры.\r\nЧто я получу в итоге?\r\n\r\nЗнания и навыки установления и поддержания деловых контактов.\r\nСовершенствование своего стиля нетворкинга.\r\nПлан действий по созданию новых и поддержанию существующих контактов.\r\nРезультаты тренинга\r\n\r\nПо окончании тренинга участники:\r\n\r\nвыработают системный подход к созданию и развитию деловых контактов.\r\nнаучаться устанавливать контакт с клиентом в любых ситуациях.\r\nполучат развернутые представления о технологиях и составляющих нетворкинга.\r\nсоставят общий план развития отношений с клиентами.', 'Нетворкинг: как создавать связи для развития бизнеса', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `lesson`
--

CREATE TABLE `lesson` (
  `id_lesson` int(10) UNSIGNED NOT NULL COMMENT 'id урока',
  `id_course` int(10) UNSIGNED NOT NULL COMMENT 'id курса',
  `title` varchar(128) DEFAULT NULL COMMENT 'название урока',
  `number` int(3) UNSIGNED NOT NULL COMMENT 'номер урока',
  `start_datetime` datetime DEFAULT NULL COMMENT 'дата и время начала урока',
  `description` varchar(128) NOT NULL DEFAULT 'empty description' COMMENT 'описание урока',
  `title_hw` varchar(128) DEFAULT NULL COMMENT 'тема ДЗ',
  `description_hw` varchar(300) DEFAULT NULL COMMENT 'описание ДЗ',
  `finish_datetime` datetime DEFAULT NULL COMMENT 'дата и время окончания сдачи ДЗ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Урок курса';

-- --------------------------------------------------------

--
-- Структура таблицы `review`
--

CREATE TABLE `review` (
  `id_user` int(10) UNSIGNED NOT NULL COMMENT 'id пользователя (ученика)',
  `id_course` int(10) UNSIGNED NOT NULL COMMENT 'id курса',
  `title` varchar(50) DEFAULT NULL COMMENT 'Тема отзыва',
  `description` varchar(150) DEFAULT NULL COMMENT 'Описание отзыва',
  `rating` enum('1','2','3','4','5') NOT NULL COMMENT 'оценка курса',
  `date_time_rev` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'дата и время отзыва'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Отзыв студента о курсе';

--
-- Дамп данных таблицы `review`
--

INSERT INTO `review` (`id_user`, `id_course`, `title`, `description`, `rating`, `date_time_rev`) VALUES
(1, 2, 'Хорошо', 'Очень хорошо!', '4', '2019-06-08 22:59:59'),
(2, 1, 'Восхитительно', 'Наконец-то понял матстат!', '5', '2019-06-08 21:56:06'),
(3, 1, 'Непонятно', 'Плохо объясняет материал!', '3', '2019-06-08 22:59:59'),
(3, 2, 'Отлично', 'Все понял! Спасибо!', '5', '2019-06-08 22:59:59');

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `student_course`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `student_course` (
`course_title` varchar(150)
,`nickname` varchar(35)
,`id_user` int(10) unsigned
,`id_course` int(10) unsigned
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `student_subcategory_of_interest`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `student_subcategory_of_interest` (
`id_user` int(10) unsigned
,`id_subcategory` int(10) unsigned
,`nickname` varchar(35)
,`title_subcategory` varchar(128)
);

-- --------------------------------------------------------

--
-- Структура таблицы `subcategory_course`
--

CREATE TABLE `subcategory_course` (
  `id_subcategory` int(10) UNSIGNED NOT NULL COMMENT 'id подкатегории',
  `id_category` int(10) UNSIGNED NOT NULL COMMENT 'id категории',
  `title` varchar(128) NOT NULL COMMENT 'название подкатегории',
  `description` varchar(128) NOT NULL DEFAULT 'empty description' COMMENT 'описание подкатегории'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Субкатегория (подобласть) курса';

--
-- Дамп данных таблицы `subcategory_course`
--

INSERT INTO `subcategory_course` (`id_subcategory`, `id_category`, `title`, `description`) VALUES
(1, 1, 'Архитектура', 'empty description'),
(2, 1, 'Биологические науки', 'empty description'),
(3, 1, 'Древние языки', 'empty description'),
(4, 1, 'Иностранные языки', 'empty description'),
(5, 1, 'Информатика', 'empty description'),
(6, 1, 'Искусство и дизайн', 'empty description'),
(7, 1, 'История', 'empty description'),
(8, 1, 'Литература', 'empty description'),
(9, 1, 'Математическая статистика', 'empty description'),
(10, 1, 'Основы экономики', 'empty description'),
(11, 1, 'Правоведение', 'empty description'),
(12, 1, 'Строительство', 'empty description'),
(13, 1, 'Физика', 'empty description'),
(14, 1, 'Философия', 'empty description'),
(15, 1, 'Химия', 'empty description'),
(19, 2, 'Базовые навыки продаж', 'empty description'),
(20, 2, 'Ведение переговоров', 'empty description'),
(21, 2, 'Ведение совещаний', 'empty description'),
(22, 2, 'Выработка и принятие решений', 'empty description'),
(23, 2, 'Делегирование', 'empty description'),
(24, 2, 'Деловое письмо', 'empty description'),
(25, 2, 'Использование обратной связи', 'empty description'),
(26, 2, 'Клиентоориентированность', 'empty description'),
(27, 2, 'Командная работа', 'empty description'),
(28, 2, 'Контроль реализации задач', 'empty description'),
(29, 2, 'Креативное мышление', 'empty description'),
(30, 2, 'Логическое мышление', 'empty description'),
(31, 2, 'Мотивирование', 'empty description'),
(32, 2, 'Наставничество', 'empty description'),
(33, 2, 'Менторинг', 'empty description'),
(34, 2, 'Коучинг', 'empty description'),
(35, 2, 'Нацеленность на результат', 'empty description'),
(36, 2, 'Построение и поддержание бизнес-отношений', 'empty description'),
(37, 2, 'Планирование', 'empty description'),
(38, 2, 'Планирование и целеполагание', 'empty description'),
(39, 2, 'Подача обратной связи', 'empty description'),
(40, 2, 'Поиск и анализ информации', 'empty description'),
(41, 2, 'Постановка задач сотрудникам', 'empty description'),
(42, 2, 'Проведение презентаций', 'empty description'),
(43, 2, 'Проектное мышление', 'empty description'),
(44, 2, 'Публичные выступления', 'empty description'),
(45, 2, 'Рефлексия', 'empty description'),
(46, 2, 'Самопрезентация', 'empty description'),
(47, 2, 'Системное мышление', 'empty description'),
(48, 2, 'Ситуационное руководство и лидерство', 'empty description'),
(49, 2, 'Структурное мышление', 'empty description'),
(50, 2, 'Тайм-менеджмент', 'empty description'),
(51, 2, 'Тактическое и стратегическое мышление (для руководителей)', 'empty description'),
(52, 2, 'Убеждение и аргументация', 'empty description'),
(53, 2, 'Умение слушать', 'empty description'),
(54, 2, 'Управление изменениями', 'empty description'),
(55, 2, 'Управление исполнением', 'empty description'),
(56, 2, 'Управление проектами', 'empty description'),
(57, 2, 'Управление собственным развитием', 'empty description'),
(58, 2, 'Управление стрессом', 'empty description'),
(59, 2, 'Управление эмоциями', 'empty description');

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `teacher_and_rating`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `teacher_and_rating` (
`course_title` varchar(150)
,`id_user` int(10) unsigned
,`nickname` varchar(35)
,`rating` enum('1','2','3','4','5')
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `teacher_course`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `teacher_course` (
`course_title` varchar(150)
,`nickname` varchar(35)
,`id_user` int(10) unsigned
,`id_course` int(10) unsigned
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `teacher_subcategory_of_interest`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `teacher_subcategory_of_interest` (
`id_user` int(10) unsigned
,`id_subcategory` int(10) unsigned
,`nickname` varchar(35)
,`title_subcategory` varchar(128)
);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL COMMENT 'Электронная почта',
  `password` varchar(16) DEFAULT NULL COMMENT 'Пароль',
  `date_reg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата регистрации',
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `sex` enum('М','Ж') NOT NULL,
  `nickname` varchar(35) DEFAULT NULL,
  `avatar` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Пользователь';

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id_user`, `email`, `password`, `date_reg`, `name`, `surname`, `sex`, `nickname`, `avatar`) VALUES
(1, 'test@mail.ru', 'testpass', '2019-06-08 18:12:27', 'Павел', 'Гончаренко', 'М', 'Павел Гончаренко', ''),
(2, 'two@mail.ru', 'twopass', '2019-06-08 21:50:01', 'Валерий', 'Максимов', 'М', 'Валеронище', ''),
(3, 'three@mail.ru', 'threepass', '2019-06-08 21:50:01', 'Пакет', 'Бананов', 'М', 'Мягкий внутри', ''),
(4, 'wadg@mail.ru', 'fiusdsva3', '2019-06-09 03:00:38', 'Петр', 'Сублиматов', 'М', 'Петр Сублиматов', ''),
(5, 'jardin@mail.ru', '3refrgs4', '2019-06-09 03:00:38', 'Галина', 'Растворимова', 'Ж', 'Галина Растворимова', ''),
(6, 'colombia@mail.ru', 'vg5ri862g', '2019-06-09 03:00:38', 'Анна', 'Кремниева', 'Ж', 'Анна Кремниева', ''),
(7, 'medellin@mail.ru', 'blle5uhq2', '2019-06-09 03:00:38', 'Дуэйн', 'Джонсон', 'М', 'Скала', ''),
(8, 'freeze@mail.ru', 'g7n3spa9r', '2019-06-09 03:00:38', 'Яна', 'Гречкина', 'Ж', 'Яна Гречкина', '');

-- --------------------------------------------------------

--
-- Структура таблицы `user_course`
--

CREATE TABLE `user_course` (
  `id_user` int(10) UNSIGNED NOT NULL COMMENT 'id преподавателя',
  `id_course` int(10) UNSIGNED NOT NULL COMMENT 'id курса',
  `status_user` enum('Пройден','В процессе','Преподавал','Обучает') NOT NULL COMMENT 'Статус пользователя к курсу'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Промежуточная преподаватель - курс';

--
-- Дамп данных таблицы `user_course`
--

INSERT INTO `user_course` (`id_user`, `id_course`, `status_user`) VALUES
(1, 1, 'Преподавал'),
(2, 1, 'Пройден'),
(3, 1, 'В процессе'),
(2, 2, 'Преподавал'),
(3, 2, 'Пройден'),
(1, 2, 'Пройден'),
(7, 5, 'Преподавал'),
(6, 4, 'Преподавал'),
(8, 3, 'Преподавал'),
(2, 3, 'Пройден'),
(2, 4, 'Пройден'),
(3, 5, 'Пройден'),
(4, 1, 'Пройден'),
(4, 4, 'Пройден'),
(5, 2, 'Пройден'),
(5, 3, 'Пройден'),
(6, 1, 'Пройден'),
(6, 3, 'Пройден'),
(7, 2, 'Пройден'),
(7, 4, 'Пройден'),
(8, 1, 'Пройден'),
(8, 5, 'Пройден'),
(8, 6, 'В процессе'),
(7, 7, 'В процессе'),
(1, 7, 'В процессе'),
(2, 6, 'В процессе'),
(4, 7, 'В процессе'),
(5, 6, 'В процессе'),
(6, 6, 'Обучает'),
(2, 7, 'Обучает');

-- --------------------------------------------------------

--
-- Структура таблицы `user_lesson`
--

CREATE TABLE `user_lesson` (
  `id_user` int(11) UNSIGNED NOT NULL COMMENT 'id пользователя',
  `id_lesson` int(11) UNSIGNED NOT NULL COMMENT 'id урока',
  `grade` enum('Зачет','Незачет') DEFAULT NULL COMMENT 'Оценка за ДЗ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Смежная Пользователь - Урок';

-- --------------------------------------------------------

--
-- Структура таблицы `user_subcategory`
--

CREATE TABLE `user_subcategory` (
  `id_user` int(10) UNSIGNED NOT NULL COMMENT 'id пользователя',
  `id_subcategory` int(10) UNSIGNED NOT NULL COMMENT 'id подкатегории',
  `user_type` enum('Ученик','Преподаватель') NOT NULL COMMENT '1-ученик, 2-преподаватель'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Промежуточная пользователь-подкатегория';

--
-- Дамп данных таблицы `user_subcategory`
--

INSERT INTO `user_subcategory` (`id_user`, `id_subcategory`, `user_type`) VALUES
(4, 20, 'Ученик'),
(4, 8, 'Ученик'),
(6, 58, 'Ученик'),
(7, 2, 'Ученик'),
(7, 7, 'Ученик'),
(3, 48, 'Ученик'),
(5, 8, 'Ученик'),
(3, 53, 'Ученик'),
(1, 28, 'Ученик'),
(4, 44, 'Ученик'),
(6, 41, 'Ученик'),
(2, 47, 'Ученик'),
(4, 31, 'Ученик'),
(6, 54, 'Ученик'),
(6, 59, 'Ученик'),
(6, 9, 'Ученик'),
(2, 54, 'Ученик'),
(3, 55, 'Ученик'),
(4, 32, 'Ученик'),
(7, 45, 'Ученик'),
(1, 37, 'Ученик'),
(2, 22, 'Ученик'),
(4, 53, 'Ученик'),
(6, 22, 'Ученик'),
(1, 53, 'Ученик'),
(3, 45, 'Ученик'),
(1, 34, 'Ученик'),
(4, 42, 'Ученик'),
(3, 42, 'Ученик'),
(8, 54, 'Ученик'),
(5, 28, 'Ученик'),
(3, 33, 'Ученик'),
(8, 58, 'Ученик'),
(2, 45, 'Ученик'),
(4, 37, 'Ученик'),
(6, 53, 'Ученик'),
(1, 1, 'Ученик'),
(7, 3, 'Ученик'),
(4, 15, 'Ученик'),
(7, 35, 'Ученик'),
(6, 56, 'Ученик'),
(2, 2, 'Ученик'),
(1, 8, 'Ученик'),
(5, 55, 'Ученик'),
(5, 40, 'Ученик'),
(4, 50, 'Ученик'),
(1, 9, 'Преподаватель'),
(2, 10, 'Преподаватель'),
(2, 36, 'Преподаватель'),
(6, 34, 'Преподаватель'),
(6, 48, 'Преподаватель'),
(7, 12, 'Преподаватель'),
(8, 50, 'Преподаватель'),
(1, 1, 'Преподаватель'),
(1, 2, 'Преподаватель'),
(1, 24, 'Преподаватель'),
(2, 1, 'Преподаватель'),
(2, 55, 'Преподаватель'),
(3, 24, 'Преподаватель'),
(3, 31, 'Преподаватель'),
(3, 32, 'Преподаватель'),
(3, 38, 'Преподаватель'),
(5, 1, 'Преподаватель'),
(5, 2, 'Преподаватель'),
(5, 8, 'Преподаватель'),
(5, 48, 'Преподаватель'),
(5, 49, 'Преподаватель'),
(5, 59, 'Преподаватель'),
(6, 13, 'Преподаватель'),
(6, 22, 'Преподаватель'),
(7, 37, 'Преподаватель'),
(7, 41, 'Преподаватель'),
(7, 48, 'Преподаватель'),
(7, 50, 'Преподаватель'),
(7, 57, 'Преподаватель'),
(8, 40, 'Преподаватель');

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `view_cat_subcat`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `view_cat_subcat` (
`category_title` varchar(128)
,`subcategory_title` varchar(128)
,`id_category` int(10) unsigned
,`id_subcategory` int(10) unsigned
);

-- --------------------------------------------------------

--
-- Структура для представления `student_course`
--
DROP TABLE IF EXISTS `student_course`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `student_course`  AS  select `cource`.`title` AS `course_title`,`user`.`nickname` AS `nickname`,`user`.`id_user` AS `id_user`,`user_course`.`id_course` AS `id_course` from ((`user_course` join `cource`) join `user`) where ((`user_course`.`id_course` = `cource`.`id_cource`) and ((`user_course`.`status_user` = 'В процессе') or (`user_course`.`status_user` = 'Пройден')) and (`user`.`id_user` = `user_course`.`id_user`)) ;

-- --------------------------------------------------------

--
-- Структура для представления `student_subcategory_of_interest`
--
DROP TABLE IF EXISTS `student_subcategory_of_interest`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `student_subcategory_of_interest`  AS  select `user_subcategory`.`id_user` AS `id_user`,`user_subcategory`.`id_subcategory` AS `id_subcategory`,`user`.`nickname` AS `nickname`,`subcategory_course`.`title` AS `title_subcategory` from ((`user_subcategory` join `user`) join `subcategory_course`) where ((`user_subcategory`.`id_user` = `user`.`id_user`) and (`user_subcategory`.`id_subcategory` = `subcategory_course`.`id_subcategory`) and (`user_subcategory`.`user_type` = 'Ученик')) ;

-- --------------------------------------------------------

--
-- Структура для представления `teacher_and_rating`
--
DROP TABLE IF EXISTS `teacher_and_rating`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `teacher_and_rating`  AS  select `cource`.`title` AS `course_title`,`teacher_course`.`id_user` AS `id_user`,`teacher_course`.`nickname` AS `nickname`,`review`.`rating` AS `rating` from ((`cource` join `teacher_course`) join `review`) where ((`review`.`id_course` = `cource`.`id_cource`) and (`teacher_course`.`id_course` = `cource`.`id_cource`)) ;

-- --------------------------------------------------------

--
-- Структура для представления `teacher_course`
--
DROP TABLE IF EXISTS `teacher_course`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `teacher_course`  AS  select `cource`.`title` AS `course_title`,`user`.`nickname` AS `nickname`,`user`.`id_user` AS `id_user`,`user_course`.`id_course` AS `id_course` from ((`user_course` join `cource`) join `user`) where ((`user_course`.`id_course` = `cource`.`id_cource`) and ((`user_course`.`status_user` = 'Преподавал') or (`user_course`.`status_user` = 'Обучает')) and (`user`.`id_user` = `user_course`.`id_user`)) ;

-- --------------------------------------------------------

--
-- Структура для представления `teacher_subcategory_of_interest`
--
DROP TABLE IF EXISTS `teacher_subcategory_of_interest`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `teacher_subcategory_of_interest`  AS  select `user_subcategory`.`id_user` AS `id_user`,`user_subcategory`.`id_subcategory` AS `id_subcategory`,`user`.`nickname` AS `nickname`,`subcategory_course`.`title` AS `title_subcategory` from ((`user_subcategory` join `user`) join `subcategory_course`) where ((`user_subcategory`.`id_user` = `user`.`id_user`) and (`user_subcategory`.`id_subcategory` = `subcategory_course`.`id_subcategory`) and (`user_subcategory`.`user_type` = 'Преподаватель')) ;

-- --------------------------------------------------------

--
-- Структура для представления `view_cat_subcat`
--
DROP TABLE IF EXISTS `view_cat_subcat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `view_cat_subcat`  AS  select `category_course`.`title` AS `category_title`,`subcategory_course`.`title` AS `subcategory_title`,`category_course`.`id_category` AS `id_category`,`subcategory_course`.`id_subcategory` AS `id_subcategory` from (`category_course` join `subcategory_course`) where (`subcategory_course`.`id_category` = `category_course`.`id_category`) ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category_course`
--
ALTER TABLE `category_course`
  ADD PRIMARY KEY (`id_category`);

--
-- Индексы таблицы `cource`
--
ALTER TABLE `cource`
  ADD PRIMARY KEY (`id_cource`),
  ADD KEY `FK_cource_subcategory_course` (`id_subcategory`);

--
-- Индексы таблицы `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id_lesson`),
  ADD KEY `FK_lesson_cource` (`id_course`);

--
-- Индексы таблицы `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id_user`,`id_course`),
  ADD KEY `FK_review_cource` (`id_course`),
  ADD KEY `FK_review_user` (`id_user`);

--
-- Индексы таблицы `subcategory_course`
--
ALTER TABLE `subcategory_course`
  ADD PRIMARY KEY (`id_subcategory`),
  ADD KEY `FK_subcategory_course_category_course` (`id_category`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `Индекс 2` (`email`);

--
-- Индексы таблицы `user_course`
--
ALTER TABLE `user_course`
  ADD KEY `FK_user-course_user` (`id_user`),
  ADD KEY `FK_user-course_cource` (`id_course`);

--
-- Индексы таблицы `user_lesson`
--
ALTER TABLE `user_lesson`
  ADD KEY `FK_user_lesson_user` (`id_user`),
  ADD KEY `FK_user_lesson_lesson` (`id_lesson`);

--
-- Индексы таблицы `user_subcategory`
--
ALTER TABLE `user_subcategory`
  ADD KEY `FK_user_subcategory_user` (`id_user`),
  ADD KEY `FK_user_subcategory_subcategory_course` (`id_subcategory`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category_course`
--
ALTER TABLE `category_course`
  MODIFY `id_category` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id категории', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `cource`
--
ALTER TABLE `cource`
  MODIFY `id_cource` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id курса', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id_lesson` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id урока';

--
-- AUTO_INCREMENT для таблицы `subcategory_course`
--
ALTER TABLE `subcategory_course`
  MODIFY `id_subcategory` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id подкатегории', AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `cource`
--
ALTER TABLE `cource`
  ADD CONSTRAINT `FK_cource_subcategory_course` FOREIGN KEY (`id_subcategory`) REFERENCES `subcategory_course` (`id_subcategory`);

--
-- Ограничения внешнего ключа таблицы `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `FK_lesson_cource` FOREIGN KEY (`id_course`) REFERENCES `cource` (`id_cource`);

--
-- Ограничения внешнего ключа таблицы `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_review_cource` FOREIGN KEY (`id_course`) REFERENCES `cource` (`id_cource`),
  ADD CONSTRAINT `FK_review_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Ограничения внешнего ключа таблицы `subcategory_course`
--
ALTER TABLE `subcategory_course`
  ADD CONSTRAINT `FK_subcategory_course_category_course` FOREIGN KEY (`id_category`) REFERENCES `category_course` (`id_category`);

--
-- Ограничения внешнего ключа таблицы `user_course`
--
ALTER TABLE `user_course`
  ADD CONSTRAINT `FK_user-course_cource` FOREIGN KEY (`id_course`) REFERENCES `cource` (`id_cource`),
  ADD CONSTRAINT `FK_user-course_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Ограничения внешнего ключа таблицы `user_lesson`
--
ALTER TABLE `user_lesson`
  ADD CONSTRAINT `FK_user_lesson_lesson` FOREIGN KEY (`id_lesson`) REFERENCES `lesson` (`id_lesson`),
  ADD CONSTRAINT `FK_user_lesson_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Ограничения внешнего ключа таблицы `user_subcategory`
--
ALTER TABLE `user_subcategory`
  ADD CONSTRAINT `FK_user_subcategory_subcategory_course` FOREIGN KEY (`id_subcategory`) REFERENCES `subcategory_course` (`id_subcategory`),
  ADD CONSTRAINT `FK_user_subcategory_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
