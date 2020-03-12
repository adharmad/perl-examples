# try splitting a string and then joining


my $foo = "hello world select one two three";
my $boo = "to be or not update to be";
my $doo = "everybody is mad insert here and there";




my $idx = index ((lc ($foo)), 'update');
print "$idx";

my $tmp = substr ($foo, $idx);
print "$tmp";
