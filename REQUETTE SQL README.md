# BASE-DE-DONNE-LOCATION-FILM
Une entreprise de location de film souhaiterai digitaliser tout son système. Une partie de ce travail consiste à mettre en place une base de données

Quelques requêtes SQL à disposition pour faire des essais.

AJOUTER UN FILM

INSERT INTO Film_information(Titre,Date_sorti,Dure,Realisateur) values (`Jurassic Park`,`1993/10/20`,`2H 07min`,`Steven Spielberg`);

MODIFIER UN FILM

UPDATE Film_information SET Titre = `Jurassic et Park`WHERE id = 5;

SUPRIMER UN FILM

DELETE FROM Film_information WHERE id = 5;

AJOUTER UN CLIENT

INSERT INTO client (Nom,Prenom,Email) values (`AKOUA`,`AWOUDJA`,`Akoua@gmail.com`);

MODIFIER UN CLIENT

UPDATE client SET Nom = `AKOUA`WHERE id = 5;

SUPRIMER UN CLIENT

DELETE FROM client WHERE id = 5;

AFFICHER LES TROIS DERNIERS FILM

SELECT Titre FROM Film_information ORDER BY id DESC;
