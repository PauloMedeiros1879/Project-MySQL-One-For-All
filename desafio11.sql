SELECT
	m.titulo AS 'nome_musica',
    CASE 
      WHEN m.titulo LIKE '%Streets%' THEN REPLACE(titulo, 'Streets', 'Code Review')
      WHEN m.titulo LIKE '%Her Own%' THEN REPLACE(titulo, 'Her Own', 'Trybe')
      WHEN m.titulo LIKE '%Inner Fire%' THEN REPLACE(titulo, 'Inner Fire', 'Project')
      WHEN m.titulo LIKE '%Silly%' THEN REPLACE(titulo, 'Silly', 'Nice')
      WHEN m.titulo LIKE '%Circus%' THEN REPLACE(titulo, 'Circus', 'Pull Request')
	END AS "novo_nome"
FROM SpotifyClone.musica m
WHERE m.titulo LIKE '%Streets%'
OR m.titulo LIKE '%Her Own%'
OR m.titulo LIKE '%Inner Fire%'
OR m.titulo LIKE '%Silly%'
OR m.titulo LIKE '%Circus%'
ORDER BY m.titulo;