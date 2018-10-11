-- Insert Statements
-- Insert CD Type
USE [disk_inventory]

INSERT INTO [dbo].[CD_type]
([type])
VALUES
  --   (<type, varchar(15),>)
  ('AudioCD')
GO

-- Insert CD rows
USE [disk_inventory]

INSERT INTO [dbo].[CD]
([type_ID], [status], [title], [release_year])
VALUES
  --   (<type_ID, int,>, <status, varchar(15),>, <release_year, datetime,>)
  (1, 'In Library', 'The Dark Side of the Moon', '1973'), --1
  (1, 'In Library', 'Back in Black', '1983'), --2
  (1, 'In Library', 'Bat Out of Hell', '1977'), --3
  (1, 'Borrowed', 'Appetite for Destruction', '1987'), --4
  (1, 'Borrowed', 'Physical Graffiti', '1975'), --5
  (1, 'In Library', 'American Beauty', '1970'), --6
  (1, 'In Library', 'Only the Lonely', '1958'), --7
  (1, 'Borrowed', 'A Night at the Opera', '1975'), --8
  (1, 'In Library', 'American Idiot', '2004'), --9
  (1, 'In Library', 'Sticky Fingers', '1971'), --10
  (1, 'In Library', 'Disintegration', '1989'), --11
  (1, 'In Library', 'Californication', '1999'), --12
  (1, 'In Library', 'Permanent Vacation', '1987'), --13
  (1, 'Missing', 'The Bends', '1995'), --14
  (1, 'In Library', 'Ride the Lightning', '1984'), --15
  (1, 'In Library', 'Antichrist Superstar', '1996'), --16
  (1, 'In Library', 'The White Album', '1968'), --17
  (1, 'Borrowed', 'Born in the U.S.A.', '1984'), --18
  (1, 'In Library', 'Bad', '1987'), --19
  (1, 'In Library', '21', '2011'), --20
  (1, 'In Library', 'Supernatural', '1999'), --21
  (1, 'In Library', 'Nevermind', '1991'), --22
  (1, 'In Library', 'Hotel California', '1976') --23
GO

-- Insert Full Name Artists
USE [disk_inventory]

INSERT INTO [dbo].[Artist]
([type_ID], [first_name], [last_name])
VALUES
  --   (<type_ID, int,>, <first_name, varchar(50),>, <last_name, varchar(50),>)
  (1, 'Pink Floyd', ''), --1
  (1, 'ACDC', ''), --2
  (1, 'Meatloaf', ''), --3
  (1, 'Guns N Roses', ''), --4
  (1, 'Led Zeppelin', ''), --5
  (1, 'Grateful Dead', ''), --6
  (1, 'Frank', 'Sinatra'), --7
  (1, 'Queen', ''), --8
  (1, 'Green Day', ''), --9
  (1, 'Rolling Stones', ''), --10
  (1, 'The Cure', ''), --11
  (1, 'Red Hot Chili Peppers', ''), --12
  (1, 'Aerosmith', ''), --13
  (1, 'Radiohead', ''), --14
  (1, 'Metallica', ''), --15
  (1, 'Marilyn', 'Manson'), --16
  (1, 'The Beatles', ''), --17
  (1, 'Bruce', 'Springsteen'), --18
  (1, 'Michael', 'Jackson'), --19
  (1, 'Adele', ''), --20
  (1, 'Santana', ''), --21
  (1, 'Nirvana', ''), --22
  (1, 'Eagles', '') --23
GO

-- Insert CD Artists
USE [disk_inventory]

INSERT INTO [dbo].[CD_Artist]
([CD_ID], [Artist_ID])
VALUES
  --   (<CD_ID, int,>, <Artist_ID, int,>)
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 4),
  (6, 1),
  (7, 5),
  (7, 6),
  (8, 8),
  (9, 9),
  (10, 10),
  (11, 11),
  (12, 12),
  (13, 13),
  (14, 14),
  (15, 15),
  (16, 16),
  (17, 17),
  (18, 18),
  (19, 19),
  (20, 20),
  (21, 21),
  (22, 22),
  (23, 23)
GO

-- Insert Genre
USE [disk_inventory]

