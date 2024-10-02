--Название и продолжительность самого длительного трека.
select name_track, duration from track
where duration = (select max(duration) from track);

--Название треков, продолжительность которых не менее 3,5 минут.
select name_track from track
where duration > 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select name_collection from collection
where releace_year between '2018-01-01' and '2020-12-31';

--Исполнители, чьё имя состоит из одного слова.
select name_performer from performer
where name_performer not like '% %';

--Название треков, которые содержат слово «мой» или «my».
select name_track from track
where lower(name_track) like '%my%' or lower(name_track) like '%мой%';


--Количество исполнителей в каждом жанре.
select name_genre, count(genre_performer.genre_id) as performers from genre
left join genre_performer on genre_performer.genre_id = genre.genre_id
group by name_genre;

-- Количество треков, вошедших в альбомы 2005-2007 годов (изменил год чтоб был какой то результат)
select count(track.track_id) as quantity_track from track
left join album on track.album_id = album.album_id
where album.releace_year >= '2005-01-01' and album.releace_year <= '2007-12-31';

--Средняя продолжительность треков по каждому альбому.
select album.name_album, round(avg(track.duration)) from album
left join track on album.album_id = track.album_id
group by album.name_album;

--Все исполнители, которые не выпустили альбомы в 2020 году.
select performer.name_performer from performer
join performer_album pa on pa.performer_id = performer.performer_id 
join album on pa.album_id = album.album_id 
where extract(year from album.releace_year) != 2020;

--Названия сборников, в которых присутствует конкретный исполнитель (ac/dc).
select collection.name_collection from collection
join track_collection on track_collection.collection_id = collection.collection_id 
join track on track_collection.track_id = track.track_id 
join album on album.album_id = track.album_id 
join performer_album on performer_album.album_id = album.album_id 
join performer on performer.performer_id = performer_album.performer_id 
where performer.name_performer = 'ac/dc'
group by collection.name_collection;