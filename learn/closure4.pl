# returning multiple subroutine references and calling them
# same as closure3.pl in functionality

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

my ($count_em, $get_results) = create_size_callback();
find ($count_em, "c:/svnwork");
my $total_size = $get_results->();
print "total size = $total_size\n";

