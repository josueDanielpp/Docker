CREATE USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'thebestfuckingpasswordever';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'thebestfuckingpasswordever';

CREATE USER 'myadmin'@'%' IDENTIFIED WITH mysql_native_password BY 'anothersuperpasswordinnit';
GRANT ALL PRIVILEGES ON *.* TO 'myadmin'@'%';
ALTER USER 'myadmin'@'%' IDENTIFIED WITH mysql_native_password BY 'anothersuperpasswordinnit';
