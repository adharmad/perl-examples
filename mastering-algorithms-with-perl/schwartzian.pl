#!/usr/bin/perl -w

print map { $_->[0] }
    sort { $a->[1] <=> $b->[1] }
    map { [$_, (split)[1] ] }
    <>;
