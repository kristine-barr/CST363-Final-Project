# CST363-Final-Project

# Run Postgres SQL script using psql in the Docker container
1. First, create the SQL.
2. Launch the Postgres container.
3. Copy the sql script from the local filesystem to the Docker container.
```bash
docker cp dbsetup.sql cst363-postgres:/tmp/dbsetup.sql
```
3. Once the file is copied to the Postgres container, run the psql command to execute the script.
 ```bash
docker exec cst363-postgres psql -d postgres -U postgres -f /tmp/dbsetup.sql
 ```
## Script Setup
In the script, you will need to use the \c command to change to the database that was created. Here is an example:
```sql
create database bookshelf;  
\c bookshelf;  
  
CREATE TABLE IF NOT EXISTS app_user (  
    user_id SERIAL PRIMARY KEY,  
    first_name VARCHAR(50) NOT NULL,  
    last_name VARCHAR(50) NOT NULL,  
    email VARCHAR(255) NOT NULL UNIQUE,  
    role_id INT NOT NULL  
);

create table author(  
   author_id serial primary key,  
   author_name varchar(255)  
);
```