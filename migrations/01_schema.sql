DROP TABLE IF EXISTS users
DROP TABLE IF EXISTS properties
DROP TABLE IF EXISTS reservations
DROP TABLE IF EXISTS property_reviews


CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
)
CREATE TABLE properties (
  id SERIAL PRIMARY KEY,
  owner_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  thumbnail_photo_url VARCHAR(255),
  cover_photo_url VARCHAR(255),
  cost_per_night INTEGER,
  parking_spaces INTEGER,
  number_of_bathrooms INTEGER,
  number_of_bedrooms INTEGER,
  country VARCHAR(255) NOT NULL,
  street VARCHAR(255) NOT NULL,
  city VARCHAR(255) NOT NULL,
  PROVINCE VARCHAR(255) NOT NULL,
  post_code VARCHAR(255) NOT NULL,
  ACTIVE BOOLEAN
)
CREATE TABLE reservations (
  id SERIAL PRIMARY KEY,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  property_id INTEGER NOT NULL REFERENCES properties(id) ON DELETE CASCADE,
  guest_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
)
CREATE TABLE property_reviews (
  id SERIAL PRIMARY KEY,
  guest_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  property_id INTEGER NOT NULL REFERENCES properties(id) ON DELETE CASCADE,
  reservation_id INTEGER NOT NULL REFERENCES reservations(id) ON DELETE CASCADE,
  rating SMALLINT NOT NULL,
  message TEXT
)