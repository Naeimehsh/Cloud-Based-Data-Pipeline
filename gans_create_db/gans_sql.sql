CREATE DATABASE gans;
USE gans;

-- This statement creates a new table named "cities."
CREATE TABLE cities (
	city_id INT AUTO_INCREMENT, 
    city VARCHAR(50),
    country VARCHAR(10),
    population INTEGER,
    lat FLOAT(6), 
    lon FLOAT(6), 
    timestamp_population INTEGER,
    PRIMARY KEY (city_id)
);

-- This statement creates a new table named "airports."
CREATE TABLE airports (
	city_id INTEGER,
    icao VARCHAR(10),
    airport VARCHAR(30),
    municipality VARCHAR(50),
    PRIMARY KEY (icao),
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);

-- This statement creates a new table named "weather."
CREATE TABLE weather(
	city_id INTEGER,
    forecast_time DATETIME,
	temperature FLOAT(1), 
    temp_feels_like FLOAT(1),
    temp_min FLOAT(1),
    temp_max FLOAT(1),
    pressure INTEGER,
    humidity INTEGER,
    clouds INTEGER,
    wind_speed FLOAT(1),
    wind_deg INTEGER,
    rain_3h FLOAT(2),
    information_retrieved_at DATETIME,
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);

-- This statement creates a new table named "flights."
CREATE TABLE flights(
	arrival_icao VARCHAR(10),
    arrival_time_local DATETIME,
    arrival_terminal VARCHAR(10),
    departure_city VARCHAR(50),
	departure_icao VARCHAR(10),
    departure_time_local DATETIME,
    airline VARCHAR(50),
    flight_number VARCHAR(10),
    data_retrieved_at DATETIME,
    FOREIGN KEY (arrival_icao) REFERENCES airports(icao)
);
 
select * from cities;
select * from airports;
select * from weather;
select * from flights;

