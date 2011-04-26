#!perl

use Test::More tests => 1;

use Travel::UK::London::Tube;
my $tube  = Travel::UK::London::Tube->new();
my @route = $tube->get_shortest_route('Bond Street', 'Euston');
my @expected = ('Bond Street',
                'Oxford Circus',
                'Warren Street',
                'Euston');
ok(eq_array(\@route, \@expected));