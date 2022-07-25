CREATE VIEW estatisticas_musicais AS
SELECT
(SELECT COUNT(*)
FROM SpotifyClone.cancao) AS `cancoes`, SpotifyClone.artista AS `artistas`, SpotifyClone.album) AS `albuns`;