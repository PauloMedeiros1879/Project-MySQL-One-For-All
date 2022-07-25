SELECT
COUNT(*) AS `quantidade_musicas_no_historico`,
ar.nome AS `album`
FROM SpotifyClone.historico_de_reproducao hr
INNER JOIN SpotifyClone.usuario ar
ON ar.id = hr.usuario_id
WHERE ar.nome = 'Bill';