use strict;
use Tk;

my $mw = MainWindow->new(); # Main Window

my $frm_name = $mw->Frame()->pack();
my $lab = $frm_name->Label(-text => "Name:")->pack();
my $ent = $frm_name->Entry()->pack();

my $but = $mw->Button(-text => "Push Me", -command  => \&push_button)->pack();
#Text Area
my $txt = $mw->Text(-width => 40, -height => 10)->pack();

MainLoop;

#This function will be executed when the button is pushed
sub push_button {
	my $name = $ent->get();
	$txt->insert('end',"Hello, $name.");
}
