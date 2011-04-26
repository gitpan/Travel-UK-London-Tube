#!perl

use Test::More tests => 1;

use Travel::UK::London::Tube;
my $tube  = Travel::UK::London::Tube->new();
my @route = $tube->get_shortest_route('Bank', 'Westminster');
my @expected = ('Bank',
                'Waterloo',
                'Westminster');
ok(eq_array(\@route, \@expected));