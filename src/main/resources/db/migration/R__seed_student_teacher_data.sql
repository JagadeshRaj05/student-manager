INSERT INTO role(name, created_at, updated_at) VALUES
('TEACHER', NOW(), NOW()),
('STUDENT', NOW(), NOW()) ON CONFLICT(name) DO NOTHING;

-- insert teachers
INSERT INTO users(username, password, role_id, created_at, updated_at) VALUES
('Raamamoorthy', 'admin', (SELECT id FROM role WHERE name = 'TEACHER'), NOW(), NOW()),
('Geetha', 'admin1', (SELECT id FROM role WHERE name = 'TEACHER'), NOW(), NOW()),
('Sivaram', 'admin2', (SELECT id FROM role WHERE name = 'TEACHER'), NOW(), NOW()) ON CONFLICT(username) DO NOTHING;

-- insert teachers
INSERT INTO users(username, password, role_id, created_at, updated_at) VALUES
('Jagadesh', 'admin', (SELECT id FROM role WHERE name = 'STUDENT'), NOW(), NOW()),
('Gowtham', 'admin1', (SELECT id FROM role WHERE name = 'STUDENT'), NOW(), NOW()),
('Sandeep', 'admin2', (SELECT id FROM role WHERE name = 'STUDENT'), NOW(), NOW()) ON CONFLICT(username) DO NOTHING;