CHANGE MASTER TO
    MASTER_HOST='web-01_ip_address',
    MASTER_USER='replica_user',
    MASTER_PASSWORD='your_password',
    MASTER_LOG_FILE='mysql-bin.000009',  -- from SHOW MASTER STATUS
    MASTER_LOG_POS=107;  -- from SHOW MASTER STATUS

START SLAVE;
SHOW SLAVE STATUS\G;
-- After the last sql statment look for this and configure firewall 
--	Slave_IO_Running: Yes
--	Slave_SQL_Running: Yes

-- Configure firewall
--	sudo ufw allow 3306/tcp
-- 	sudo ufw reload
