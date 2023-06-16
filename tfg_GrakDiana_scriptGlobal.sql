-- DROP TABLE contestaciones;
-- DROP TABLE preguntas;
-- DROP TABLE soluciones;
-- DROP TABLE datos;
-- DROP TABLE categorias;


-- CREATE
CREATE TABLE categorias (
	id_categoria serial PRIMARY KEY,
	descripcion VARCHAR (100) UNIQUE NOT NULL
);

CREATE TABLE soluciones (
	id_solucion serial PRIMARY KEY,
	descripcion VARCHAR (300) NOT NULL	
);

CREATE TABLE preguntas (
	id_pregunta serial PRIMARY KEY,
	descripcion VARCHAR (600) NOT NULL,
	categoria_id integer NOT NULL REFERENCES categorias(id_categoria) ON DELETE CASCADE,
	solucion_id integer NOT NULL REFERENCES soluciones(id_solucion) ON DELETE CASCADE
);

CREATE TABLE contestaciones (
	id_contestacion serial PRIMARY KEY,
	descripcion VARCHAR (300) NOT NULL,
	pregunta_id integer NOT NULL REFERENCES preguntas(id_pregunta) ON DELETE CASCADE
);

CREATE TABLE datos (
	id_dato serial PRIMARY KEY,
	descripcion VARCHAR (2000) NOT NULL,
	categoria_id integer NOT NULL REFERENCES categorias(id_categoria)
);


-- INSERT categorias
INSERT INTO categorias(descripcion)
	VALUES('Filosofía');
	
INSERT INTO categorias(descripcion)
	VALUES('Videojuegos');
	
INSERT INTO categorias(descripcion)
	VALUES('Informática');

INSERT INTO categorias(descripcion)
	VALUES('Arte');

INSERT INTO categorias(descripcion)
	VALUES('Cine');
	
INSERT INTO categorias(descripcion)
	VALUES('Literatura');

-- INSERT preguntas

-- VIDEOJUEGOS.CATEGORIA = 2
-- 1
INSERT INTO soluciones(descripcion)
	VALUES('Aloy');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el nombre completo del personaje principal en Horizon Zero Dawn?',
			2, 1);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Sylens', 1);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Rost', 1);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Erend', 1);
	
-- 2
INSERT INTO soluciones(descripcion)
	VALUES('Spyro the Dragon');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el nombre de la primera entrega de la saga Spyro lanzada en 1998?',
			2, 2);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Spyro: Year of the Dragon', 2);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES (E'Spyro: A Hero\'s Tail', 2);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES (E'Spyro: Ripto\'s Rage', 2);
	
-- 3
INSERT INTO soluciones(descripcion)
	VALUES('Squirtle');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de los siguientes Pokémon es de tipo Agua?', 2, 3);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Pikachu', 3);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Charmander', 3);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Bulbasaur', 3);

-- 4
INSERT INTO soluciones(descripcion)
	VALUES('Orgrimmar');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es la capital de los Orcos en “World of Warcraft”?', 2, 4);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Gnomeregan', 4);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Pandaria', 4);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Ventormenta', 4);
	
-- 5
INSERT INTO soluciones(descripcion)
	VALUES('El Colegio de Hibernalia');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es la facción dedicada al estudio y dominio de la magia en "Skyrim"?',
			2, 5);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Los Compañeros', 5);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('La Hermandad de los Psijic', 5);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Los Magos de la Torre de Piedra', 5);
	
-- 6
INSERT INTO soluciones(descripcion)
	VALUES('Tom Nook');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('Animal Crossing: ¿Cuál es el nombre del personaje que te recibe al llegar al pueblo?',
			2, 6);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Astillas', 6);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Martita', 6);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Anacarda', 6);
	
-- 7
INSERT INTO soluciones(descripcion)
	VALUES('Sardinilla');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cómo se llama el caballo de Geralt en “The Witcher”?',
			2, 7);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Gelbin', 7);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Paquita', 7);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Coco', 7);
	
-- 8
INSERT INTO soluciones(descripcion)
	VALUES('Escuela del Lobo');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('The Witcher: ¿A qué escuela pertenece la fortaleza de Kaer Morhen?',
			2, 8);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Escuela del Grifo', 8);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Escuela del Oso', 8);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Escuela del Gato', 8);
	
-- 9
INSERT INTO soluciones(descripcion)
	VALUES('Ubisoft');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES (E'¿Qué estudio de desarrollo es responsable de la serie de videojuegos "Assassin\'s Creed"?',
			2, 9);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Electronic Arts', 9);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Rockstar Games', 9);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Bethesda Game Studios', 9);
	
-- 10
INSERT INTO soluciones(descripcion)
	VALUES('Kratos');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el nombre del personaje principal en el videojuego "God of War"?',
			2, 10);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Zeus', 10);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Ares', 10);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Hades', 10);
	
-- 11
INSERT INTO soluciones(descripcion)
	VALUES('Terror');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el género principal del juego Devour?',
			2, 11);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Rol', 11);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Aventura', 11);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Acción', 11);
	
-- 12
INSERT INTO soluciones(descripcion)
	VALUES('Enfoque');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué habilidad especial tiene Aloy en Horizon Zero Dawn que le permite detectar rastros y seguir pistas?',
			2, 12);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Parkour', 12);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Supervivencia', 12);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Sigilo', 12);
	
-- 13
INSERT INTO soluciones(descripcion)
	VALUES('Cuadrados');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('Minecraft está formado por…',
			2, 13);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Circulos', 13);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Corazones', 13);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Estrellas', 13);
	
-- 14
INSERT INTO soluciones(descripcion)
	VALUES('Simlish');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué idioma hablan los Sims?',
			2, 14);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('El idioma que ha configurado el jugador', 14);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Depende del país', 14);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('No hablan', 14);
	
-- 15
INSERT INTO soluciones(descripcion)
	VALUES('Carpintero');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál fue el primer trabajo de Super Mario?',
			2, 15);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Ingeniero', 15);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Fontanero', 15);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Agricultor', 15);

-- 16
INSERT INTO soluciones(descripcion)
	VALUES('Alianza y Horda');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuáles son las dos fracciones jugables en “World of Warcraft”?', 2, 16);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Androides y Humanos', 16);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Imperial y Bandidos', 16);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Guardianes y Horda', 16);
	
-- 17
INSERT INTO soluciones(descripcion)
	VALUES('Pavo real');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('En “Valheim” ¿Qué animal NO se puede domesticar?', 2, 17);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Lox', 17);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Jabalí', 17);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Lobo', 17);
	
-- 18
INSERT INTO soluciones(descripcion)
	VALUES('Romero y Tomillo');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('The Witcher: ¿Cómo se llama la taberna que Jaskier posee en Novigrado?', 2, 18);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Pesadilla en la Cocina', 18);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Vino y Rosas', 18);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Pan y Queso', 18);
	
-- 19
INSERT INTO soluciones(descripcion)
	VALUES('Optimizar la administración interna de las ciudades');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es la función principal de los gobernadores en Civilization VI?', 2, 19);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Aumentar la producción militar', 19);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Mejorar la economía de la civilización', 19);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Gestionar la diplomacia con otras civilizaciones', 19);
	
-- 20
INSERT INTO soluciones(descripcion)
	VALUES('Denarios');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el nombre de la moneda utilizada en el juego Medieval Dynasty?', 2, 20);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Dólares', 20);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Florines', 20);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Monedas de oro', 20);
	
-- 21
INSERT INTO soluciones(descripcion)
	VALUES('Ganondorf');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el nombre del villano principal en la serie de Zelda?', 2, 21);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Link', 21);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Zelda', 21);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Sheik', 21);
	
-- 22
INSERT INTO soluciones(descripcion)
	VALUES('Alakazam');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de los siguientes Pokémon es de tipo Psíquico?', 2, 22);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Machamp', 22);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Gyarados', 22);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Arcanine', 22);
	
-- 23
INSERT INTO soluciones(descripcion)
	VALUES('Medusa');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes unidades es exclusiva de la facción Dungeon en Heroes of Might and Magic IV?',
			2, 23);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Espectro', 23);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Arquero elfo', 23);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Caballero', 23);
	
-- 24
INSERT INTO soluciones(descripcion)
	VALUES('Lobo');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes criaturas es amistosa y se puede domesticar en Minecraft?', 2, 24);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Enderman', 24);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Creeper', 24);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Esqueleto', 24);
	
-- 25
INSERT INTO soluciones(descripcion)
	VALUES('Espada de fuego');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes armas es una de las más poderosas en The Forest?', 2, 25);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Hacha de piedra', 25);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Arco y flechas', 25);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Lanza', 25);
	
-- 26
INSERT INTO soluciones(descripcion)
	VALUES('Sigilo y evasión de enemigos');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes mecánicas de juego es característica de Devour?', 2, 26);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Construcción de estructuras defensivas', 26);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Combate con armas de fuego', 26);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Resolución de rompecabezas complejos', 26);
	
-- 27
INSERT INTO soluciones(descripcion)
	VALUES(' Malefor');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el nombre del villano principal en Spyro: Dawn of the Dragon?', 2, 27);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Moneybags', 27);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Crush', 27);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Buzz', 27);
	
-- 28
INSERT INTO soluciones(descripcion)
	VALUES('Mundo postapocalíptico dominado por máquinas');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿En qué tipo de mundo se desarrolla el juego Horizon Zero Dawn?', 2, 28);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Mundo medieval', 28);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Mundo de fantasía', 28);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Mundo futurista con tecnología avanzada', 28);
	
-- 29
INSERT INTO soluciones(descripcion)
	VALUES('10');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuántas razas jugables hay en Skyrim?', 2, 29);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('6', 29);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('8', 29);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('12', 29);
	
