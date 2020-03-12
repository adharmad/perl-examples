# creating subroutine references for different directories
# and invoking them more than once
# for each newly created subroutine, a new reference is created and the
# $total_size variable is NOT shared between them.

use File::Find;

sub create_size_callback {
    my $total_size = 0;
    # return an array of subroutine references
    return ( 
        sub {
            $total_size += -s if -f;    
        },
        sub {
            return $total_size;
        }
    );
}

# setup
my %subs;
foreach my $dir ("c:/bin", "c:/tmp", "c:/svnwork") {
    my ($callback, $getter) = create_size_callback();
    $subs{$dir}{CALLBACK} = $callback;
    $subs{$dir}{GETTER} = $getter;
}

# gather data
for (keys %subs) {
    find($subs{$_}{CALLBACK}, $_);
}

# display data
for (sort keys %subs) {
    my $sum = $subs{$_}{GETTER}->();
    print "$_ has $sum bytes\n";
}
