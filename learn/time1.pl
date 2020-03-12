# get time
use strict;

my $sec;
my $min;
my $hour;
my $month;
my $year;
my $day;

($sec, $min, $hour, $day, $month, $year) = localtime(time) ;
$month++;
$year += 1900;

print "$month-$day-$year $hour:$min:$sec\n";
 