-- 30
INSERT INTO soluciones(descripcion)
	VALUES('Elfos de sangre');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('En “World of Warcraft” la Ciudad de Lunargenta es de…', 2, 30);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('No-muertos', 30);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Pandaren', 30);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Orcos', 30);

-- 31
INSERT INTO soluciones(descripcion)
	VALUES('Padre e hijo');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('En el videojuego "God of War" (2018), ¿Cuál es la relación entre Kratos y Atreus?', 2, 31);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Maestro y aprendiz', 31);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Hermanos', 31);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Enemigos mortales', 31);
	
-- 32
INSERT INTO soluciones(descripcion)
	VALUES('Sobrevivir y derrotar a un demonio que posee a una líder sectaria');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el objetivo principal del jugador en Devour?', 2, 32);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Resolver acertijos para escapar de una casa embrujada', 32);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Escapar de un manicomio infestado de criaturas sobrenaturales', 32);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Encontrar tesoros escondidos en una isla maldita', 32);
	
-- 33
INSERT INTO soluciones(descripcion)
	VALUES('Savage Clan');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el nombre del grupo de caníbales hostiles en The Forest?', 2, 33);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Cannibal Tribe', 33);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Night Stalkers', 33);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Lost Boys', 33);
	
-- 34
INSERT INTO soluciones(descripcion)
	VALUES('Participar en batallas y guerras épicas');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes actividades NO puedes realizar en el juego Medieval Dynasty?', 2, 34);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Construir y gestionar tu propia aldea', 34);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Cazar animales para obtener recursos', 34);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Cultivar y cosechar cultivos', 34);
	
-- 35
INSERT INTO soluciones(descripcion)
	VALUES('Andrzej Sapkowski');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('"The Witcher 3: Wild Hunt" se basa en la saga de libros del escritor...', 2, 35);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Frank Herbert', 35);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('León Tolstói', 35);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Federico García Lorca', 35);

-- 36
INSERT INTO soluciones(descripcion)
	VALUES('Gnomo');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué raza NO pertenece a la Horda en “World of Warcraft”?', 2, 36);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Elfo de sangre', 36);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Orco', 36);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Trol', 36);
	
-- 37
INSERT INTO soluciones(descripcion)
	VALUES('Cámaras funerarias');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('En “Valheim” ¿Dónde se puede conseguir Corazón de surtling?', 2, 37);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Montaña', 37);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Mar', 37);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Casa de Trol', 37);
	
-- 38
INSERT INTO soluciones(descripcion)
	VALUES('Petróleo');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el recurso estratégico clave en Civilization VI para la producción de unidades navales?',
			2, 38);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Hierro', 38);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Uranio', 38);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Aluminio', 38);
	
-- 39
INSERT INTO soluciones(descripcion)
	VALUES('Escapar de una prisión y descubrir la verdad sobre el mundo');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el objetivo principal del juego Gothic?', 2, 39);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Salvar el reino de una invasión demoníaca', 39);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Convertirse en el líder de una poderosa facción', 39);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Construir y gestionar un imperio', 39);
	
-- 40
INSERT INTO soluciones(descripcion)
	VALUES('Violeta');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el color predominante del nivel "Dream Weavers" en Spyro the Dragon?', 2, 40);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Azul', 40);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Rojo', 40);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Verde', 40);
	
-- 41
INSERT INTO soluciones(descripcion)
	VALUES('Tamriel');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿En qué continente se sitúa la saga de “The Elder Scrolls?', 2, 41);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Europa', 41);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Poniente', 41);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Nirn', 41);
	
-- 42
INSERT INTO soluciones(descripcion)
	VALUES('Hechicera');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('En “The Witcher”, Yennefer es una…', 2, 42);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Reina', 42);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Moira', 42);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Dama del Bosque', 42);
	
-- 43
INSERT INTO soluciones(descripcion)
	VALUES('Cyberpunk 2077');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de los siguientes videojuegos fue desarrollado por CD Projekt Red?', 2, 43);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Borderlands 3', 43);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Destiny 2', 43);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Resident Evil 7', 43);
	
-- 44
INSERT INTO soluciones(descripcion)
	VALUES('Jolteon');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el Pokémon que evoluciona de Eevee a través de una piedra trueno?', 2, 44);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Espeon', 44);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Flareon', 44);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Vaporeon', 44);
	
-- 45
INSERT INTO soluciones(descripcion)
	VALUES('Nora');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('Horizon Zero Dawn: ¿Cuál es el nombre de la tribu en la que Aloy es proscrita al comienzo del juego?',
			2, 45);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Oseram', 45);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Banuk', 45);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Carja', 45);
	
-- 46
INSERT INTO soluciones(descripcion)
	VALUES('Lobo');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es la montura racial de los Orcos en “World of Warcraft”?', 2, 46);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Triciclo', 46);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Tortuga dragón', 46);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Carnero', 46);
	
-- 47
INSERT INTO soluciones(descripcion)
	VALUES('Simoleón');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es la moneda de los Sims?', 2, 47);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Simdólar', 47);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Simtie', 47);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Simey', 47);
	
-- 48
INSERT INTO soluciones(descripcion)
	VALUES('Uno de los cuervos de Odin');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('Valheim: ¿Quién es Hugin?', 2, 48);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('San Agustín', 48);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un gato', 48);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Odin disfrazado de cuervo', 48);
	
-- 49
INSERT INTO soluciones(descripcion)
	VALUES('Goblin');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué raza NO pertenece a Alianza en “World of Warcraft”?', 2, 49);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Enano', 49);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Humano', 49);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Gnomo', 49);
	
-- 50
INSERT INTO soluciones(descripcion)
	VALUES('Inferno');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes facciones no está presente en Heroes of Might and Magic III?', 2, 50);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Castillo (Haven)', 50);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Bosque (Sylvan)', 50);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Necrópolis', 50);	
-- FIN VIDEOJUEGOS

-- INFORMÁTICA.CATEGORIA = 3
-- 51
INSERT INTO soluciones(descripcion)
	VALUES('Un lenguaje de marcado para la creación de páginas web');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué es HTML?', 3, 51);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Una herramienta de diseño gráfico', 51);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un sistema operativo', 51);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un lenguaje de programación', 51);
	
-- 52
INSERT INTO soluciones(descripcion)
	VALUES('Java');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de los siguientes lenguajes de programación es utilizado principalmente para el desarrollo de aplicaciones móviles?', 
			3, 52);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('HTML', 52);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Python', 52);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('CSS', 52);
	
-- 53
INSERT INTO soluciones(descripcion)
	VALUES('SQL');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones NO es un lenguaje de programación orientado a objetos?', 3, 53);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Ruby', 53);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('JavaScript', 53);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('C++', 53);
	
-- 54
INSERT INTO soluciones(descripcion)
	VALUES('Adobe Photoshop');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es una herramienta de diseño gráfico ampliamente utilizada?', 3, 54);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Microsoft Excel', 54);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Google Chrome', 54);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Salesforce', 54);
	
-- 55
INSERT INTO soluciones(descripcion)
	VALUES('Python');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es un lenguaje de programación de alto nivel?', 3, 55);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Assembly', 55);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('C', 55);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('HTML', 55);
	
-- 56
INSERT INTO soluciones(descripcion)
	VALUES('Cascading Style Sheets');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué significa el acrónimo "CSS" en diseño web?', 3, 56);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Computer System Security', 56);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Creative Style Solutions', 56);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Common Scripting Syntax', 56);
	
-- 57
INSERT INTO soluciones(descripcion)
	VALUES('FTP');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es un protocolo de transferencia de archivos?', 3, 57);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('HTTP', 57);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('TCP', 57);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('SMTP', 57);
	
-- 58
INSERT INTO soluciones(descripcion)
	VALUES('Un error en el código que causa un mal funcionamiento del programa');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué es un "bug" en programación?', 3, 58);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un archivo de extensión ejecutable', 58);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un método utilizado para probar el rendimiento de un software', 58);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Una técnica de encriptación de datos', 58);
	
-- 59
INSERT INTO soluciones(descripcion)
	VALUES('Java');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es un lenguaje de programación orientado a objetos?', 3, 59);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Bash', 59);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('SQL', 59);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('C', 59);
	
-- 60
INSERT INTO soluciones(descripcion)
	VALUES('Model-View-Controller');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué es MVC en el desarrollo de software?', 3, 60);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Most Valuable Code', 60);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Main Validation Component', 60);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Managed View Creation', 60);
	
-- 61
INSERT INTO soluciones(descripcion)
	VALUES('SQL');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es un lenguaje de consultas para bases de datos relacionales?', 
			3, 61);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('HTML', 61);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('XML', 61);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('JSON', 61);
	
-- 62
INSERT INTO soluciones(descripcion)
	VALUES('Un enfoque que garantiza que los sitios web se adapten a diferentes dispositivos y tamaños de pantalla');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué es el "responsive design" en el contexto del desarrollo web?', 3, 62);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un algoritmo utilizado para ordenar elementos en una lista', 62);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Una técnica para proteger los datos sensibles en una base de datos', 62);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un formato de archivo de imagen muy comprimido', 62);
	
-- 63
INSERT INTO soluciones(descripcion)
	VALUES('Photoshop');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones NO es un editor de texto popular en el desarrollo de software?', 3, 63);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Visual Studio Code', 63);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Sublime Text', 63);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Atom', 63);

-- 64
INSERT INTO soluciones(descripcion)
	VALUES('Un algoritmo de ordenamiento basado en comparaciones que utiliza una estrategia de "divide y vencerás"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué es el algoritmo de ordenamiento "QuickSort"?', 3, 64);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un método de compresión de imágenes sin pérdida', 64);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Una técnica de encriptación asimétrica utilizada para asegurar la comunicación en línea', 64);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Una función de agregación en SQL para calcular sumas', 64);

