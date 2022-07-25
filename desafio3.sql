SELECT 
  u.usuario AS `usuario`, 
  COUNT(*) AS 'qtde_musicas_ouvidas',
    ROUND(SUM(tm.duracao)/60, 2) AS 'total_minutos'
FROM SpotifyClone.historico_reproducao hr
INNER JOIN SpotifyClone.usuario u
ON hr.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancao c
ON hr.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.cancao tm
ON tm.id = hr.musica_id
ORDER BY `usuario`, `qtde_musicas_ouvidas`, `total_minutos`;