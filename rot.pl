#!/usr/bin/perl
open(FILE, "commands");
@commands=<FILE>;
close(FILE);
system $commands[int rand(@commands)];

