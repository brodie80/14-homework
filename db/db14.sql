DROP DATABASE IF EXISTS Dev_blogDB;
CREATE DATABASE Dev_blogDB;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
);
CREATE TABLE `blogPost` (
  `id` int NOT NULL AUTO_INCREMENT,
  `blogPosttext` varchar(255) NOT NULL,
  `blogPostdate` datetime NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
);