CREATE TABLE question
(
questionId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
votes INT DEFAULT 0,
topic VARCHAR(100) NOT NULL,
content VARCHAR(10000) NOT NULL,
asker VARCHAR(50) NOT NULL
date DATE NOT NULL,
);

CREATE TABLE answer
(
answerId SERIAL NOT NULL PRIMARY KEY,
questionId INT NOT NULL ,
votes INT DEFAULT 0,
content VARCHAR(1000) NOT NULL,
answerer VARCHAR(50) NOT NULL,
date DATE NOT NULL,
FOREIGN KEY (questionId )REFERENCES question(questionId)
);