INSERT INTO [dbo].[genre]
([name], [parent_genre])
VALUES
  ('Hard Rock', NULL), --1
  ('Progressive Rock', NULL), --2
  ('Soft Rock', NULL), --3
  ('Pop', NULL), --4
  ('Rock', NULL), --5
  ('Heavy Metal', NULL), --6
  ('Alternative Rock', NULL), --7
  ('Latin Rock', NULL), --8
  ('Jazz', NULL) --9
GO

-- Insert CD genre
USE [disk_inventory]

INSERT INTO [dbo].[CD_genre]
([CD_ID], [genre_ID])
VALUES
  --   (<CD_ID, int,>, <genre_ID, int,>)
  (1, 2),
  (2, 1),
  (3, 1),
  (4, 1),
  (5, 1),
  (6, 5),
  (7, 9),
  (8, 5),
  (9, 7),
  (10, 5),
  (11, 7),
  (12, 7),
  (13, 1),
  (14, 7),
  (15, 6),
  (16, 1),
  (17, 5),
  (18, 5),
  (19, 4),
  (20, 4),
  (21, 8),
  (22, 7),
  (23, 3)
GO

-- Insert borrower
INSERT INTO [dbo].[borrower]
([first_name], [last_name])
VALUES
  --   (<first_name, varchar(50),>, <last_name, varchar(50),>)
  ('Sarah', 'Mathews'), --1
  ('George', 'Kennedy'), --2
  ('Gina', 'Cowan'), --3
  ('Brock', 'Smith'), --4
  ('Marcus', 'Birdsell'), --5
  ('Kimberly', 'Peterson'), --6
  ('David', 'Peckham'), --7
  ('Cody', 'Hendricks'), --8
  ('Kyle', 'Taylor'), --9
  ('Robert', 'Breyer'), --10
  ('Mark', 'Holding'), --11
  ('Joel', 'Turner'), --12
  ('Shannon', 'Hale'), --13
  ('Haylee', 'Allen'), --14
  ('Mike', 'Fox'), --15
  ('Tristan', 'Combs'),
  ('Joshua', 'Frankovich'), --16
  ('April', 'Bingham'), --18
  ('Elizabeth', 'Holt'), --19
  ('Allen', 'Lampkey'), --20
  ('Sherry', 'Moore'), --21
  ('Deletion', 'Test') --22
GO

-- Insert CD borrowed
INSERT INTO [dbo].[CD_borrowed]
([CD_ID], [borrower_ID], [borrowed_date], [returned_date])
VALUES
  --   (<CD_ID, int,>, <borrower_ID, int,>, <borrowed_date, datetime,>, <returned_date, datetime,>)
  (9, 1, '20160403', '20160817'),
  (12, 1, '20160403', '20160817'),
  (13, 1, '20160403', '20160817'),
  (16, 1, '20160405', '20160817'),
  (21, 1, '20160405', '20160817'),
  (4, 5, '20180702', NULL),
  (5, 5, '20180702', NULL),
  (23, 9, '20170403', '20170419'),
  (9, 10, '20171101', '20171102'),
  (14, 20, '20141213', '20150118'),
  (8, 8, '20180927', NULL),
  (9, 8, '20180927', '20181011'),
  (10, 8, '20180927', '20181011'),
  (14, 19, '20170904', NULL),
  (1, 11, '20171007', '20180419'),
  (2, 11, '20171007', '20180419'),
  (3, 4, '20180901', '20180902'),
  (16, 1, '20170405', '20170407'),
  (18, 2, '20180911', NULL),
  (15, 6, '20180529', '20180723'),
  (8, 6, '20180529', '20180723'),
  (20, 6, '20180529', '20180723'),
  (21, 6, '20180529', '20180723')
GO

-- Update ACDC's release year in CD
USE [disk_inventory]

UPDATE CD
SET release_year = 1980
WHERE title = 'Back in Black'
GO

-- Delete Deletion Test from borrower
USE [disk_inventory]

DELETE FROM borrower
WHERE first_name = 'Deletion' AND last_name = 'Test'
GO

-- Query borrowed/missing CD
USE disk_inventory

SELECT
  CD.title,
  borrower.first_name + ' ' + borrower.last_name AS 'name',
  CD.status,
  CD_borrowed.borrowed_date,
  CD_borrowed.returned_date
FROM CD_borrowed
  JOIN borrower ON borrower.borrower_ID = CD_borrowed.borrower_ID
  JOIN CD ON CD.CD_ID = CD_borrowed.CD_ID
WHERE returned_date IS NULL
GO