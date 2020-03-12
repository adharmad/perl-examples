#!/usr/bin/perl

use strict;
use Win32::GUI;
use Win32 ();
use Win32::GUI::Loft::Design;

my $fileWindow = "sms.gld";	     #You created this using The GUI Loft

my $objDesign =	Win32::GUI::Loft::Design->newLoad($fileWindow) or
	die("Could not open window file	($fileWindow)");

my $win	= $objDesign->buildWindow() or die("Could not build window ($fileWindow)");

$win->Show();
Win32::GUI::Dialog();
