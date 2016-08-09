#!/usr/bin/perl

use X11::Protocol;
use X11::Protocol::Ext::DPMS;

$x = X11::Protocol->new($display);
$x->init_extension('DPMS');

while(1) {
    $old_pl=$power_level;
    ($power_level, $state)=$x->DPMSInfo();
    if(($old_pl eq 'DPMSModeOn') && ($power_level eq 'DPMSModeStandby')) {
	system './rot.pl';
    }
    sleep 60;
}
