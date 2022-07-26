SELECT
	m.titulo AS 'nome',
  COUNT(*) AS 'reproducoes'
FROM SpotifyClone.musica m
INNER JOIN SpotifyClone.historico_de_reproducao h
ON m.id = h.musica_id
INNER JOIN SpotifyClone.usuario u
ON h.usuario_id = u.id
WHERE u.plano_id BETWEEN 1 AND 2
GROUP BY m.titulo
ORDER BY m.titulo;