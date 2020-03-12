# try gmtime

my $t1 = gmtime;
print "t1 = $t1\n";

my $j = 0;

for (my $i=0 ; $i<100000 ; $i++) {
    $j++;    
}

my $t2 = gmtime;

print "t2 = $t2\n";
