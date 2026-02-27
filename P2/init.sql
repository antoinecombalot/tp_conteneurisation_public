USE reacthello2;

-- Table d'exemple avec des données random
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Données d'exemple
INSERT INTO users (name, email, age) VALUES 
('Alice Martin', 'alice@example.com', 28),
('Bob Dupont', 'bob@example.com', 34),
('Claire Bernard', 'claire@example.com', 25),
('David Lemoine', 'david@example.com', 42),
('Emma Rousseau', 'emma@example.com', 31);

-- Table pour des données plus complexes
CREATE TABLE IF NOT EXISTS posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    title VARCHAR(200) NOT NULL,
    content TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO posts (user_id, title, content) VALUES
(1, 'Mon premier post', 'Contenu du premier post...'),
(2, 'Découverte de Docker', 'Docker est vraiment pratique pour...'),
(3, 'React et les hooks', 'Les hooks React permettent de...');
