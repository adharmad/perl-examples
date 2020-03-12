# get time
use strict;

my $month;
my $year;
my $day;

my @lt = localtime(time);

($day, $month, $year) = ($lt[3], $lt[4], $lt[5]) ;
$month++;
$year += 1900;

print "$month-$day-$year\n";
 
