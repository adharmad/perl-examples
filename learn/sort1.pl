# simple numeric sorting

my @arr = (1, 2, 4, 8, 16, 32);

my @arr_asc = sort { $a <=> $b } @arr;
print "@arr_asc\n";

my @arr_desc = sort { $b <=> $a } @arr;
print "@arr_desc\n";
