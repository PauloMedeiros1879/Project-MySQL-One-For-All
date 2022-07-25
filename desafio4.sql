SELECT
	u.nome AS 'usuario',
    IF(YEAR(MAX(h.data_de_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo')  'condicao_usuario'
FROM 
	SpotifyClone.usuario  u
INNER JOIN
	SpotifyClone.historico_de_reproducao h
ON u.id = h.usuario_id
GROUP BY u.nome
ORDER BY u.nome;