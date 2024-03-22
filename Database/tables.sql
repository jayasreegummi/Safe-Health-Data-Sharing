create database SeSPHR;

use SeSPHR;



CREATE TABLE `doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `pass` text,
  `email` text,
  `mobile` text,
  `addr` text,
  `dob` text,
  `gender` text,
  `pin` text,
  `location` text,
  `imagess` longblob,
  `status` text,
  `role` text,
  `hospital` text,
  PRIMARY KEY (`id`)
);

CREATE TABLE `healthcare_provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `pass` text,
  `email` text,
  `mobile` text,
  `addr` text,
  `dob` text,
  `gender` text,
  `pin` text,
  `location` text,
  `imagess` longblob,
  `status` text,
  PRIMARY KEY (`id`)
);

CREATE TABLE `healthcare_server` (
  `name` text,
  `pass` text
);

INSERT INTO `healthcare_server` VALUES ('server','server');

CREATE TABLE `hkas_key_req` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` text,
  `patient_name` text,
  `en_key` text,
  `key_permission` text,
  PRIMARY KEY (`id`)
);

CREATE TABLE `hkas_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text,
  `patient` text,
  `provider` text,
  `doctor` text,
  `status` text,
  PRIMARY KEY (`id`)
);

CREATE TABLE `hs_access_req` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor` text,
  `patient_name` text,
  `provider` text,
  `doc_per` text,
  `details_per` text,
  PRIMARY KEY (`id`)
);

CREATE TABLE `key_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor` text,
  `patient_name` text,
  `provider` text,
  `sk` text,
  PRIMARY KEY (`id`)
);

CREATE TABLE `patient_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_name` text,
  `blood_group` text,
  `disease` text,
  `age` text,
  `dob` text,
  `gender` text,
  `email` text,
  `mobile` text,
  `address` text,
  `p_desc` text,
  `desc_trap` text,
  `desc_sk` text,
  `dt` text,
  `downer` text,
  `des_rank` text,
  `hospital` text,
  `doctor` text,
  `en_key` text,
  PRIMARY KEY (`id`)
);

CREATE TABLE `patient_details_backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_name` text,
  `blood_group` text,
  `disease` text,
  `age` text,
  `dob` text,
  `gender` text,
  `email` text,
  `mobile` text,
  `address` text,
  `p_desc` text,
  `desc_trap` text,
  `desc_sk` text,
  `dt` text,
  `downer` text,
  `hospital` text,
  `doctor` text,
  `en_key` text,
  PRIMARY KEY (`id`)
);

CREATE TABLE `patient_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient` text,
  `provider` text,
  `doctor` text,
  `report` text,
  `status` text,
  PRIMARY KEY (`id`)
);

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text,
  `fname` text,
  `task` text,
  `dt` text,
  PRIMARY KEY (`id`)
);

