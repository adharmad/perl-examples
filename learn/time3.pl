# format time

use POSIX qw(strftime);

$now_string = strftime "%a %b %e %H:%M:%S %Y", localtime;
$now_string1 = strftime "%Y%m%d-%H%M", localtime;

print "$now_string\n";
print "$now_string1\n";

