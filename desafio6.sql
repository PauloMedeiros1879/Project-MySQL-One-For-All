SELECT
MIN(p.valor) AS `faturamento_minimo`,
MAX(p.valor) AS `faturamento_maximo`,
ROUND(AVG(p.valor), 2) AS `faturamento_medio`,
SUM(p.valor) AS `faturamento_total`
FROM SpotifyClone.plano p
INNER JOIN SpotifyClone.usuario u
ON p.id = u.plano_id;