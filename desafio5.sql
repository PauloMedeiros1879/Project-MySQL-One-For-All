SELECT
m.titulo AS `cancao`,
COUNT(*) AS `reproducoes`
FROM SpotifyClone.musica m
INNER JOIN SpotifyClone.historico_de_reproducao hr
ON m.id = hr.usuario_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;