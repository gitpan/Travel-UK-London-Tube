#!perl

use Test::More tests => 1;

use Travel::UK::London::Tube;
my $tube  = Travel::UK::London::Tube->new();
my @route = $tube->get_shortest_route('Westferry', 'Cannon Street');
my @expected = ('Westferry',
                'Limehouse',
                'Shadwell',
                'Monument',
                'Cannon Street');
ok(eq_array(\@route, \@expected));