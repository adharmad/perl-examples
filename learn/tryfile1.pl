use strict;

# try writing to file

open (SESAME, "> foo1.txt");

print SESAME "hello world\n";
print SESAME "hello amol\n";
print SESAME "hello madhura\n";

close (SESAME);


