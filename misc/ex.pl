#!/usr/bin/perl -w

use strict;

# Enters my everyday exercise and personal infomation and stores in
# a file.
# Amol Dharmadhikari - Jan 28, 2002

main();

# Main subroutine
sub main {
    # Define some constants
    my $file = "/home/adharma/personal/13.inf";  
    my $write_file = ">> $file";
    my $prompt;
    
    while (1) {
	
	print_options();

	chop($prompt = <STDIN>);

	# Enter data in the file
	if ( $prompt eq "e" ) {
	    enter_data($write_file);
	} 
	
	# View Statistics
	if ( $prompt eq "v" ) {
	    view_statistics();
	}

	# Exit 
	if ( $prompt eq "q" ) {
	    last;
	}
    }
    

}

sub print_options() {

	print "What do you want to do?\n";
	print "e: Enter data\n";
	print "v: View statistics\n";
	print "q: Quit\n";

	print "Enter your choice\n";
}

sub enter_data() {
    my $write_file = shift(@_);
    my $date;
    my $RR;
    my $rr_out;
    my $ATH;
    my $ath_out;
    my $pushups;
    my $situps;
    my $meditation;
    my $cigs;
    my $other;
    my $prompt = "Y";

    # Open the file
    open(MUKTA, $write_file) or die "Can't open file 13.inf: $!\n";

    while (1) {
	($date, $RR, $ATH, $pushups, $situps, $meditation, $cigs, $other) = 
	    get_the_data();

	if ( ($RR eq "Y") || ($RR eq "y") ) {
	    $rr_out = "RR";
	} else {
	    $rr_out = "";
	}

	if ( ($ATH eq "Y") || ($ATH eq "y") ) {
	    $ath_out = "ATH";
	} else {
	    $ath_out = "";
	}

	print MUKTA "$date : $rr_out, $ath_out, PU: $pushups, SU: $situps, MED: $meditation, CIG: $cigs, OTHER: $other\n";

	print STDOUT "Do you want to enter more data? ";
	
	chop($prompt = <STDIN>);

	if ( ($prompt eq "n") || ($prompt eq "N") ) {
	    last;
	}
    }
}    


sub get_the_data() {

    my $date;
    my $RR = "N";
    my $ATH = "N";
    my $pushups;
    my $situps;
    my $meditation = 0;
    my $reply;
    my $cigs;
    my $other;

    # Get the date
    print "Enter the date: ";
    chop($date = <STDIN>);

    # RR?
    print "RR? ";
    chop($reply = <STDIN>);
    $RR = $reply;

    # ATH?
    print "ATH? ";
    chop($reply = <STDIN>);
    $ATH = $reply;

    # Pushups
    print "How many pushups? ";
    chop ($pushups = <STDIN>);

    # Situps
    print "How many situps? ";
    chop ($situps = <STDIN>);

    # Meditation?
    print "How many minutes meditation? ";
    chop ($meditation = <STDIN>);

    # Cigarettes?
    print "How many cigarettes? ";
    chop ($cigs = <STDIN>);

    # Others? Cycling/Running
    print "Anything else? ";
    chop($other = <STDIN>);

    return ($date, $RR, $ATH, $pushups, $situps, $meditation, $cigs, $other);

}

sub view_statistics() {

}


