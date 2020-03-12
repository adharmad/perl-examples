use strict;
use XML::Parser;
use Data::Dumper;

# initialize parser and read file
my $parser = new XML::Parser( Style => "Tree" );
my $tree = $parser->parsefile( shift @ARGV );

# serialize the structure
print Dumper( $tree );

exit;
