#!/usr/bin/perl
use strict;
use warnings;

sub usage {
    die "$0 smudge | clean\n";
}

my $param = shift @ARGV;
usage unless $param;

my $date = qx(git log --date=short --pretty=format:"%ad" -1);
$date =~ s/\-//g;

if ($param eq "smudge") {
    while (<>) {
        $_ =~ s/\$Date\$/\$Date: ${date}\$/s;
        print $_;
    }
} elsif ($param eq "clean") {
    while (<>) {
        $_ =~ s/\$Date.*?\$/\$Date\$/s;
        print $_;
    }
} else {
    usage;
}
