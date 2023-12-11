drop database portfolio;
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
    ProyectDescription VARCHAR(5000),
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
    ('John', 'Doe', '1990-05-15', 'American', 'Passionate developer', 'Experienced full-stack developer with a focus on web technologies.'),
    ('Alice', 'Smith', '1985-08-22', 'British', 'Creative coder', 'Front-end developer with a keen eye for design and user experience.'),
    ('Bob', 'Johnson', '1988-11-10', 'Canadian', 'Tech enthusiast', 'Software engineer specializing in backend development and cloud technologies.'),
    ('Emma', 'Miller', '1995-03-28', 'Australian', 'Innovative programmer', 'AI and machine learning researcher with a background in computer science.'),
    ('Daniel', 'Brown', '1992-07-03', 'German', 'Coding wizard', 'Passionate about open source and contributing to the developer community.');

-- Insertar registros en la tabla Proyects
INSERT INTO Proyects (ProyectName, ProyectDescription, DeveloperId)
VALUES
    ('E-commerce Platform', 'Building a scalable e-commerce platform with advanced features.', 1),
    ('Social Media App', 'Developing a social media app with real-time updates and interactive features.', 2),
    ('Financial Analytics Tool', 'Creating a tool for financial analysts to analyze market trends and data.', 3),
    ('Healthcare Management System', 'Designing a system to manage patient records and healthcare data securely.', 4),
    ('Online Learning Platform', 'Building a platform for online education with interactive courses.', 5);

-- Insertar registros en la tabla Technologies
INSERT INTO Technologies (TechnologyName, TechnologyImg, DeveloperId)
VALUES
    ('React.js', 'react_logo.png', 1),
    ('Node.js', 'nodejs_logo.png', 1),
    ('Angular', 'angular_logo.png', 2),
    ('Python', 'python_logo.png', 3),
    ('Java', 'java_logo.png', 4);

-- Insertar registros en la tabla SocialNetworks
INSERT INTO SocialNetworks (SocialNetworkName, SocialNetworkUrl, DeveloperId)
VALUES
    ('Twitter', 'https://twitter.com/johndoe', 1),
    ('LinkedIn', 'https://www.linkedin.com/in/alicesmith', 2),
    ('GitHub', 'https://github.com/bobjohnson', 3),
    ('Instagram', 'https://www.instagram.com/emmamiller', 4),
    ('Facebook', 'https://www.facebook.com/danielbrown', 5);

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


select * from developers;

select * from proyects where DeveloperId = 1;
select * from ImgProyects INNER JOIN Proyects ON ImgProyects.ProyectId = Proyects.ProyectId;


