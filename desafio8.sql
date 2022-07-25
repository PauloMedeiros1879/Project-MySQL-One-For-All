SELECT
ar.nome AS `artista`,
al.nome AS `album`
FROM SpotifyClone.artista ar
INNER JOIN SpotifyClone.album al
ON ar.id = al.artista_id
WHERE ar.nome = 'Walter Phoenix';