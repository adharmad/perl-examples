use GD::Simple; 

$img = GD::Simple->new(640, 480); 

$img->fgcolor('black');
$img->bgcolor('yellow'); 

$img->rectangle(10, 10, 50, 50);
$img->ellipse(50, 50); 

$img->moveTo(200,25);
$img->font('Times:italic');
$img->fontsize(18);
$img->string('Drawn With Perl'); 

open(PICTURE, ">picture.png") or die("Cannot open file for writing");

# Make sure we are writing to a binary stream
binmode PICTURE;

print PICTURE $img->png;
close PICTURE;

