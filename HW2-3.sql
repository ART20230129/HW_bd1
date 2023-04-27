create table if not exists music_genre (
	genre_id serial primary key,
	name_genre VARCHAR(75) not NULL	
);

create table if not exists music_executor (
	executor_id serial primary key,
	name_executor VARCHAR(75) not NULL
);

create table if not exists album_list (
	album_id serial primary key,
	name_album VARCHAR(75) not null,
	year_publiction VARCHAR(75) not null 
); 

create table if not exists track_list (
	track_id serial primary key,
	name VARCHAR(75) not null,
	track_duration VARCHAR(75) not null,
	album_id integer references album_list(album_id)	
);

create table if not exists collection (
	collection_id serial primary key,
	name VARCHAR(75) not null,
	year_publiction VARCHAR(75) not null	 
);

create table if not exists performer_different_genres (
	genre_id integer references music_genre (genre_id),
	executor_id integer references music_executor (executor_id),
	constraint pk primary key (genre_id, executor_id) 
);

create table if not exists executor_ft_executor (
	executor_id integer REFERENCES music_executor (executor_id),
	album_id integer references album_list (album_id),
	constraint ek primary key (executor_id, album_id) 
);

create table if not exists track_collection (
	track_id integer references track_list (track_id),
	collection_id integer references collection (collection_id),
	constraint tk primary key (track_id, collection_id) 
);


