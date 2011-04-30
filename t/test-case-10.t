#!perl

use Test::More tests => 1;

use Travel::UK::London::Tube;
my $tube  = Travel::UK::London::Tube->new();
my @route = $tube->get_shortest_route('Baker Street', 'Preston Road');
my @expected = ('Baker Street',
                'Finchley Road',
                'Wembley Park',
                'Preston Road');
ok(eq_array(\@route, \@expected));