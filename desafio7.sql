SELECT
ar.nome AS `artista`,
al.nome AS `album`,
COUNT(*) AS `seguidores`
FROM SpotifyClone.artista ar
INNER JOIN SpotifyClone.album al
ON ar.id = al.id
INNER JOIN SpotifyClone.artista_seguidor s
ON ar.id = s.artista_id
GROUP BY `album`, `artista`
ORDER BY `seguidores` DESC, `artista`, `album`;