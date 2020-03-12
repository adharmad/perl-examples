use strict;

my %myhash = (
            "Sun" => "Sunday",
            "Mon" => "Monday",
            "Tue" => "Tuesday",
            "Wed" => "Wednesday",
            "Thu" => "Thursday",
            "Fri" => "Friday",
            "Sat" => "Saturday"
);

my @keys = keys(%myhash);
my @values = values(%myhash);
my $key;
my $val;

print "Keys:\n";

foreach $key (@keys) {
        print "$key\n";
}

print "\nValues:\n";

foreach $val (@values) {
        print "$val\n";
}

print "\nPairs:\n";

foreach $key (@keys) {
        print "$key => $myhash{$key}\n";
}
