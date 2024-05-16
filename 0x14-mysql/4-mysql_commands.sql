-- Task 4 
CREATE USER 'replica_user'@'%' IDENTIFIED WITH mysql_native_password BY 'Atqj0ij2';
GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'%';
GRANT SELECT ON mysql.user TO 'holberton_user'@'localhost';
FLUS PRIVILEGES;
-- verify if your answer is correct
mysql -uholberton_user -p -e 'SELECT user, Repl_slave_priv FROM mysql.user;
