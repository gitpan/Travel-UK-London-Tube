#!perl

use Test::More tests => 1;

use Travel::UK::London::Tube;
my $tube  = Travel::UK::London::Tube->new();
my @route = $tube->get_shortest_route('Baker Street', 'North Harrow');
my @expected = ('Baker Street',
                'Finchley Road',
                'Harrow-on-the-Hill',
                'North Harrow');
ok(eq_array(\@route, \@expected));