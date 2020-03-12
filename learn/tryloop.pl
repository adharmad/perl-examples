use strict;

# iterate through an array substituting 
my @arr = qw(ham, ham, frog, lion, ham, turkey);
print "@arr\n";

for (@arr) {
        s/ham/turkey/
}

print "@arr\n";

# switch statement
my $s = "def";
my $x;
SWITCH: {
        if ($s =~ /^abc/) {
                $x = 1;
                last SWITCH;
        }
        if ($s =~ /^def/) {
                $x = 2;
                last SWITCH;
        }
        if ($s =~ /^ghi/) {
                $x = 3;
                last SWITCH;
        }
        $x = 0;
}

print "$x\n";

$s = "ghi";
SWITCH1: {
        ($s =~ /^abc/) && do {
                                  $x = 1;
                                  last SWITCH1;
                          };
        ($s =~ /^def/) && do {
                                  $x = 2;
                                  last SWITCH1;
                          };
        ($s =~ /^ghi/) && do {
                                  $x = 3;
                                  last SWITCH1;
                          };
        $x = 0;
}

print "$x\n";
