DROP TABLE IF EXISTS video;
CREATE TABLE video
(
	unique_id serial PRIMARY KEY,
    title character varying,
    length_in_min character varying,
    url character varying
);
select *from video
INSERT INTO
	video (
    
		unique_id,
		title,
		length_in_min,
		url	
)
values 
(
	'123',
	'SQL Tutorial - Full Database Course for Beginners',
	'4:20:38',
	'https://www.youtube.com/watch?v=HXV3zeQKqGY'
	
),
(
	'345',
	'Data Analytics For Beginners | Introduction To Data Analytics | Data Analytics Using R | Edureka',
	'51:47',
	'https://www.youtube.com/watch?v=fWE93St-RaQ'
),
(
	'566',
	'Why Data Analysis is important for every business',
	'5:00',
	'https://www.youtube.com/watch?v=gI6rNWa4faQ'

)

DROP TABLE IF EXISTS video_ratings;
CREATE TABLE video_ratings
(
	unique_id serial PRIMARY KEY,
    user_name character varying,
    rating character varying,
    feedback character varying
);

select *from video_ratings
insert into 
	video_ratings(
		unique_id,
		user_name,
		rating,
		feedback
)
values
(	
	'123',
	'John H',
	'4.5',
	'Really Helpful Video, Good Job!'
),
(
	'345',
	'Henry W',
	'2',
	'Some of the Informations Provided isnt true'
),
(
	'566',
	'Ghita B',
	'5',
	'Loved it'
	
)

select *from video
full outer join video_ratings
on video.unique_id = video_ratings.unique_id



