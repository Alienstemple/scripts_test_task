#!/usr/bin/perl -w

use strict;
use warnings;

my %requests = ();

open(LOG, '<', $ARGV[0]) or die $!;

while (<LOG>) {
    if (/(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})(\s-.*-.*\d{3}\s)(\d+)(\s\d+)/) {
        if (exists($requests{$1})){ 
            $requests{$1} += $3; 
        }else{ 
            $requests{$1} = $3; }
    }
}

printf "%-15s %-15s\n", "IP addr", "total bytes";

my @sorted;
foreach (sort {$requests{$b} <=> $requests{$a}} keys %requests){
    push @sorted, "$_\t$requests{$_}";
}

my $out = join "\n", @sorted[0 .. 9];

print $out;

close(LOG);
