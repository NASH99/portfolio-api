create database portfolio;
use portfolio;
-- Tabla de desarrolladores 
CREATE TABLE Developers (
    DeveloperId INT AUTO_INCREMENT PRIMARY KEY,
    DeveloperName VARCHAR(200),
    DeveloperLastName VARCHAR(200),
    DeveloperBorn VARCHAR(200),
    DeveloperNationality VARCHAR(200),
    DeveloperDescriptionShort VARCHAR(1000),
	DeveloperDescriptionLarge VARCHAR(10000)
);
-- Tabla de Proyectos 
CREATE TABLE Proyects (
    ProyectId INT AUTO_INCREMENT PRIMARY KEY,
	ProyectName VARCHAR(1000),
    ProyectDescriptionShort VARCHAR(5000),
    ProyectDescriptionLarge VARCHAR(10000),
    DeveloperId int,
    FOREIGN KEY (DeveloperId) REFERENCES Developers(DeveloperId)
);

-- Tabla de tecnologías 
CREATE TABLE Technologies (
    TechnologyId INT AUTO_INCREMENT PRIMARY KEY,
    TechnologyName VARCHAR(2000),
    TechnologyImg VARCHAR(5000),
    DeveloperId int,
    FOREIGN KEY (DeveloperId) REFERENCES Developers(DeveloperId)
);

-- Tabla de redes sociales
CREATE TABLE SocialNetworks (
    SocialNetworkId INT AUTO_INCREMENT PRIMARY KEY,
    SocialNetworkName VARCHAR(2000),
    SocialNetworkUrl VARCHAR(5000),
    DeveloperId int,
    FOREIGN KEY (DeveloperId) REFERENCES Developers(DeveloperId)
);

-- Tabla de Imagenes Usuario
CREATE TABLE ImgUsers (
    ImgUserId INT AUTO_INCREMENT PRIMARY KEY,
    ImgUserUrl VARCHAR(5000),
    DeveloperId int,
    FOREIGN KEY (DeveloperId) REFERENCES Developers(DeveloperId)
);

-- Tabla de Imagenes Proyectos
CREATE TABLE ImgProyects (
    ImgProyectId INT AUTO_INCREMENT PRIMARY KEY,
    ImgProyectUrl VARCHAR(5000),
    ProyectId int,
    FOREIGN KEY (ProyectId) REFERENCES Proyects(ProyectId)
);


-- Insertar registros en la tabla Developers
INSERT INTO Developers (DeveloperName, DeveloperLastName, DeveloperBorn, DeveloperNationality, DeveloperDescriptionShort, DeveloperDescriptionLarge)
VALUES
    ('Ignacio', 'Alvarado', '1999-07-14', 'Chile', 'Passionate developer', 'Experienced full-stack developer with a focus on web technologies.');

-- Insertar registros en la tabla Proyects
INSERT INTO Proyects (ProyectName,ProyectDescriptionShort,ProyectDescriptionLarge, DeveloperId)
VALUES
    ('Sistema de Control de Incidencias', 'Propuesta de un sistema de control de incidencias para el Senado de la República','Se creo principalmente debido a una necesidad que existe actualmente en el senado de la república, ya que los funcionarios se comunican principalmente por medios informales(Telefono, whatsapp), y los altos mandos necesitaban controlar cuando se creaba una incidencia, quien la creo y sus respectivos informes de creacion, en proceso y término.', 1),
    ('Sistema de Control de Incidencias','Site' ,'Building a scalable e-commerce platform with advanced features.', 1);

-- Insertar registros en la tabla Technologies
INSERT INTO Technologies (TechnologyName, TechnologyImg, DeveloperId)
VALUES
    ('Angular', '../../assets/img/tecnologies/angular.png', 1),
    ('React', '../../assets/img/tecnologies/react.png', 1),
    ('Node.js', '../../assets/img/tecnologies/nodejs.png', 1),
    ('Express', '../../assets/img/tecnologies/express.png', 1),
    ('MySQL', '../../assets/img/tecnologies/mysql.png', 1),
    ('PostgreSQL', '../../assets/img/tecnologies/postgresql.png', 1),
    ('Sass', '../../assets/img/tecnologies/sass.png', 1),
    ('Javascript', '../../assets/img/tecnologies/javascript.png', 1),
    ('Git', '../../assets/img/tecnologies/git.png', 1),
    ('Wordpress', '../../assets/img/tecnologies/wordpress.png', 1);

-- Insertar registros en la tabla SocialNetworks
INSERT INTO SocialNetworks (SocialNetworkName, SocialNetworkUrl, DeveloperId)
VALUES
    ('LinkedIn', 'https://www.linkedin.com/in/ignacio-alvarado-marzan/', 1),
    ('GitHub', 'https://github.com/NASH99', 1),
    ('Instagram', 'https://www.instagram.com/solo_nash', 1),
    ('Facebook', 'https://www.facebook.com/ignacio.alvarado.marzan/', 1);

-- Insertar registros en la tabla ImgUsers
INSERT INTO ImgUsers (ImgUserUrl, DeveloperId)
VALUES
    ('user1.jpg', 1),
    ('user2.jpg', 2),
    ('user3.jpg', 3),
    ('user4.jpg', 4),
    ('user5.jpg', 5);

-- Insertar registros en la tabla ImgProyects
INSERT INTO ImgProyects (ImgProyectUrl, ProyectId)
VALUES
    ('proyect1.jpg', 1),
    ('proyect2.jpg', 1),
    ('proyect3.jpg', 1),
    ('proyect1.jpg', 1),
    ('proyect2.jpg', 2),
    ('proyect3.jpg', 3),
    ('proyect4.jpg', 4),
    ('proyect5.jpg', 5);


select * from Developers;

select * from Proyects where DeveloperId = 1;

select * from ImgProyects INNER JOIN Proyects ON ImgProyects.ProyectId = Proyects.ProyectId where DeveloperId = 1;

select * from Technologies where DeveloperId = 1;

