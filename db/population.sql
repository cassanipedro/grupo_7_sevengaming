------------------------------------------------ erase everything ------------------------------------------------
-- products --
DELETE FROM DbSevenGaming.products;
ALTER TABLE DbSevenGaming.products AUTO_INCREMENT=1;
-- users --
DELETE FROM DbSevenGaming.users;
ALTER TABLE DbSevenGaming.users AUTO_INCREMENT=1;
-- categoryProducts --
DELETE FROM DbSevenGaming.categoryProducts;
ALTER TABLE DbSevenGaming.categoryProducts AUTO_INCREMENT=1;
-- categoryUsers --
DELETE FROM DbSevenGaming.categoryUsers;
ALTER TABLE DbSevenGaming.categoryUsers AUTO_INCREMENT=1;

------------------------------------------------ populate everything ------------------------------------------------
-- categoryProducts --
INSERT INTO DbSevenGaming.categoryProducts (id, category) VALUES
(1, "Juegos"), (2, "Libros"), (3, "Accesorios");
-- categoryUsers --
INSERT INTO DbSevenGaming.categoryUsers (id, category) VALUES
(1, "Administrador"), (2, "Cliente");
-- products --
INSERT INTO DbSevenGaming.products (id, name, price, categoryId, description, image) VALUES 
(1, "FORTNITE", 100, 1, "Entrega del tercer capitulo del famoso shooter FORTNITE.", "fortnite-1.webp"), 
(2, "Hogwarts Legacy", 550, 1, "Hogwarts Legacy es un videojuego de rol de mundo abierto que se encuentra en desarrollo. Es desarrollado por Avalanche Software y será distribuido por Portkey Games.", "hogwarts.jpg"), 
(3, "Horizon Forbidden West", 890, 1, "Horizon Forbidden West es un videojuego de rol de acción, aventura y mundo abierto desarrollado por Guerrilla Games y distribuido por Sony Interactive Entertainment, exclusivamente para PlayStation 4 y PlayStation 5. Es la secuela de Horizon Zero Dawn.", "horizon.jpg"), 
(4, "Heroes & Generals", 750, 1, "Heroes & Generals es un videojuego de disparos en primera persona ambientado en la Segunda Guerra Mundial desarrollado y distribuido por Reto-Moto.", "world-war.webp"), 
(5, "Halo: The Fall of Reach", 250, 2, "Halo: The Fall of Reach es una novela de ciencia ficción escrita en el 2001 por Eric Nylund, basada en la serie de videojuegos Halo, precuela de Halo: Combat Evolved.", "halo.jpg"), 
(6, "Harry Potter y la piedra filosofal", 350, 2, "Harry Potter y la piedra filosofal, es el primer libro de la serie literaria Harry Potter, escrito por la autora británica J. K. Rowling en 1997.", "harry-potter.jpg"),
(7,"Ready Player One", 500, 2, "Ready Player One es una novela de ciencia ficción de 2011 y la novela debut del autor estadounidense Ernest Cline.", "player-one.png"),
(8, "El Libro de Star Wars", 375, 2, "Si quieres conocer la épica e intrincada saga de Star Wars, este es tu libro Un libro único y profundo que incluye: The Mandalorian, Star Wars: La Guerra de los clones y Star Wars: El ascenso de Skywalker.", "star-wars.webp"),
(9, "MOCHILA GAMING", 655, 3, "Mochila gaming, 100% importada, impermeable, contiene puerto USB, dos bolsillos de con formato curvo con cierre laterales, tiras acolchadas, manija superior reforzada, tamaño ideal para uso urbano, escolar, viajes, deporte, color negro, calidad y diseño superior.", "mochila-gaming.webp"),
(10, "GORRA FORTNITE", 175, 3, "Las mejores gorras del mercado ofrecidas al precio más económico. Gorras del famoso juego FORNITE de la más alta calidad.", "gorra-fortnite.jpg");
-- users --
INSERT INTO DbSevenGaming.users (id, first_name, last_name, email, password, categoryId, image) VALUES 
(1, "Admin", "Admin", "admin@gmail.com", "$2b$10$Y10B5O1xhKOBgD2CERue2.7XHk8RviSM22wE/ym8SVSkC8IWd6GJ2", 1, ""), -- Contraseña: 12345678 --
(2, "Admin2", "Admin2", "admin2@hotmail.com", "$2b$10$G2CW2Bs17AZigP/R8OMQN.jGOzQu87XjOINk8REfErNUmAKlko4uu", 1, ""), -- Contraseña: 123admin --
(3, "Maria", "Aguirre", "mari@gmail.com", "$2b$10$f6Rq/93jazd31Le.1nMKWOnx8iUrFbmH1aD1mRABR5nvhoSZL0.SG", 2, ""), -- Contraseña: 123maria --
(4, "Mateo", "Alferez", "mateo@hotmail.com", "$2b$10$lhCJwc01mtgFhnOEK8v8E.Y80fo8ZYmljH8tluso76.be/Fz.aj8e", 2, ""), -- Contraseña: 123mateo --
(5, "Luz", "Alcorta", "luzAlcorta@msn.com", "$2b$10$ukb5py0TUPz86bmwoNUxguQuhrbssFyBwPMWHsGjtndfPemuZzoBe", 2, ""); -- Contraseña: 123luz --