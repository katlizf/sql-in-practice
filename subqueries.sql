-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.
1. SELECT * FROM invoice
WHERE invoice_id
IN (SELECT invoice_id FROM invoice_line
    WHERE unit_price > 0.99);

-- Get all playlist tracks where the playlist name is Music.
2.list_track
WHERE playlist_id
IN (SELECT playlist_id FROM playlist
    WHERE name = 'Music');

-- Get all track names for playlist_id 5.
3.SELECT name FROM track
JOIN playlist_track ON track.track_id = playlist_track.track_id
WHERE playlist_track.playlist_id = 5;

-- Get all tracks where the genre is Comedy.
4.SELECT * FROM track
JOIN genre ON track.genre_id = genre.genre_id
WHERE genre.name = 'Comedy';

-- Get all tracks where the album is Fireball.
5. SELECT * FROM track
JOIN album ON track.album_id = album.album_id
WHERE album.title = 'Fireball';

-- Get all tracks for the artist Queen ( 2 nested subqueries ).
6.