-- USERS SEED DATA
INSERT INTO users (name, email, password)
VALUES('Bob Glob','globby@glob.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Gooser MacG','goose@macg.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Ryan Gosling','ryry@hollywood.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Piff Thecat','piff@macg.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

-- properties Seed data
INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1,'speedy house','description','imgfile','imgfile2', $120,9,2,3,'Canada', '123 Castrol Raceway', 'Edmonton', 'Alberta', 't43fff', true),
(2,'dog house','description','imgfile','imgfile2', $20,0,0,1,'Canada', 'my backyard st.', 'Toronto', 'Ontario', '325ddf', true),
(3,'cat tree','description','imgfile','imgfile2', $500,1,2,9,'Canada', 'your livingroom st.', 'Montreal', 'Quebec', '12345T', true);

-- reservation seed data
INSERT INTO reservations (guest_id, property_id, start_date, end_date) 
VALUES (1, 1, '2018-09-11', '2018-09-26'),
(2, 2, '2019-01-04', '2019-02-01'),
(3, 3, '2021-10-01', '2021-10-14');