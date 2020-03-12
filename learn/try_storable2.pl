#!/usr/bin/perl -w
# retrieve the data stored in try_storable1.pl in store1.db

use Storable;
use Data::Dumper;

my $result = retrieve 'store1.db';
$Data::Dumper::Purity = 1;
print Dumper($result);


