#!/usr/bin/perl

use strict;
use warnings;

sub loader {

  my $filename = '/tmp/test.txt';
  open(my $fh, '<:encoding(UTF-8)', $filename)
    or die "Could not open file '$filename' $!";

  while(<$fh>) { # not ok
  #while(my $line = <$fh>) # ok
  }

  close($fh);
}

$SIG{'USR1'}  = \&loader;

while(<STDIN>) {
}
