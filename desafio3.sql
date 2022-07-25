SELECT 
	u.nome AS 'usuario',
    COUNT(*)AS 'qtde_musicas_ouvidas',
    ROUND(SUM(m.duracao)/60, 2) AS 'total_minutos'
FROM SpotifyClone.usuario u
INNER JOIN SpotifyClone.historico_de_reproducao h
ON u.id = h.usuario_id
INNER JOIN SpotifyClone.musica m
ON m.id = h.musica_id
GROUP BY u.id
ORDER BY u.nome;