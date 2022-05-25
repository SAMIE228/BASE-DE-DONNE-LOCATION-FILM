# BASE-DE-DONNE-LOCATION-FILM
Une entreprise de location de film souhaiterai digitaliser tout son système. Une partie de ce travail consiste à mettre en place une base de données

Quelques requêtes SQL à disposition pour faire des essais.

AJOUTER UN FILM

INSERT INTO location_de_film.Film_information(Titre,Date_sorti,Dure,Realisateur) values ('Park','1993/10/20','2H 07min','Steven Spielberg');

MODIFIER UN FILM

UPDATE location_de_film.Film_information SET Titre = 'Jurassic et Park'WHERE idFilm_information = 5;

SUPRIMER UN FILM

DELETE FROM location_de_film.Film_information WHERE idFilm_information = 5;

AJOUTER UN CLIENT

INSERT INTO location_de_film.client (Nom,Prenom,Email) values ('AKOUA','AWOUDJA','Akoua@gmail.com');

MODIFIER UN CLIENT

UPDATE location_de_film.client SET Nom = 'AKOUA'WHERE idclient = 5;

SUPRIMER UN CLIENT

DELETE FROM location_de_film.client WHERE idclient = 5;

AFFICHER LES TROIS DERNIERS FILM

SELECT * FROM location_de_film.Film_information ORDER BY idFilm_information DESC LIMIT 3 ;
