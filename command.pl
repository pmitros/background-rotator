#!/usr/bin/perl
my $filect;

$filect=$ARGV[0];
$orsize=`identify $filect |cut -d\\  -f3`;
($orsizex, $orsizey)=split /x/, $orsize;

$newsize=int $orsizey/$orsizex*1600;

print "display -size 1600x$newsize -crop 1600x1024+0+0 -window root $filect\n"
