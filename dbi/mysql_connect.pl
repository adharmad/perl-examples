# connect to mysql from perl

use DBI;

#Specify the MySQL server
my $host = "192.168.50.12";


#your account username and MySQL password
my $username = 'root@localhost';
my $password = "test123";


#the name of your database that you want to connect to
my $db_name = "BSD";

#put the database and server in to the connect statement
$dsn = "DBI:mysql:database=$db_name;host=$host";


#Generate the full connect statement
$dbh = DBI->connect($dsn, $username, $password);


