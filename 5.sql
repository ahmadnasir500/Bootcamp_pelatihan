create database count;
use count;
create table tb_caleg (id int(5) AUTO_INCREMENT,name varchar(30),id_partai int(5),earned_vote int(5),primary key(id));
create table tb_partai(id int(5) AUTO_INCREMENT,name varchar(50),primary key(id));
insert into tb_caleg values("1","Sera","2","100");
insert into tb_caleg values("2","Dobleh","1","99");
insert into tb_partai values("1","Cilacap Santai");
insert into tb_partai values("2","Cilacap Sejahtera");

-- sql 1
select * from tb_caleg;
select * from tb_partai;
-- sql 2
INSERT into tb_partai(name) VALUES("Cilacap Aman");
-- sql 3
UPDATE tb_partai set name="Cilacap Makmur" WHERE id="2";
-- sql 4 dan 5
INSERT into tb_caleg(name,id_partai,earned_vote) VALUES("Kabur","3","69");
INSERT into tb_caleg(name,id_partai,earned_vote) VALUES("Astina","3","21");
-- sql 6
UPDATE tb_caleg set name="Is Bos",id_partai="2",earned_vote="70" WHERE id="1";
-- sql 7
DELETE FROM tb_caleg WHERE name="Astina";
-- sql 8
SELECT tb_caleg.id,tb_caleg.name,tb_caleg.earned_vote,tb_partai.name from tb_caleg INNER JOIN tb_partai on tb_caleg.id_partai=tb_partai.id ORDER BY tb_caleg.id ASC;
-- sql 9
SELECT tb_caleg.id,tb_caleg.name,tb_caleg.earned_vote,tb_partai.name from tb_caleg INNER JOIN tb_partai on tb_caleg.id_partai=tb_partai.id WHERE tb_caleg.name="kabur" ORDER BY tb_caleg.id ASC;
