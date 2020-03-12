use strict;

# try loop

my @arr = qw(chicken shrimp ham shrimp lobster shrimp crab tuna shrimp turkey);
print "@arr\n";

my $elem;

foreach $elem(@arr) {
    if ($elem eq 'shrimp') {
	next;
    } else {
	print "$elem\n";
    }
}