-- 65
INSERT INTO soluciones(descripcion)
	VALUES(' Una estructura de trabajo que proporciona herramientas y funcionalidades para el desarrollo de aplicaciones');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué es un "framework" en el desarrollo de software?', 3, 65);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un programa que permite el diseño de interfaces gráficas', 65);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Una biblioteca de funciones utilizada para realizar operaciones matemáticas', 65);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un formato de archivo utilizado para el intercambio de datos en la web', 65);
	
-- 66
INSERT INTO soluciones(descripcion)
	VALUES('Application Programming Interface');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué significa el acrónimo "API" en el ámbito de la programación?', 3, 66);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Advanced Programming Interface', 66);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Application Protocol Interface', 66);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Algorithmic Programming Instruction', 66);

-- 67
INSERT INTO soluciones(descripcion)
	VALUES('Swift');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es un lenguaje de programación utilizado para el desarrollo de aplicaciones móviles en el entorno iOS?', 
			3, 67);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Java', 67);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('PHP', 67);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Ruby', 67);
	
-- 68
INSERT INTO soluciones(descripcion)
	VALUES('Secuencial');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones NO es un tipo de base de datos?', 3, 68);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Jerárquica', 68);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('NoSQL', 68);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Relacional', 68);
	
-- 69
INSERT INTO soluciones(descripcion)
	VALUES('Un proceso para verificar la calidad y el correcto funcionamiento de un software');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué es el "testing" en el contexto del desarrollo de software?', 3, 69);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un método para calcular el tiempo de ejecución de un programa', 69);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un enfoque de diseño centrado en el usuario', 69);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Una técnica para optimizar el rendimiento de un algoritmo', 69);
	
-- 70
INSERT INTO soluciones(descripcion)
	VALUES('JPG');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es un formato de archivo de imágenes?', 3, 70);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('MP3', 70);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('CSV', 70);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('HTML', 70);
	
-- 71
INSERT INTO soluciones(descripcion)
	VALUES('JavaScript');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es un lenguaje de programación utilizado para el desarrollo de aplicaciones web interactivas?', 
			3, 71);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('HTML', 71);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('CSS', 71);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('SQL', 71);
	
-- 72
INSERT INTO soluciones(descripcion)
	VALUES('El proceso de eliminar errores en el código');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué es el "debugging" en programación?', 3, 72);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('La etapa final de desarrollo de un software', 72);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('La documentación de un programa para facilitar su comprensión', 72);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('La optimización de un programa para que funcione más rápido', 72);
	
-- 73
INSERT INTO soluciones(descripcion)
	VALUES('Un método para rastrear y gestionar cambios en el código fuente');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué es el "version control" en el desarrollo de software?', 3, 73);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un sistema que permite realizar copias de seguridad automáticas', 73);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Una técnica para controlar el acceso de usuarios a una base de datos', 73);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un enfoque de diseño centrado en la seguridad', 73);
	
-- 74
INSERT INTO soluciones(descripcion)
	VALUES('Ruby');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es un lenguaje de programación orientado a objetos?', 3, 74);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('C', 74);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('PHP', 74);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('SQL', 74);
	
-- 75
INSERT INTO soluciones(descripcion)
	VALUES('Un sistema de seguridad que controla el tráfico de red');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué es un "firewall" en el contexto de la seguridad informática?', 3, 75);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un dispositivo utilizado para la conexión a Internet', 75);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un software antivirus para proteger contra malware', 75);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un sistema de detección de intrusos', 75);
	
-- 76
INSERT INTO soluciones(descripcion)
	VALUES('Imperativo');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es un paradigma de programación?', 3, 76);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('HTML', 76);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('CSS', 76);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('HTTP', 76);
	
-- 77
INSERT INTO soluciones(descripcion)
	VALUES('Java');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es un lenguaje de programación utilizado para el desarrollo de aplicaciones de escritorio?', 
			3, 77);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('HTML', 77);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('CSS', 77);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('SQL', 77);
	
-- 78
INSERT INTO soluciones(descripcion)
	VALUES('Un ataque que busca obtener información confidencial haciéndose pasar por una entidad legítima');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué es el "phishing" en el ámbito de la seguridad informática?', 3, 78);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un programa malicioso que se propaga por Internet', 78);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Una técnica de cifrado utilizada para proteger datos sensibles', 78);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un enfoque de programación para mejorar la eficiencia y legibilidad del código', 78);
	
-- 79
INSERT INTO soluciones(descripcion)
	VALUES('Linux');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es un sistema operativo de código abierto?', 3, 79);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Windows', 79);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('macOS', 79);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('iOS', 79);
	
-- 80
INSERT INTO soluciones(descripcion)
	VALUES('La parte del desarrollo que se enfoca en el diseño visual y la interacción del usuario');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué es el "frontend" en el desarrollo web?', 3, 80);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('El servidor que aloja un sitio web', 80);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('La parte del desarrollo que se enfoca en la gestión de bases de datos', 80);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('El proceso de optimizar un sitio web para los motores de búsqueda', 80);
	
-- 81
INSERT INTO soluciones(descripcion)
	VALUES('Python');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es un lenguaje de programación utilizado principalmente para el análisis y procesamiento de datos?', 
			3, 81);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('JavaScript', 81);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('CSS', 81);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('HTML', 81);
	
-- 82
INSERT INTO soluciones(descripcion)
	VALUES('Un archivo ejecutable que contiene un conjunto de instrucciones');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué es un "script" en el contexto de la programación?', 3, 82);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un estilo de codificación que utiliza solo números', 82);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un lenguaje de programación específico para el desarrollo web', 82);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un tipo de fuente utilizado en la programación', 82);
	
-- 83
INSERT INTO soluciones(descripcion)
	VALUES('La parte del desarrollo que se encarga del almacenamiento y la gestión de datos');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué es el "backend" en el desarrollo web?', 3, 83);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('La parte del desarrollo que se enfoca en el diseño visual y la interacción del usuario', 83);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('El proceso de optimizar un sitio web para los motores de búsqueda', 83);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('El servidor que aloja un sitio web', 83);
	
-- 84
INSERT INTO soluciones(descripcion)
	VALUES('JSON');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es un formato de archivo utilizado para el intercambio de datos estructurados?', 
			3, 84);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('TXT', 84);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('MP3', 84);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('PNG', 84);
	
-- 85
INSERT INTO soluciones(descripcion)
	VALUES('Dropbox');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es una plataforma de almacenamiento en la nube?', 3, 85);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Facebook', 85);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Skype', 85);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Spotify', 85);
	
-- 86
INSERT INTO soluciones(descripcion)
	VALUES('Central Processing Unit');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué significa la sigla "CPU" en informática?', 3, 86);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Centralized Programming Unit', 86);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Control Processing Unit', 86);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Computer Processing Unit', 86);
	
-- 87
INSERT INTO soluciones(descripcion)
	VALUES('Binario');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el sistema numérico utilizado comúnmente en la informática?', 3, 87);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Decimal', 87);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Hexadecimal', 87);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Octal', 87);
	
-- 88
INSERT INTO soluciones(descripcion)
	VALUES('Twitter');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es una red social popular?', 3, 88);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Photoshop', 88);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Google Drive', 88);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Microsoft Excel', 88);
	
-- 89
INSERT INTO soluciones(descripcion)
	VALUES('Windows');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es un sistema operativo de Microsoft?', 3, 89);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Ubuntu', 89);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('macOS', 89);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Android', 89);
	
-- 90
INSERT INTO soluciones(descripcion)
	VALUES('Bluetooth');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es una tecnología inalámbrica utilizada para la transferencia de datos a corta distancia?', 
			3, 90);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('HDMI', 90);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('USB', 90);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Ethernet', 90);
	
-- 91
INSERT INTO soluciones(descripcion)
	VALUES('Universal Resource Locator');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué significa la sigla "URL" en el contexto de las direcciones de sitios web?', 3, 91);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('User Retrieval Link', 91);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Uniform Routing Language', 91);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('User Registration Link', 91);
	
-- 92
INSERT INTO soluciones(descripcion)
	VALUES('ZIP');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es un formato de archivo comprimido ampliamente utilizado?', 3, 92);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('MP3', 92);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('DOCX', 92);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('PDF', 92);
	
-- 93
INSERT INTO soluciones(descripcion)
	VALUES('LinkedIn');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es una red social orientada a profesionales?', 3, 93);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Facebook', 93);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Twitter', 93);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Instagram', 93);

-- 94
INSERT INTO soluciones(descripcion)
	VALUES('Un pequeño archivo de texto que se almacena en el navegador y recopila información del usuario');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué es un "cookie" en el contexto de la navegación web?', 3, 94);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un archivo ejecutable utilizado para instalar programas en un dispositivo', 94);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Una técnica de encriptación para proteger datos sensibles', 94);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un dispositivo de almacenamiento externo', 94);

-- 95
INSERT INTO soluciones(descripcion)
	VALUES('iOS');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es un sistema operativo móvil desarrollado por Apple?', 3, 95);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Android', 95);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Linux', 95);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Windows', 95);
	
-- 96
INSERT INTO soluciones(descripcion)
	VALUES('Google Drive');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es un servicio de almacenamiento en la nube de Google?', 3, 96);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Dropbox', 96);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('OneDrive', 96);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('iCloud', 96);

-- 97
INSERT INTO soluciones(descripcion)
	VALUES('Outlook');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es un servicio de correo electrónico de Microsoft?', 3, 97);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Gmail', 97);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('iCloud Mail', 97);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Yahoo Mail', 97);
	
