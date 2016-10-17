+----+---------------+-----------+----------+---------------------+------+---------+----------------+----------------+------------------+-----------------+-----------------+
| id | addressBookId | firstName | lastName | birthday            | type | subtype | contentLineOne | contentLineTwo | contentLineThree | contentLineFour | contentLineFive |
+----+---------------+-----------+----------+---------------------+------+---------+----------------+----------------+------------------+-----------------+-----------------+
|  1 |             1 | James     | Johnson  | 1970-02-20 00:00:00 | home | phone   |                | NULL           | NULL             | NULL            | NULL            |
|  2 |             1 | Jane      | Smith    | 1999-07-01 00:00:00 | work | phone   |                | NULL           | NULL             | NULL            | NULL            |
|  3 |             3 | Jay       | Turner   | 1929-09-08 00:00:00 | home | phone   |                | NULL           | NULL             | NULL            | NULL            |
+----+---------------+-----------+----------+---------------------+------+---------+----------------+----------------+------------------+-----------------+-----------------+


mysql> describe Account;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id         | int(11)      | NO   | PRI | NULL    | auto_increment |
| email      | varchar(255) | NO   |     | NULL    |                |
| password   | varchar(40)  | NO   |     | NULL    |                |
| createdOn  | datetime     | NO   |     | NULL    |                |
| modifiedOn | datetime     | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+

mysql> describe AddressBook;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id         | int(11)      | NO   | PRI | NULL    | auto_increment |
| accountId  | int(11)      | NO   |     | NULL    |                |
| name       | varchar(255) | NO   |     | NULL    |                |
| createdOn  | datetime     | NO   |     | NULL    |                |
| modifiedOn | datetime     | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+

mysql> select * from Entry limit 2;

mysql> delete table Account;

mysql> select email from Account where id=63;
+-------------------------------------------------+
| email                                           |
+-------------------------------------------------+
| consectetuer.rhoncus.Nullam@temporloremeget.org |
+-------------------------------------------------+

mysql> select name from AddressBook where accountId='3';
+---------------------------------+
| name                            |
+---------------------------------+
| Donec Incorporated              |
| Ipsum Nunc LLC                  |
| In Consectetuer Ltd             |
| Lacus Aliquam Rutrum Industries |
| Ac Ltd                          |
| Mauris Consulting               |
| Ornare Corporation              |
+---------------------------------+

mysql> select createdOn from AddressBook where name='Lorem Foundation';
+---------------------+
| createdOn           |
+---------------------+
| 2016-06-26 02:43:41 |
| 2015-05-04 14:28:16 |
+---------------------+

mysql> select count(*) from Account;
+----------+
| count(*) |
+----------+
|     1000 |
+----------+

mysql> select count(*) from AddressBook;
+----------+
| count(*) |
+----------+
|     1100 |
+----------+

mysql> select count(*) from Entry;
+----------+
| count(*) |
+----------+
|     4000 |
+----------+

mysql> select count(*) from Entry where birthday < '1982-02-12';
+----------+
| count(*) |
+----------+
|     2687 |
+----------+

mysql> select count(*) from Entry where birthday >= '1965-01-01';
+----------+
| count(*) |
+----------+
|     2597 |
+----------+

mysql> select createdOn from AddressBook order by createdOn desc;

| 2014-09-25 15:35:23 |
| 2014-09-24 12:05:32 |
| 2014-09-21 16:43:01 |
| 2014-09-21 03:03:50 |
| 2014-09-20 20:18:59 |
| 2014-09-19 16:49:28 |
| 2014-09-19 12:20:50 |
| 2014-09-19 01:58:58 |
| 2014-09-18 22:22:37 |
| 2014-09-18 15:45:47 |
+---------------------+

mysql> select count(type) from Entry where type='home' or 'work';                                                        
+-------------+
| count(type) |
+-------------+
|        1600 |
+-------------+

mysql> select count(subtype) from Entry where subtype='phone';
+----------------+
| count(subtype) |
+----------------+
|            600 |
+----------------+







