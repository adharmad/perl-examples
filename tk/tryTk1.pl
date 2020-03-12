use strict;
use Tk;

# Main Window
my $mw = MainWindow->new();

my $but = $mw->Button(-text => "Push Me", -command =>\&push_button);
$but->pack();

MainLoop;

#This is executed when the button is pressed 
sub push_button {
  print "exiting program\n";
  exit;
}