-- 98
INSERT INTO soluciones(descripcion)
	VALUES('Un conjunto de instrucciones paso a paso para resolver un problema o realizar una tarea');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué es un "algoritmo" en el ámbito de la informática?', 3, 98);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un dispositivo utilizado para el almacenamiento de datos en red', 98);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un programa utilizado para la creación de gráficos y diseños', 98);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Una técnica de encriptación utilizada para proteger información sensible', 98);
	
-- 99
INSERT INTO soluciones(descripcion)
	VALUES('Blender');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es un software ampliamente utilizado en el modelado 3D?', 3, 99);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Photoshop', 99);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('AutoCAD', 99);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Microsoft Word', 99);
	
-- 100
INSERT INTO soluciones(descripcion)
	VALUES('.obj');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes opciones es un formato de archivo comúnmente utilizado para el intercambio de modelos 3D?', 
			3, 100);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('.mp3', 100);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('.jpg', 100);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('.txt', 100);
-- FIN INFORMÁTICA

-- ARTE.CATEGORIA = 4
-- 101
INSERT INTO soluciones(descripcion)
	VALUES('Leonardo da Vinci');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién pintó la famosa obra "La última cena"?', 4, 101);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Michelangelo Buonarroti', 101);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Pablo Picasso', 101);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Vincent van Gogh', 101);
	
-- 102
INSERT INTO soluciones(descripcion)
	VALUES('El David');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es la escultura renacentista más conocida de Miguel Ángel?', 4, 102);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('La Piedad', 102);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('La Venus de Urbino', 102);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Venus de Milo', 102);
	
-- 103
INSERT INTO soluciones(descripcion)
	VALUES('William Shakespeare');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién escribió la obra de teatro "Romeo y Julieta"?', 4, 103);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Arthur Miller', 103);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Henrik Ibsen', 103);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Tennessee Williams', 103);
	
-- 104
INSERT INTO soluciones(descripcion)
	VALUES('Cubismo');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el movimiento artístico caracterizado por la representación de objetos en su forma más básica y geométrica?', 
			4, 104);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Expresionismo', 104);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Realismo', 104);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Impresionismo', 104);
	
-- 105
INSERT INTO soluciones(descripcion)
	VALUES('Edipo Rey');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes obras literarias fue escrita por el dramaturgo griego Sófocles?', 4, 105);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('La Odisea', 105);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('La Ilíada', 105);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Hamlet', 105);
	
-- 106
INSERT INTO soluciones(descripcion)
	VALUES('Impresionismo');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de los siguientes movimientos artísticos se caracteriza por la representación de escenas cotidianas y la captura de la luz natural?', 
			4, 106);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Simbolismo', 106);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Barroco', 106);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Renacimiento', 106);
	
-- 107
INSERT INTO soluciones(descripcion)
	VALUES('Leonardo da Vinci');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de los siguientes pintores es conocido por su técnica de esfumado en sus obras, como la "Mona Lisa"?', 
			4, 107);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Rembrandt', 107);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Johannes Vermeer', 107);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Salvador Dalí', 107);
	
-- 108
INSERT INTO soluciones(descripcion)
	VALUES('Henrik Ibsen');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién es considerado el padre del teatro moderno?', 4, 108);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('William Shakespeare', 108);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Anton Chekhov', 108);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Bertolt Brecht', 108);
	
-- 109
INSERT INTO soluciones(descripcion)
	VALUES('El Faro de Alejandría');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes obras es considerada una de las siete maravillas del mundo antiguo?', 4, 109);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('El Partenón', 109);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('La Gran Muralla China', 109);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('El Coliseo Romano', 109);
	
-- 110
INSERT INTO soluciones(descripcion)
	VALUES('Ludwig van Beethoven');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué famoso compositor alemán es conocido por sus sinfonías, como la Quinta y la Novena?', 4, 110);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Franz Schubert', 110);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Johann Sebastian Bach', 110);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Wolfgang Amadeus Mozart', 110);
	
-- 111
INSERT INTO soluciones(descripcion)
	VALUES('"La noche estrellada"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes pinturas fue creada por Vincent van Gogh?', 4, 111);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"La persistencia de la memoria"', 111);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"La Gioconda"', 111);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"La última cena"', 111);
	
-- 112
INSERT INTO soluciones(descripcion)
	VALUES('Salvador Dalí');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién pintó "La persistencia de la memoria"?', 4, 112);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Frida Kahlo', 112);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Claude Monet', 112);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Pablo Picasso', 112);
	
-- 113
INSERT INTO soluciones(descripcion)
	VALUES('"La Victoria de Samotracia"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes esculturas representa la diosa griega de la victoria?', 4, 113);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"La Venus de Milo"', 113);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"El Pensador"', 113);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"La Piedad"', 113);

-- 114
INSERT INTO soluciones(descripcion)
	VALUES('William Shakespeare');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién escribió la obra de teatro "Hamlet"?', 4, 114);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Arthur Miller', 114);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Tennessee Williams', 114);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Anton Chekhov', 114);

-- 115
INSERT INTO soluciones(descripcion)
	VALUES('"El lago de los cisnes"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes obras es un ballet compuesto por Piotr Ilich Tchaikovsky?', 4, 115);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Carmen"', 115);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"La consagración de la primavera"', 115);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"La Traviata"', 115);
	
-- 116
INSERT INTO soluciones(descripcion)
	VALUES('Claude Monet');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién es considerado el padre del impresionismo en la pintura?', 4, 116);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Salvador Dalí', 116);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Leonardo da Vinci', 116);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Pablo Picasso', 116);

-- 117
INSERT INTO soluciones(descripcion)
	VALUES('"El retrato de Dorian Gray"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes obras literarias fue escrita por el dramaturgo británico Oscar Wilde?', 4, 117);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Crimen y castigo"', 117);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Ulises"', 117);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Moby-Dick"', 117);
	
-- 118
INSERT INTO soluciones(descripcion)
	VALUES('"La Piedad"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes esculturas fue creada por Miguel Ángel?', 4, 118);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"El David"', 118);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"La Última Cena"', 118);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"La Venus de Milo"', 118);
	
-- 119
INSERT INTO soluciones(descripcion)
	VALUES('Samuel Beckett');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién es considerado el padre del teatro absurdo?', 4, 119);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Arthur Miller', 119);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('William Shakespeare', 119);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Anton Chekhov', 119);
	
-- 120
INSERT INTO soluciones(descripcion)
	VALUES('"Muerte de un viajante"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes obras de teatro fue escrita por Arthur Miller?', 4, 120);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Romeo y Julieta"', 120);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"La casa de Bernarda Alba"', 120);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Esperando a Godot"', 120);
	
-- 121
INSERT INTO soluciones(descripcion)
	VALUES('Miguel de Cervantes Saavedra');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién es el autor de la famosa novela "Don Quijote de la Mancha"?', 4, 121);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Jorge Luis Borges', 121);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Julio Cortázar', 121);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Gabriel García Márquez', 121);
	
-- 122
INSERT INTO soluciones(descripcion)
	VALUES('Carl Orff');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién es el compositor de la famosa obra "Carmina Burana"?', 4, 122);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Ludwig van Beethoven', 122);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Wolfgang Amadeus Mozart', 122);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Johann Sebastian Bach', 122);
	
-- 123
INSERT INTO soluciones(descripcion)
	VALUES('Wolfgang Amadeus Mozart');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién compuso la famosa ópera "La flauta mágica"?', 4, 123);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Gioachino Rossini', 123);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Richard Wagner', 123);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Giuseppe Verdi', 123);
	
-- 124
INSERT INTO soluciones(descripcion)
	VALUES('"Las dos Fridas"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes pinturas es conocida por sus figuras alargadas y colores vibrantes, representando la cultura mexicana?', 
			4, 124);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"La Gioconda"', 124);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"El grito"', 124);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Guernica"', 124);
	
-- 125
INSERT INTO soluciones(descripcion)
	VALUES('Auguste Rodin');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién es el autor de la famosa escultura "El pensador"?', 4, 125);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Pablo Picasso', 125);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Michelangelo Buonarroti', 125);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Leonardo da Vinci', 125);
	
-- 126
INSERT INTO soluciones(descripcion)
	VALUES('Pablo Neruda');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de los siguientes poetas es conocido como el autor de "Canto general"?', 4, 126);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('T. S. Eliot', 126);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Octavio Paz', 126);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Federico García Lorca', 126);
	
-- 127
INSERT INTO soluciones(descripcion)
	VALUES('"Madama Butterfly"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes obras es una ópera compuesta por Giacomo Puccini?', 4, 127);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"El lago de los cisnes"', 127);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"La Traviata"', 127);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Carmen"', 127);
	
-- 128
INSERT INTO soluciones(descripcion)
	VALUES('Realismo');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de los siguientes movimientos artísticos se caracteriza por la representación de la realidad de forma precisa y detallada?', 
			4, 128);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Cubismo', 128);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Expresionismo', 128);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Surrealismo', 128);
	
-- 129
INSERT INTO soluciones(descripcion)
	VALUES('Antonio Vivaldi');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de los siguientes compositores es conocido por su obra "Las cuatro estaciones"?', 4, 129);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Wolfgang Amadeus Mozart', 129);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Johann Sebastian Bach', 129);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Ludwig van Beethoven', 129);
	
-- 130
INSERT INTO soluciones(descripcion)
	VALUES('Vincent van Gogh');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién pintó la famosa obra "Los girasoles"?', 4, 130);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Salvador Dalí', 130);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Pablo Picasso', 130);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Claude Monet', 130);
	
