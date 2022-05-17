-- PlayCenter is an imaginary online platform, allowing users to browse and download mobile games of different genres. PlayCenter database consists of a single table: Players - which contains information about the company customers.

-- Write a query to display all of the information inside players
select * from players;

-- Write a query to retrieve the last_name, first_name and city for each player
select last_name, first_name , city 
from 
players;

-- Write a query to retrieve the email_address, country, and street_address for each player
select email_address, country, street_address
from players;

-- Write a query to display the player_id, total_playing_minutes, and installed_games for each player.

select player_id, total_playing_minutes, installed_games
from players;

-- Write a query to display the player_id, age_group, and total_playing_minutes for each player
select player_id, age_group, total_playing_minutes
from players;
