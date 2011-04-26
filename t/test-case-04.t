#!perl

use Test::More tests => 1;

use Travel::UK::London::Tube;
my $tube  = Travel::UK::London::Tube->new();
my @route = $tube->get_shortest_route('White City', 'Victoria');
my @expected = ('White City',
                'Shepherd\'s Bush',
                'Kensington (Olympia)',
                'Earl\'s Court',
                'Gloucester Road',
                'South Kensington',
                'Sloane Square',
                'Victoria');
ok(eq_array(\@route, \@expected));