-- 131
INSERT INTO soluciones(descripcion)
	VALUES('Andy Warhol');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES (E'¿Quién es el autor de la famosa serie de pinturas "Campbell\'s Soup Cans"?', 4, 131);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Vincent van Gogh', 131);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Leonardo da Vinci', 131);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Frida Kahlo', 131);
	
-- 132
INSERT INTO soluciones(descripcion)
	VALUES('Michael Jackson');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de los siguientes músicos es conocido por su álbum "Thriller", uno de los más vendidos de todos los tiempos?', 
			4, 132);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Madonna', 132);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Bob Dylan', 132);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Elvis Presley', 132);
	
-- 133
INSERT INTO soluciones(descripcion)
	VALUES('"Star Wars Theme"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes obras es una composición musical de John Williams, conocida por su tema principal icónico?', 
			4, 133);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Moonlight Sonata"', 133);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Symphony No. 5"', 133);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"The Star-Spangled Banner"', 133);
	
-- 134
INSERT INTO soluciones(descripcion)
	VALUES('Yayoi Kusama');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién es el autor de la famosa instalación "Infinity Mirrors", compuesta por habitaciones llenas de espejos y luces interactivas?', 
			4, 134);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Marina Abramović', 134);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Olafur Eliasson', 134);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Ai Weiwei', 134);
	
-- 135
INSERT INTO soluciones(descripcion)
	VALUES('Prince');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de los siguientes músicos es conocido por su álbum "Purple Rain" y su estilo único de mezclar géneros como el rock y el funk?', 
			4, 135);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Stevie Wonder', 135);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Bob Dylan', 135);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('David Bowie', 135);
	
-- 136
INSERT INTO soluciones(descripcion)
	VALUES('Queen');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién es el autor de la famosa canción "Bohemian Rhapsody"?', 4, 136);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('The Beatles', 136);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Nirvana', 136);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('The Rolling Stones', 136);
	
-- 137
INSERT INTO soluciones(descripcion)
	VALUES('Eminem');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién es considerado uno de los principales exponentes del rap y es conocido por álbumes como "The Marshall Mathers LP" y "Recovery"?', 
			4, 137);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Jay-Z', 137);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Kendrick Lamar', 137);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Drake', 137);
	
-- 138
INSERT INTO soluciones(descripcion)
	VALUES('Steve McCurry');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de los siguientes fotógrafos es conocido por su icónica imagen "Afghan Girl" (Niña afgana)?', 4, 138);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Ansel Adams', 138);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Dorothea Lange', 138);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Robert Capa', 138);
	
-- 139
INSERT INTO soluciones(descripcion)
	VALUES('Museo de Louvre');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de los siguientes museos es famoso por albergar la Mona Lisa de Leonardo da Vinci?', 4, 139);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Museo del Prado', 139);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Museo de Arte Metropolitano (MET)', 139);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Museo de Arte Moderno (MoMA)', 139);
	
-- 140
INSERT INTO soluciones(descripcion)
	VALUES('Pablo Picasso');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién es el autor del famoso mural "Guernica", que representa el bombardeo de la ciudad durante la Guerra Civil Española?', 
			4, 140);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Vincent van Gogh', 140);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Salvador Dalí', 140);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Frida Kahlo', 140);
	
-- 141
INSERT INTO soluciones(descripcion)
	VALUES('Buchaechum');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de los siguientes estilos de danza coreana se caracteriza por sus movimientos fluidos y elegantes, y se realiza con trajes coloridos?', 
			4, 141);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Hallyu', 141);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Salpuri', 141);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Seungmu', 141);
	
-- 142
INSERT INTO soluciones(descripcion)
	VALUES('Hayao Miyazaki');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién es el famoso director de cine japonés conocido por películas como "El viaje de Chihiro" y "Mi vecino Totoro"?', 
			4, 142);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Yasujirō Ozu', 142);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Takeshi Kitano', 142);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Akira Kurosawa', 142);
	
-- 143
INSERT INTO soluciones(descripcion)
	VALUES('Pyotr Ilyich Tchaikovsky');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién es el famoso compositor ruso conocido por sus sinfonías y ballets, como "La bella durmiente" y "El cascanueces"?', 
			4, 143);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Igor Stravinsky', 143);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Sergei Rachmaninoff', 143);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Dmitri Shostakovich', 143);

-- 144
INSERT INTO soluciones(descripcion)
	VALUES('Frédéric Auguste Bartholdi');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién es el famoso escultor francés conocido por la creación de la estatua de la Libertad en Nueva York?', 
			4, 144);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Auguste Rodin', 144);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Michelangelo', 144);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Auguste Renoir', 144);

-- 145
INSERT INTO soluciones(descripcion)
	VALUES('Michelangelo');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién es el famoso pintor italiano renacentista conocido por sus frescos en la Capilla Sixtina, como "La creación de Adán"?', 
			4, 145);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Leonardo da Vinci', 145);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Sandro Botticelli', 145);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Raphael', 145);
	
-- 146
INSERT INTO soluciones(descripcion)
	VALUES('Quentin Tarantino');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién es el famoso director de cine conocido por sus películas como "Pulp Fiction" y "Kill Bill"?', 4, 146);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Christopher Nolan', 146);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Stanley Kubrick', 146);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Martin Scorsese', 146);

-- 147
INSERT INTO soluciones(descripcion)
	VALUES('Pink Floyd');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes bandas de rock británicas es conocida por álbumes como "The Dark Side of the Moon" y "The Wall"?', 
			4, 147);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('The Beatles', 147);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Led Zeppelin', 147);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('The Rolling Stones', 147);
	
-- 148
INSERT INTO soluciones(descripcion)
	VALUES('"La joven de la perla"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el famoso cuadro del pintor neerlandés Johannes Vermeer que muestra a una joven con un turbante azul?', 
			4, 148);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"La noche estrellada"', 148);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"La persistencia de la memoria"', 148);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"El grito"', 148);
	
-- 149
INSERT INTO soluciones(descripcion)
	VALUES('Claude Monet');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién es el famoso pintor impresionista francés conocido por su obra "Impresión, sol naciente"?', 4, 149);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Paul Cézanne', 149);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Edgar Degas', 149);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Pierre-Auguste Renoir', 149);
	
-- 150
INSERT INTO soluciones(descripcion)
	VALUES(E'Guns N\' Roses');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES (E'¿Cuál es la banda de rock estadounidense conocida por canciones como "Sweet Child o\' Mine" y "November Rain"?', 
			4, 150);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Aerosmith', 150);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Nirvana', 150);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('The Doors', 150);
-- FIN ARTE

-- CINE.CATEGORIA = 5
-- 151
INSERT INTO soluciones(descripcion)
	VALUES('Breaking Bad');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿En qué serie de televisión se encuentra el personaje "Walter White"?', 5, 151);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Game of Thrones', 151);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Stranger Things', 151);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('The Walking Dead', 151);
	
-- 152
INSERT INTO soluciones(descripcion)
	VALUES('The Silence of the Lambs');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿En qué película se encuentra el personaje "Hannibal Lecter"?', 5, 152);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Titanic', 152);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('The Matrix', 152);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('The Godfather', 152);
	
-- 153
INSERT INTO soluciones(descripcion)
	VALUES('Game of Thrones');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes series de televisión está basada en los libros de George R.R. Martin?', 5, 153);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('The Crown', 153);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Stranger Things', 153);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('The Office', 153);
	
-- 154
INSERT INTO soluciones(descripcion)
	VALUES('Jennifer Lawrence');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién interpretó a "Katniss Everdeen" en la saga de películas "The Hunger Games"?', 5, 154);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Jennifer Aniston', 154);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Emma Stone', 154);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Anne Hathaway', 154);
	
-- 155
INSERT INTO soluciones(descripcion)
	VALUES(E'"That\'s what she said"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('The Office: ¿Cuál es la frase característica de Michael Scott cuando está sorprendido o emocionado?', 5, 155);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"I declare bankruptcy!"', 155);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Bears, beets, Battlestar Galactica"', 155);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES (E'"I\'m the boss!"', 155);
	
-- 156
INSERT INTO soluciones(descripcion)
	VALUES('Dwight Schrute');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de los siguientes personajes de "The Office" es conocido por su amor por las tarjetas de identificación?', 
			5, 156);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Jim Halpert', 156);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Stanley Hudson', 156);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Oscar Martinez', 156);
	
-- 157
INSERT INTO soluciones(descripcion)
	VALUES('Ragnar Lothbrok');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el nombre del protagonista principal en la serie "Vikings"?', 5, 157);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Ivar the Boneless', 157);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Bjorn Ironside', 157);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Lagertha', 157);
	
-- 158
INSERT INTO soluciones(descripcion)
	VALUES('Kattegat');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('Vikings: ¿Cuál es el nombre del asentamiento vikingo que se convierte en un importante enclave en la serie?', 
			5, 158);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Jorvik', 158);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Paris', 158);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('York', 158);
	
-- 159
INSERT INTO soluciones(descripcion)
	VALUES('Lagertha');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('Vikings: ¿Cuál es el nombre de la esposa de Ragnar Lothbrok al comienzo de la serie?', 5, 159);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Aslaug', 159);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Porunn', 159);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Siggy', 159);
	
-- 160
INSERT INTO soluciones(descripcion)
	VALUES('Navegante y constructor de barcos');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué papel desempeña el personaje de Floki en la serie "Vikings"?', 5, 160);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Mercader y explorador', 160);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Líder religioso y profeta', 160);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Jarl de Kattegat', 160);
	
-- 161
INSERT INTO soluciones(descripcion)
	VALUES('Tommy Shelby');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el nombre del líder de los Peaky Blinders interpretado por Cillian Murphy?', 5, 161);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Arthur Shelby', 161);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('John Shelby', 161);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Michael Gray', 161);
	
