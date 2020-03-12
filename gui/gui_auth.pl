use strict;
use Tk;

my $ret_val = 0;

my $vu_win = MainWindow->new;
$vu_win->configure(-title => 'Verify User', -background => 'blue');
$vu_win->geometry('+100+300');

my $vu_frm1 = $vu_win->Frame(-relief => 'groove', -borderwidth => 3, 
			     -background => 'blue')->pack(-side => 'top', 
							  -fill => 'x');
my $vu_lbl1 => $vu_frm1->Label(-text => 'Enter Username', 
			       -background => 'blue',
			       -foreground => 'white')->pack(-side => 'left');
my $vu_en1 = $vu_frm1->Entry(-width => 8, 
			     -background => 'white')->pack(-side => 'left',
							   -pady => 3);

my $vu_frm2 = $vu_win->Frame(-relief => 'groove', -borderwidth => 3, 
			     -background => 'blue')->pack(-side => 'top', 
							  -fill => 'x');
my $vu_lbl2 => $vu_frm2->Label(-text => 'Enter Password', 
			       -background => 'blue',
			       -foreground => 'white')->pack(-side => 'left');
my $vu_en2 = $vu_frm2->Entry(-width => 12, -show => '*', 
			     -background => 'white')->pack(-side => 'left',
							   -pady => 3);

$vu_en2->bind('<Return>' => sub { &process; 
				  $vu_win->destroy; 
				  if ($ret_val) { exit($ret_val) }});

# mainloop
MainLoop();

sub process {
    print "Hello world!\n";
}
