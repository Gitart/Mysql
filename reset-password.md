Reset password for the root user in MySQL
Created at  17-Feb-2023 , By  samar
Resetting the password for the root user in MySQL is an important step in securing your databases. By default, when you install MySQL, there is no root password set. This means that you can access the MySQL server as the root user without being prompted for a password.

To improve the security of your MySQL installation, it is recommended that you set a root password.

Reset password for root user using mysql shell command
Here is step by step guide to reset password for root user in MySQL.

Step 1 - Open terminal

Step 2 - Login to mysql shell using mysql -u root -p command

mysql -u root -p
If you have set a root password, you will be prompted to enter that password.

Step 3 - Reset password for the root user

You can run the below command to change the password for the root user. Replace ‘new_password’ with the desired new password for the root user in the below statement.

Here we have two different method to reset the password for the root user. You can use any one of them.

ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'new_password';
By using the caching_sha2_password plugin , you can improve the security and performance of your MySQL database, as well as increase compatibility with external applications.

Or

ALTER USER 'root'@'localhost' IDENTIFIED BY 'new_password';
Step 4 - FLUSH PRIVILEGES

You need to flush the privileges to ensure that the changes take effect. You can do this by executing the following SQL statement.

FLUSH PRIVILEGES;
Step 5 - Quit Terminal

Finally, you can quit the MySQL client by executing the quit command.

quit;
Now you can login to MySQL server as the root user, you can use the following command in a terminal or command prompt:

mysql -u root -p
After running the command, you will be prompted to enter the password for the 'root' user that you set earlier. Once you have entered the correct password, you will be logged in to the MySQL server and will be able to run SQL commands.
