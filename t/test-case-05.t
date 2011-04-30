#!perl

use Test::More tests => 1;

use Travel::UK::London::Tube;
my $tube  = Travel::UK::London::Tube->new();
my @route = $tube->get_shortest_route('Temple', 'Farringdon');
my @expected = ('Temple',
                'Embankment',
                'Waterloo',
                'Bank',
                'Moorgate',
                'Barbican',
                'Farringdon');
ok(eq_array(\@route, \@expected));