#!perl

use Test::More tests => 1;

use Travel::UK::London::Tube;
my $tube  = Travel::UK::London::Tube->new();
my @route = $tube->get_shortest_route('South EALING', 'Alperton');
my @expected = ('South Ealing',
                'Acton Town',
                'Ealing Common',
                'North Ealing',
                'Park Royal',
                'Alperton');
ok(eq_array(\@route, \@expected));