use strict;

# First example
# To swap first 2 words
my $s = "This is a test";

print "Before changing: $s\n";

# Explanation of the regex
# The below regex starts at the beginning of the string (the first ^)
# Then it matches the first word ([^ ]+), then one or more spaces and after
# that the second word ([^ ]+).
# The [^ ] means match anything that is not a space
# The + after that says that match 1 or more
$s =~ s/^([^ ]+) +([^ ]+)/$2 $1/;

print "After changing: $s\n";

# Second example
# match "foo = foo"
$s = "boo = boo";
if ($s =~ /(\w+)\s*=\s*\1/) {
        print "regex matched for $s\n";
} else {
        print "regex did not match $s\n";
}

# Third example
# match a valid number
$s = "1234.345435";
if ($s =~ /^(\d+\.?\d*|\.\d+)$/) {
        print "number matched\n";
}

# Fourth example
# Pull out hours, minutes, secs out of time field of the form:
# Time: HH:MM:SS
$s = "Time:   12:34:55";
if ($s =~ /Time: +(..):(..):(..)/) {
        print "hour: $1\n";
        print "minute: $2\n";
        print "sec: $3\n";
}

# Fifth example
# quote all non-alphanumeric characters
$s = "123 dflkj kdjf !@# 546 $% sdf&&&";
print "Before changing: $s\n";
$s =~ s/(\W)/\\$1/g;
print "After changing: $s\n";

