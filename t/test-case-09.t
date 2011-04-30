#!perl

use Test::More tests => 1;

use Travel::UK::London::Tube;
my $tube  = Travel::UK::London::Tube->new();
my @route = $tube->get_shortest_route('Baker Street', 'Neasden');
my @expected = ('Baker Street',
                'Finchley Road',
                'Wembley Park',
                'Neasden');
ok(eq_array(\@route, \@expected));