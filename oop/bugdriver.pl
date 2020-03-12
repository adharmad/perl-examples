use Bug;
use strict;

# driver for Bug class
my $id = "1234";
my $type = "simple";
my $descr = "This is a test";

my $nextbug = Bug->new($id, $type, $descr);
$nextbug->print_me();
$nextbug->print_object();

print $nextbug->get_id();
