use GD::Simple; 

$img = GD::Simple->new(1000, 1000);

$img->fgcolor('black');
$img->bgcolor('white'); 

#$img->rectangle(100, 100, 800, 800);

for ($i=0 ; $i<9 ; $i++) {
    for ($j=0 ; $j<8 ; $j++) {
        $x1 = 100 + 100*$i;
        $x2 = 100 + 100*$j;
        $y1 = 100 + 100*($i+1);
        $y2 = 100 + 100*($i+1);

        $img->rectangle($x1, $x2, $y1, $y2);
    }
}

open(GRID, ">grid.png") or die("Cannot open file for writing");

# Make sure we are writing to a binary stream
binmode GRID;

print GRID $img->png;
close GRID;