-- 162
INSERT INTO soluciones(descripcion)
	VALUES('"By the Order of the Peaky Blinders"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el lema característico de los Peaky Blinders?', 5, 162);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"By Order of the Shelbys"', 162);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Family Above All"', 162);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"No Fighting, No Brawling"', 162);
	
-- 163
INSERT INTO soluciones(descripcion)
	VALUES('The Garrison Tavern');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el nombre del bar al que los Peaky Blinders acuden frecuentemente para reunirse y planificar sus operaciones?', 
			5, 163);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('The Blinders Pub', 163);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('The Black Cat Inn', 163);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('The Shelby Arms', 163);

-- 164
INSERT INTO soluciones(descripcion)
	VALUES('Samwise Gamgee');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('El Señor de los Anillos: ¿Cuál es el nombre de la criatura que se convierte en guía y compañero de Frodo en su viaje?', 
			5, 164);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Boromir', 164);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Gimli', 164);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Gollum', 164);

-- 165
INSERT INTO soluciones(descripcion)
	VALUES('Orcos');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('El Señor de los Anillos: ¿Qué raza de criaturas habita en la tierra de Mordor y son esclavas de Sauron?', 
			5, 165);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Ents', 165);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Enanos', 165);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Elfos', 165);
	
-- 166
INSERT INTO soluciones(descripcion)
	VALUES('La torre de Barad-dûr');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('El Señor de los Anillos: ¿Qué objeto es conocido como "el Ojo de Sauron"?', 5, 166);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('El Cetro de Sauron', 166);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('El Palantir', 166);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('El Anillo Único', 166);

-- 167
INSERT INTO soluciones(descripcion)
	VALUES('Gryffindor');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es la casa a la que pertenece Harry Potter en el Colegio Hogwarts de Magia y Hechicería?', 
			5, 167);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Ravenclaw', 167);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Hufflepuff', 167);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Slytherin', 167);
	
-- 168
INSERT INTO soluciones(descripcion)
	VALUES('Gato llamado Crookshanks');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('Harry Potter: ¿Cuál es la mascota de Hermione Granger?', 5, 168);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Lechuza llamada Pigwidgeon', 168);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Rata llamada Scabbers', 168);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Búho llamado Hedwig', 168);
	
-- 169
INSERT INTO soluciones(descripcion)
	VALUES('Quidditch');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el deporte más popular en el mundo mágico de "Harry Potter"?', 5, 169);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Exploding Snap', 169);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Gobstones', 169);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Wizard Chess', 169);
	
-- 170
INSERT INTO soluciones(descripcion)
	VALUES('Dragones');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué criatura mágica guarda la entrada al Banco Gringotts en el mundo de "Harry Potter"?', 5, 170);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Elfos domésticos', 170);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Centauros', 170);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Hipogrifos', 170);
	
-- 171
INSERT INTO soluciones(descripcion)
	VALUES('Isla de la Tortuga');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el nombre del lugar donde se encuentran los Piratas del Caribe y se reúnen en las películas?', 
			5, 171);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Isla de la Muerte', 171);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Isla de los Condenados', 171);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Isla de los Piratas', 171);
	
-- 172
INSERT INTO soluciones(descripcion)
	VALUES('"La Maldición del Perla Negra"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el título de la primera película de "Piratas del Caribe"?', 5, 172);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"En Mareas Misteriosas"', 172);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"El Cofre de la Muerte"', 172);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"En el Fin del Mundo"', 172);
	
-- 173
INSERT INTO soluciones(descripcion)
	VALUES('Stark');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('Juego de Tronos: ¿Cuál es la casa noble cuyo lema es "Se acerca el Invierno"?', 5, 173);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Baratheon', 173);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Lannister', 173);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Targaryen', 173);
	
-- 174
INSERT INTO soluciones(descripcion)
	VALUES('Jon Snow');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('Juego de Tronos: ¿Cuál de los siguientes personajes nunca llega a sentarse en el Trono de Hierro a lo largo de la serie?', 
			5, 174);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Robb Stark', 174);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Stannis Baratheon', 174);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Daenerys Targaryen', 174);
	
-- 175
INSERT INTO soluciones(descripcion)
	VALUES('Rhaegar Targaryen');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('Juego de Tronos: ¿Quién es el padre biológico de Jon Snow?', 5, 175);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Ned Stark', 175);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Robert Baratheon', 175);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Tywin Lannister', 175);
	
-- 176
INSERT INTO soluciones(descripcion)
	VALUES('"Lo que está muerto no puede morir"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('Juego de Tronos: ¿Cuál es el lema de la Casa Greyjoy?', 5, 176);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Nuestra sangre es de hierro"', 176);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Nosotros no cosechamos"', 176);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Unidos en la adversidad"', 176);
	
-- 177
INSERT INTO soluciones(descripcion)
	VALUES('El Matarreyes');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('Juego de Tronos: ¿Cuál es el apodo de Jaime Lannister?', 5, 177);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('El Perjuro', 177);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('El Regicida', 177);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('El Traidor Dorado', 177);
	
-- 178
INSERT INTO soluciones(descripcion)
	VALUES('Verde');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el color del traje de los participantes en "El juego del Calamar"?', 5, 178);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Rojo', 178);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Azul', 178);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Amarillo', 178);
	
-- 179
INSERT INTO soluciones(descripcion)
	VALUES('Rojo, Luz Verde');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el primer juego que causa la eliminación de varios participantes en "El juego del Calamar"?', 
			5, 179);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('El puente de vidrio', 179);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Cuerda Floja', 179);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Tirar la cuerda', 179);
	
-- 180
INSERT INTO soluciones(descripcion)
	VALUES('Comparten deudas económicas');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el vínculo entre algunos de los participantes en "El juego del Calamar"?', 5, 180);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Son todos familiares cercanos', 180);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Son antiguos compañeros de trabajo', 180);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Han sido seleccionados aleatoriamente', 180);
	
-- 181
INSERT INTO soluciones(descripcion)
	VALUES('Miguel');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el nombre del protagonista de la película "Coco"?', 5, 181);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Héctor', 181);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Dante', 181);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Ernesto', 181);
	
-- 182
INSERT INTO soluciones(descripcion)
	VALUES('"Toy Story"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál de las siguientes películas de animación está ambientada en un mundo de juguetes?', 5, 182);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Los Increíbles"', 182);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Buscando a Nemo"', 182);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Moana"', 182);
	
-- 183
INSERT INTO soluciones(descripcion)
	VALUES('Un hotel');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('En la película de animación "El viaje de Chihiro", la protagonista se adentra en un mundo lleno de espíritus y seres mágicos. ¿En qué tipo de establecimiento comienza a trabajar Chihiro?', 
			5, 183);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un restaurante', 183);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Una tienda de juguetes', 183);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Una escuela de magia', 183);
	
-- 184
INSERT INTO soluciones(descripcion)
	VALUES('Dragón furia nocturna');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('En la película de animación "Cómo entrenar a tu dragón", el protagonista, Hiccup, se hace amigo de un dragón al que llama Desdentao. ¿De qué especie es Desdentao?', 
			5, 184);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Dragón pesadilla monstruosa', 184);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Dragón Gronckle', 184);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Dragón Nadder Mortal', 184);
	
-- 185
INSERT INTO soluciones(descripcion)
	VALUES('Judy Hopps');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('En la película de animación "Zootopia", ¿Cuál es el nombre de la protagonista coneja que se convierte en oficial de policía?', 
			5, 185);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Gazelle', 185);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Flash', 185);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Nick Wilde', 185);
	
-- 186
INSERT INTO soluciones(descripcion)
	VALUES('Superrapidez');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('En la película de animación "Los Increíbles", ¿cuál es el superpoder de Dash, el hijo de la familia Parr?', 
			5, 186);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Invisibilidad', 186);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Vuelo', 186);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Superfuerza', 186);
	
-- 187
INSERT INTO soluciones(descripcion)
	VALUES('Programador informático');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('En la película "Matrix", ¿Cuál es la profesión principal del personaje de Neo antes de descubrir la verdad sobre la realidad?', 
			5, 187);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Médico', 187);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Piloto de aviones', 187);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Detective privado', 187);
	
-- 188
INSERT INTO soluciones(descripcion)
	VALUES('Tyler Durden es una alucinación del narrador');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el giro sorprendente en la trama de "El Club de la Lucha" hacia el final de la película?', 5, 188);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Tyler Durden muere', 188);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('El narrador descubre que Tyler Durden es su padre', 188);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('El narrador se convierte en líder de una organización criminal', 188);
	
-- 189
INSERT INTO soluciones(descripcion)
	VALUES('Pandora');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el nombre del planeta en el que se desarrolla la película "Avatar"?', 5, 189);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Hoth', 189);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Endor', 189);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Tatooine', 189);
	
-- 190
INSERT INTO soluciones(descripcion)
	VALUES('"Aquí está Johnny!"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('En la película "El Resplandor", ¿Cuál es la famosa frase que repite Jack Torrance mientras persigue a su familia?', 
			5, 190);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Hasta el infinito y más allá."', 190);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Te haré una oferta que no podrás rechazar."', 190);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Siempre nos quedará París."', 190);
	
-- 191
INSERT INTO soluciones(descripcion)
	VALUES('Ballet');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('En la película "El Cisne Negro", ¿Qué tipo de arte interpreta la protagonista principal?', 5, 191);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Escultura', 191);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Teatro', 191);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Pintura', 191);
	
-- 192
INSERT INTO soluciones(descripcion)
	VALUES('La lucha de clases');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el tema central de la película "Parásitos"?', 5, 192);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('La ciencia ficción', 192);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('El amor romántico', 192);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('La guerra', 192);
	
