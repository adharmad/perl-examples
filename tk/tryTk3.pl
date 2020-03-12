use strict;
use Tk;

my $mw = MainWindow->new(); # Main Window

my $lab = $mw->Label(-text => "Enter name:")->pack();
my $ent = $mw->Entry()->pack();
my $but = $mw->Button(-text => "Push Me", 
                      -command =>\&push_button);
$but->pack();

MainLoop;

#This is executed when the button is pressed
sub push_button {
	$ent->insert(0,"Hello, ");
}
