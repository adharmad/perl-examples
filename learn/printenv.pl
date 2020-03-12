use strict;

my $key;

foreach $key (keys %ENV) {
  print "$key => $ENV{$key}\n";
}