-- 193
INSERT INTO soluciones(descripcion)
	VALUES('Nueva York');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿En qué ciudad está ambientada la historia de "American Psycho"?', 5, 193);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Miami', 193);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Chicago', 193);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Los Ángeles', 193);

-- 194
INSERT INTO soluciones(descripcion)
	VALUES('Neo');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el nombre del protagonista de "Matrix"?', 5, 194);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Agent Smith', 194);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Morpheus', 194);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Trinity', 194);

-- 195
INSERT INTO soluciones(descripcion)
	VALUES('Brillo bajo la luz del sol');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué característica especial tienen los vampiros en la saga "Crepúsculo"?', 5, 195);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Beben sangre humana para sobrevivir', 195);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Tienen poderes de telequinesis', 195);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Pueden transformarse en murciélagos', 195);
	
-- 196
INSERT INTO soluciones(descripcion)
	VALUES('Arthur Fleck');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el nombre del personaje principal que se convierte en el Joker?', 5, 196);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Jack Napier', 196);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Harvey Dent', 196);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Thomas Wayne', 196);

-- 197
INSERT INTO soluciones(descripcion)
	VALUES('Un tigre de Bengala');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('En la película "La vida de Pi", ¿Qué animal comparte el bote salvavidas con el protagonista?', 5, 197);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un oso polar', 197);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un gorila de montaña', 197);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Un león africano', 197);
	
-- 198
INSERT INTO soluciones(descripcion)
	VALUES('Cartman');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('South Park: ¿Cuál de los siguientes personajes es conocido por su expresión "¡Oh, mi Dios! ¡Mataron a Kenny!"?', 
			5, 198);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Stan', 198);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Kyle', 198);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Butters', 198);
	
-- 199
INSERT INTO soluciones(descripcion)
	VALUES('Abuelo y nieto');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('Rick y Morty: ¿Qué tipo de relación familiar tienen Rick y Morty en la serie?', 5, 199);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Vecinos', 199);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Hermanos', 199);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Padre e hijo', 199);
	
-- 200
INSERT INTO soluciones(descripcion)
	VALUES('Stanley Kubrick');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién dirigió la película "El Resplandor" (The Shining)?', 5, 200);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Martin Scorsese', 200);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Alfred Hitchcock', 200);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Quentin Tarantino', 200);
-- FIN CINE

-- LITERATURA.CATEGORIA = 6
-- 201
INSERT INTO soluciones(descripcion)
	VALUES('Dan Brown');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el autor del libro "El código Da Vinci"?', 6, 201);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('George R.R. Martin', 201);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('J.K. Rowling', 201);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Stephen King', 201);
	
-- 202
INSERT INTO soluciones(descripcion)
	VALUES('Los hombres que no amaban a las mujeres');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿En qué libro se encuentra el personaje de Lisbeth Salander?', 6, 202);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('La chica del tren', 202);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('La sombra del viento', 202);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('El nombre del viento', 202);
	
-- 203
INSERT INTO soluciones(descripcion)
	VALUES('Los juegos del hambre');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el título del primer libro de la trilogía "Los juegos del hambre"?', 6, 203);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('En llamas', 203);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('La chica en llamas', 203);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Sinsajo', 203);
	
-- 204
INSERT INTO soluciones(descripcion)
	VALUES('Paulo Coelho');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién es el autor del libro "El alquimista"?', 6, 204);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Mario Vargas Llosa', 204);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Isabel Allende', 204);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Gabriel García Márquez', 204);
	
-- 205
INSERT INTO soluciones(descripcion)
	VALUES('Juego de tronos');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el título del primer libro de la saga "Canción de hielo y fuego"?', 6, 205);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Choque de reyes', 205);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Tormenta de espadas', 205);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Festín de cuervos', 205);
	
-- 206
INSERT INTO soluciones(descripcion)
	VALUES('Markus Zusak');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién es el autor del libro "La ladrona de libros"?', 6, 206);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Ruta Sepetys', 206);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('John Green', 206);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Anthony Doerr', 206);
	
-- 207
INSERT INTO soluciones(descripcion)
	VALUES('"El señor de las moscas"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿En qué libro un grupo de niños queda atrapado en una isla desierta y deben luchar por su supervivencia?', 6, 207);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Las uvas de la ira"', 207);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Matar a un ruiseñor"', 207);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"1984"', 207);
	
-- 208
INSERT INTO soluciones(descripcion)
	VALUES('"Harry Potter y la piedra filosofal"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿En qué libro un joven huérfano descubre que es un mago y es enviado a una escuela de magia y hechicería?', 6, 208);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"1984"', 208);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Cien años de soledad"', 208);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"El Hobbit"', 208);
	
-- 209
INSERT INTO soluciones(descripcion)
	VALUES('"El cuento de la criada"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿En qué libro una joven llamada Offred vive en una sociedad distópica en la que las mujeres son utilizadas para procrear?', 
			6, 209);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Un mundo feliz"', 209);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"1984"', 209);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Fahrenheit 451"', 209);
	
-- 210
INSERT INTO soluciones(descripcion)
	VALUES('"Orgullo y prejuicio"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿En qué libro una joven llamada Elizabeth Bennet se debate entre el amor y la sociedad en la Inglaterra del siglo XIX?', 
			6, 210);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Matar a un ruiseñor"', 210);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Mujercitas"', 210);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Cumbres borrascosas"', 210);
	
-- 211
INSERT INTO soluciones(descripcion)
	VALUES('"Frankenstein"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿En qué libro un científico crea un monstruo a partir de la ciencia y desencadena una serie de eventos trágicos?', 
			6, 211);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Don Quijote de la Mancha"', 211);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Cien años de soledad"', 211);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Moby-Dick"', 211);
	
-- 212
INSERT INTO soluciones(descripcion)
	VALUES('"It"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿En qué libro un grupo de amigos se enfrenta a un payaso malévolo que aterroriza a un pueblo pequeño?', 6, 212);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Carrie"', 212);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"El resplandor"', 212);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"El club de la medianoche"', 212);
	
-- 213
INSERT INTO soluciones(descripcion)
	VALUES('Fyodor Dostoyevsky');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién escribió "Crimen y castigo"?', 6, 213);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Leo Tolstoy', 213);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Victor Hugo', 213);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Emily Brontë', 213);

-- 214
INSERT INTO soluciones(descripcion)
	VALUES('La Biblia');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál fue el primer libro impreso en la imprenta de Johannes Gutenberg en el siglo XV?', 6, 214);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('La Odisea', 214);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Don Quijote de la Mancha', 214);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('La Divina Comedia', 214);

-- 215
INSERT INTO soluciones(descripcion)
	VALUES('George Eliot');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál fue el seudónimo femenino que utilizó la autora británica Mary Ann Evans para publicar sus novelas en el siglo XIX?', 
			6, 215);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Jane Austen', 215);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Charlotte Brontë', 215);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Louisa May Alcott', 215);
	
-- 216
INSERT INTO soluciones(descripcion)
	VALUES('"Por el camino de Swann"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el primer libro de la trilogía "En busca del tiempo perdido" de Marcel Proust?', 6, 216);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Sodoma y Gomorra"', 216);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"El mundo de Guermantes"', 216);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"A la sombra de las muchachas en flor"', 216);

-- 217
INSERT INTO soluciones(descripcion)
	VALUES('"Hamlet"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué obra de teatro de William Shakespeare contiene la frase "Ser o no ser, esa es la cuestión"?', 6, 217);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Macbeth"', 217);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"El sueño de una noche de verano"', 217);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Romeo y Julieta"', 217);
	
-- 218
INSERT INTO soluciones(descripcion)
	VALUES('Leo Tolstoy');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué escritor ruso escribió "Anna Karénina"?', 6, 218);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Fyodor Dostoyevsky', 218);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Ivan Turgenev', 218);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Alexander Pushkin', 218);
	
-- 219
INSERT INTO soluciones(descripcion)
	VALUES('Bucéfalo');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el nombre del caballo de Odiseo en la "Ilíada" de Homero?', 6, 219);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Pegaso', 219);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Fafner', 219);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Aquiles', 219);
	
-- 220
INSERT INTO soluciones(descripcion)
	VALUES('Ovidio');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué autor griego antiguo escribió las fábulas conocidas como "Las Metamorfosis"?', 6, 220);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Homero', 220);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Heródoto', 220);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Esopo', 220);
-- FIN LITERATURA

-- FILOSOFÍA.CATEGORIA = 1
-- 221
INSERT INTO soluciones(descripcion)
	VALUES('"Crítica de la razón pura"');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es la obra más conocida de Immanuel Kant, en la que plantea los fundamentos de su filosofía?', 1, 221);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Así habló Zaratustra"', 221);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"Investigaciones filosóficas"', 221);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('"El contrato social"', 221);
	
-- 222
INSERT INTO soluciones(descripcion)
	VALUES('Sócrates');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué filósofo griego afirmó "solo sé que no sé nada"?', 1, 222);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Platón', 222);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Aristóteles', 222);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Epicuro', 222);
	
-- 223
INSERT INTO soluciones(descripcion)
	VALUES('Friedrich Nietzsche');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué filósofo desarrolló la teoría del "eterno retorno" y la noción del "superhombre"?', 1, 223);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Immanuel Kant', 223);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('John Locke', 223);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Jean-Jacques Rousseau', 223);
	
-- 224
INSERT INTO soluciones(descripcion)
	VALUES('Jean-Jacques Rousseau');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué filósofo escribió "El contrato social" y defendió la idea de la soberanía popular?', 1, 224);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Thomas Hobbes', 224);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Immanuel Kant', 224);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('John Locke', 224);
	
