use strict;
use Tk;

# Main window
my $mw = MainWindow->new();

# Gui building area
my $ent = $mw->Entry()->pack();
my $but = $mw->Button(-text => "Push me", -command => \&push_button);
$but->pack();

MainLoop;

# This is executed when the button is pressed
sub push_button {
  $ent->insert('end', "Hello");
}
