use strict;
use Test;
BEGIN { plan tests => 8 }

use Convert::RACE qw(to_race from_race);

my $i1 = "\x01\x2D\x01\x11\x01\x4B";
my $i2 = "\x01\x2D\x00\xe0\x01\x4B";
my $i3 = "\x01\x2D\x00\x20\x24\xd3";
my $i4 = "\x00\x64\x01\x7e\x01\xff";

my $r1 = 'bq--aewrcsy';
my $r2 = 'bq--aew77ycl';
my $r3 = 'bq--3aas2abaetjq';
my $r4 = 'bq--ah7wi7x7te';

ok(to_race($i1),$r1);
ok(to_race($i2),$r2);
ok(to_race($i3),$r3);
ok(to_race($i4),$r4);

ok(from_race($r1),$i1);
ok(from_race($r2),$i2);
ok(from_race($r3),$i3);
ok(from_race($r4),$i4);