-- 225
INSERT INTO soluciones(descripcion)
	VALUES('Epistemología');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es la rama de la filosofía que se ocupa del estudio del conocimiento?', 1, 225);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Metafísica', 225);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Ética', 225);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Estética', 225);
	
-- 226
INSERT INTO soluciones(descripcion)
	VALUES('Protágoras');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Qué filósofo griego afirmó que "el hombre es la medida de todas las cosas"?', 1, 226);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Platón', 226);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Sócrates', 226);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Aristóteles', 226);
	
-- 227
INSERT INTO soluciones(descripcion)
	VALUES('Platón');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el filósofo griego que formuló la teoría de las Ideas y fue discípulo de Sócrates?', 1, 227);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Heráclito', 227);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Epicuro', 227);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Aristóteles', 227);
	
-- 228
INSERT INTO soluciones(descripcion)
	VALUES('Niccolò Machiavelli');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Quién es el autor de la obra "El príncipe" y es conocido por su reflexión sobre el poder político?', 1, 228);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Thomas Hobbes', 228);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('John Locke', 228);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Jean-Jacques Rousseau', 228);
	
-- 229
INSERT INTO soluciones(descripcion)
	VALUES('Metafísica');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el concepto filosófico que se refiere al estudio de la realidad y la naturaleza del ser?', 1, 229);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Existencialismo', 229);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Fenomenología', 229);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Epistemología', 229);
	
-- 230
INSERT INTO soluciones(descripcion)
	VALUES('Utilitarismo');

INSERT INTO preguntas(descripcion, categoria_id, solucion_id)
	VALUES ('¿Cuál es el concepto filosófico que describe la idea de que el fin justifica los medios?', 1, 230);
	
INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Consecuencialismo', 230);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Deontología', 230);

INSERT INTO contestaciones(descripcion, pregunta_id)
	VALUES ('Relativismo ético', 230);
-- FIN FILOSOFÍA

-- DATOS
-- INSERT CURIOSIDADES VIDEOJUEGOS
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('El juego "Minecraft", desarrollado por Mojang, fue creado por una sola persona, Markus Persson, también conocido como Notch. 
			Lo que comenzó como un proyecto personal se convirtió en uno de los juegos más exitosos y reconocidos a nivel mundial.', 2);

INSERT INTO datos(descripcion, categoria_id)
	VALUES ('El juego "Space Invaders", lanzado en 1978, fue tan popular en Japón que se produjo una escasez de monedas de 100 yenes, 
			ya que las personas las utilizaban para jugar en las máquinas recreativas del juego.', 2);

INSERT INTO datos(descripcion, categoria_id)
	VALUES ('En el juego "The Sims", los personajes hablan en un idioma llamado "Simlish". 
			Este idioma fue creado específicamente para el juego y se ha vuelto distintivo de la franquicia.', 2);
	
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('El juego "Mortal Kombat" (1992) fue notorio por su violencia gráfica y fue uno de los primeros en generar controversia sobre los contenidos violentos en los videojuegos. 
			Esto llevó a la creación del sistema de clasificación por edades de los videojuegos.', 2);
	
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('En el juego "The Elder Scrolls V: Skyrim" (2011), los desarrolladores incluyeron una estatua secreta de un caballo en una montaña remota 
			como un homenaje a un bug de desarrollo que hacía que los caballos volaran en el juego.', 2);
-- FIN VIDEOJUEGOS

-- INSERT CURIOSIDADES INFORMATICA
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('El término "bug" (bicho) para referirse a un error en un programa de computadora se originó cuando Grace Hopper, una destacada científica de la computación, 
			encontró un insecto atrapado en un relé electromecánico que causaba problemas en la computadora.', 3);
	
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('El término "hacker" originalmente se refería a personas habilidosas en la programación y resolución de problemas. Sin embargo, con el tiempo, 
			el término se ha asociado principalmente con personas que se dedican a actividades ilegales en la informática.', 3);
	
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('El primer virus informático conocido como "Creeper" apareció en 1971 y afectó a los sistemas operativos TENEX en los laboratorios de ARPANET (predecesor de Internet). 
			Su mensaje decía: "Soy el Creeper: atrápame si puedes".', 3);
	
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('El algoritmo de compresión de archivos llamado "ZIP" lleva ese nombre porque su creador, Phil Katz, 
			quería transmitir la idea de que los archivos se comprimían rápidamente como si se cerraran en una bolsa (ZIP, en inglés).', 3);
	
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('El dominio ".com" en las direcciones de Internet originalmente se refería a "comercial", indicando que el sitio web estaba asociado con una empresa. 
			Sin embargo, en la actualidad, el dominio ".com" se utiliza ampliamente para cualquier tipo de sitio web.', 3);
-- FIN INFORMATICA

-- INSERT CURIOSIDADES ARTE
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('La pintura "Noche estrellada" de Vincent van Gogh es una de sus obras más famosas. 
			Fue pintada mientras estaba en un asilo psiquiátrico y refleja su estilo distintivo de pinceladas enérgicas y el uso del color para expresar emociones intensas.', 4);
			
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('El famoso compositor alemán Ludwig van Beethoven, conocido por su genialidad musical, compuso muchas de sus obras maestras incluso después de quedar completamente sordo. 
			A pesar de su discapacidad, siguió componiendo y dirigiendo en su mente, dejando un legado duradero en la música clásica.', 4);
	
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('La ópera más larga de la historia es "El anillo del nibelungo" de Richard Wagner. Esta tetralogía, compuesta por cuatro óperas 
			("El oro del Rin", "La valquiria", "Sigfrido" y "El ocaso de los dioses"), tiene una duración total de alrededor de 15 horas.', 4);
	
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('La partitura más antigua conocida se llama "El himno hurrita a Nikkal" y fue escrita en tablillas de arcilla en la antigua ciudad de Ugarit (hoy en día Siria) alrededor del 1400 a.C. 
			Es un ejemplo temprano de notación musical y representa uno de los primeros intentos humanos de escribir música.', 4);
	
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('El pintor español Salvador Dalí utilizaba insectos vivos en algunas de sus obras surrealistas. En su cuadro "Cabeza Ráfaga" (1935), 
			Dalí colocó hormigas vivas en la superficie de la pintura, lo que agregaba un elemento de movimiento y sorpresa a la obra.', 4);
-- FIN ARTE

-- INSERT CURIOSIDADES CINE
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('"El mago de Oz" no fue un gran éxito en taquilla inicialmente, 
			pero se convirtió en un clásico después de su estreno en televisión.', 5);
	
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('El rugido al inicio de las películas de MGM se conoce como el "Rugido de Leo", 
			aunque el león original se llamaba Jackie.', 5);
	
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('El actor y comediante Charlie Chaplin participó en un concurso de 
			imitadores de Charlie Chaplin en su época y quedó en tercer lugar.', 5);
	
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('En la película "Psycho" (1960) de Alfred Hitchcock, se utilizó chocolate con 
			jarabe de chocolate como sustituto de la sangre en la icónica escena de la ducha.', 5);
	
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('La película "El viaje de Chihiro" (2001) del director Hayao Miyazaki se convirtió en la película más taquillera de la historia de Japón, superando incluso a "Titanic" en ese país. 
			Además, fue la primera película de anime en ganar el premio a la Mejor Película de Animación en los Premios de la Academia.', 5);
-- FIN CINE

-- INSERT CURIOSIDADES LITERATURA
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('El famoso poeta y dramaturgo William Shakespeare inventó alrededor de 1,700 palabras en inglés, como "bedroom" y "lonely".', 6);
	
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('El escritor francés Victor Hugo tenía una rutina peculiar: se desnudaba por completo antes de sentarse a escribir para evitar la tentación de salir de su casa.', 6);
	
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('El escritor estadounidense Mark Twain fue el primero en utilizar una máquina de escribir para presentar una obra mecanografiada a un editor.', 6);
	
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('El famoso autor Roald Dahl, conocido por sus libros infantiles como "Charlie y la fábrica de chocolate", fue un piloto de la Real Fuerza Aérea Británica durante la Segunda Guerra Mundial.', 6);
	
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('La palabra "quiz" (cuestionario) fue supuestamente inventada por el autor irlandés James Joyce y apareció por primera vez en su novela "Ulises". Desde entonces, se ha convertido en un término común en el idioma inglés.', 6);
-- FIN LITERATURA

-- INSERT CURIOSIDADES FILOSOFÍA
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('El filósofo alemán Immanuel Kant llevaba una rutina diaria extremadamente estricta y predecible. Según se cuenta, los ciudadanos de Königsberg ajustaban sus relojes según el momento en que Kant salía a pasear.', 1);
	
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('El filósofo griego Sócrates nunca escribió ningún libro. Todo lo que sabemos sobre él proviene de los escritos de sus discípulos, como Platón y Jenofonte.', 1);
	
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('Friedrich Nietzsche escribió gran parte de su obra en los últimos años de su vida mientras sufría de enfermedad mental. Su famosa frase "Dios ha muerto" es una de las ideas más conocidas de su obra "Así habló Zaratustra".', 1);
	
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('El concepto de "eterno retorno" fue propuesto por el filósofo alemán Friedrich Nietzsche, quien imaginó un universo infinito en el que todo se repite exactamente de la misma manera, una y otra vez.', 1);
	
INSERT INTO datos(descripcion, categoria_id)
	VALUES ('La filósofa francesa Simone Weil, conocida por sus reflexiones sobre el sufrimiento y la justicia social, abandonó una prestigiosa carrera académica y se convirtió en obrera para experimentar directamente las dificultades y la explotación de los trabajadores.', 1);
-- FIN FILOSOFÍA


